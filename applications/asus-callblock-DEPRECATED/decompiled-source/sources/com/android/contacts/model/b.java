package com.android.contacts.model;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.accounts.OnAccountsUpdateListener;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SyncAdapterType;
import android.content.SyncStatusObserver;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.util.TimingLogger;
import com.android.contacts.b;
import com.android.contacts.list.r;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.f;
import com.android.contacts.model.account.g;
import com.android.contacts.model.account.h;
import com.android.contacts.model.account.i;
import com.android.contacts.model.account.j;
import com.android.contacts.model.account.k;
import com.android.contacts.q;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.Constants;
import com.android.contacts.util.PhoneCapabilityTester;
import com.google.a.a.c;
import com.google.a.b.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/b.class */
public final class b extends com.android.contacts.model.a implements OnAccountsUpdateListener, SyncStatusObserver {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> f2014b = Collections.unmodifiableMap(new HashMap());
    private static final Uri c = ContactsContract.Contacts.getLookupUri(1, "xxx");
    private static final Comparator<Account> u = new Comparator<Account>() { // from class: com.android.contacts.model.b.3
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Account account, Account account2) {
            int i;
            String str = null;
            Account account3 = account;
            Account account4 = account2;
            String str2 = account3 instanceof AccountWithDataSet ? ((AccountWithDataSet) account3).f1998a : null;
            if (account4 instanceof AccountWithDataSet) {
                str = ((AccountWithDataSet) account4).f1998a;
            }
            if (c.a(account3.name, account4.name) && c.a(account3.type, account4.type) && c.a(str2, str)) {
                i = 0;
            } else if (account4.name == null || account4.type == null) {
                i = -1;
            } else if (account3.name == null || account3.type == null) {
                i = 1;
            } else {
                int compareTo = account3.name.compareTo(account4.name);
                i = compareTo;
                if (compareTo == 0) {
                    int compareTo2 = account3.type.compareTo(account4.type);
                    i = compareTo2;
                    if (compareTo2 == 0) {
                        i = str2 != null ? str == null ? 1 : str2.compareTo(str) : -1;
                    }
                }
            }
            return i;
        }
    };
    private Context d;
    private AccountManager e;
    private com.android.contacts.model.account.a f;
    private List<AccountWithDataSet> g = new ArrayList();
    private List<AccountWithDataSet> h = new ArrayList();
    private List<AccountWithDataSet> i = new ArrayList();
    private Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> j = s.a();
    private Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> k = f2014b;
    private List<AccountWithDataSet> l = new ArrayList();
    private final AtomicBoolean n = new AtomicBoolean(false);
    private final AtomicBoolean o = new AtomicBoolean(false);
    private final Handler q = new Handler(Looper.getMainLooper());
    private final Runnable r = new Runnable() { // from class: com.android.contacts.model.b.1
        @Override // java.lang.Runnable
        public final void run() {
            r.a(b.this.d).c();
        }
    };
    private BroadcastReceiver s = new BroadcastReceiver() { // from class: com.android.contacts.model.b.2
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            b.this.f2015a.sendMessage(b.this.f2015a.obtainMessage(1, intent));
        }
    };
    private volatile CountDownLatch t = new CountDownLatch(1);
    private HandlerThread p = new HandlerThread("AccountChangeListener");

    /* renamed from: a  reason: collision with root package name */
    Handler f2015a = new Handler(this.p.getLooper()) { // from class: com.android.contacts.model.b.4
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    b.this.e();
                    return;
                case 1:
                    b bVar = b.this;
                    Object obj = message.obj;
                    bVar.f2015a.sendEmptyMessage(0);
                    return;
                default:
                    return;
            }
        }
    };
    private final C0052b m = new C0052b((byte) 0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/b$a.class */
    private final class a extends AsyncTask<Void, Void, Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a>> {
        private a() {
        }

        /* synthetic */ a(b bVar, byte b2) {
            this();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> doInBackground(Void[] voidArr) {
            return b.this.b(b.this.d);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> map) {
            b.this.m.a(map);
            b.this.o.set(false);
        }
    }

    /* renamed from: com.android.contacts.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/b$b.class */
    private static final class C0052b {

        /* renamed from: a  reason: collision with root package name */
        Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> f2020a;

        /* renamed from: b  reason: collision with root package name */
        long f2021b;

        private C0052b() {
        }

        /* synthetic */ C0052b(byte b2) {
            this();
        }

        public final void a(Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> map) {
            this.f2020a = map;
            this.f2021b = SystemClock.elapsedRealtime();
        }
    }

    public b(Context context) {
        this.d = context;
        this.f = new g(context, (byte) 0);
        this.e = AccountManager.get(this.d);
        this.p.start();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        this.d.registerReceiver(this.s, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        this.d.registerReceiver(this.s, intentFilter2);
        this.d.registerReceiver(this.s, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        this.e.addOnAccountsUpdatedListener(this, this.f2015a, false);
        ContentResolver.addStatusChangeListener(1, this);
        this.f2015a.sendEmptyMessage(0);
    }

    private static AuthenticatorDescription a(AuthenticatorDescription[] authenticatorDescriptionArr, String str) {
        AuthenticatorDescription authenticatorDescription;
        int length = authenticatorDescriptionArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                authenticatorDescription = null;
                break;
            }
            AuthenticatorDescription authenticatorDescription2 = authenticatorDescriptionArr[i];
            if (str.equals(authenticatorDescription2.type)) {
                authenticatorDescription = authenticatorDescription2;
                break;
            }
            i++;
        }
        return authenticatorDescription;
    }

    private static Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> a(Collection<AccountWithDataSet> collection, Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> map) {
        HashMap a2 = s.a();
        try {
            for (AccountWithDataSet accountWithDataSet : collection) {
                com.android.contacts.model.account.b bVar = accountWithDataSet.f1999b;
                com.android.contacts.model.account.a aVar = map.get(bVar);
                if (aVar != null && !a2.containsKey(bVar)) {
                    if (Log.isLoggable("AccountTypeManager", 3)) {
                        Log.d("AccountTypeManager", "Type " + bVar + " inviteClass=" + aVar.g());
                    }
                    if (!TextUtils.isEmpty(aVar.g())) {
                        a2.put(bVar, aVar);
                    }
                }
            }
        } catch (Exception e) {
            Log.w("AccountTypeManager", e.toString());
        }
        return Collections.unmodifiableMap(a2);
    }

    private static void a(com.android.contacts.model.account.a aVar, Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> map, Map<String, List<com.android.contacts.model.account.a>> map2) {
        map.put(aVar.o(), aVar);
        List<com.android.contacts.model.account.a> list = map2.get(aVar.f2000a);
        List<com.android.contacts.model.account.a> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        list2.add(aVar);
        map2.put(aVar.f2000a, list2);
    }

    private static boolean a(String str) {
        return "com.asus.pcsync".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> b(Context context) {
        Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> unmodifiableMap;
        Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> g = g();
        if (g.isEmpty()) {
            unmodifiableMap = f2014b;
        } else {
            HashMap a2 = s.a();
            a2.putAll(g);
            PackageManager packageManager = context.getPackageManager();
            for (com.android.contacts.model.account.b bVar : g.keySet()) {
                Intent a3 = q.a(g.get(bVar), c);
                if (a3 == null) {
                    a2.remove(bVar);
                } else if (packageManager.resolveActivity(a3, 65536) == null) {
                    a2.remove(bVar);
                } else if (!bVar.a(context)) {
                    a2.remove(bVar);
                }
            }
            unmodifiableMap = Collections.unmodifiableMap(a2);
        }
        return unmodifiableMap;
    }

    private void f() {
        CountDownLatch countDownLatch = this.t;
        if (countDownLatch != null) {
            while (true) {
                try {
                    countDownLatch.await();
                    return;
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    private Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> g() {
        f();
        return this.k;
    }

    @Override // com.android.contacts.model.a
    public final com.android.contacts.model.a.b a(String str, String str2, String str3) {
        f();
        com.android.contacts.model.account.a aVar = this.j.get(com.android.contacts.model.account.b.a(str, str2));
        com.android.contacts.model.a.b a2 = aVar != null ? aVar.a(str3) : null;
        com.android.contacts.model.a.b bVar = a2;
        if (a2 == null) {
            bVar = this.f.a(str3);
        }
        if (bVar == null) {
            Log.w("AccountTypeManager", "Unknown type=" + str + ", mime=" + str3);
        }
        return bVar;
    }

    @Override // com.android.contacts.model.a
    public final com.android.contacts.model.account.a a(com.android.contacts.model.account.b bVar) {
        com.android.contacts.model.account.a aVar;
        f();
        synchronized (this) {
            aVar = this.j.get(bVar);
            if (aVar == null) {
                aVar = this.f;
            }
        }
        return aVar;
    }

    @Override // com.android.contacts.model.a
    public final List<AccountWithDataSet> a(boolean z) {
        AccountWithDataSet accountWithDataSet;
        f();
        e a2 = e.a(this.d);
        int b2 = com.android.contacts.simcardmanage.b.b(this.d);
        boolean a3 = com.android.contacts.simcardmanage.b.a(this.d);
        int i = 1;
        while (i <= b2) {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                String str = b.a.d;
                if (i == 2) {
                    str = "asus.local.simcard2";
                }
                accountWithDataSet = new AccountWithDataSet(b.a.c, str, new k(this.d, str, a3).f2001b);
            } else {
                String str2 = "SIM";
                if (a3) {
                    str2 = i == 2 ? "SIM2" : b.a.c;
                }
                accountWithDataSet = new AccountWithDataSet(str2, b.a.d, new k(b.a.d).f2001b);
            }
            boolean e = a2.e(i);
            if (a2.a(i)) {
                Log.d("AccountTypeManager", i + " : getIccCardState(true)");
                if (!this.g.contains(accountWithDataSet)) {
                    this.g.add(accountWithDataSet);
                }
                if (!this.h.contains(accountWithDataSet) && Boolean.valueOf(e).booleanValue()) {
                    this.h.add(accountWithDataSet);
                }
            } else if (z || !a2.d(i)) {
                Log.d("AccountTypeManager", i + " : getIccCardState(false)");
                if (!a2.d(i)) {
                    this.g.remove(accountWithDataSet);
                }
                this.h.remove(accountWithDataSet);
            } else {
                Log.d("AccountTypeManager", i + " : getIccCardState(false) but has IccCard");
                if (!this.g.contains(accountWithDataSet)) {
                    this.g.add(accountWithDataSet);
                }
            }
            i++;
        }
        if (PhoneCapabilityTester.IsUnbundled()) {
            for (AccountWithDataSet accountWithDataSet2 : this.l) {
                if (!this.h.contains(accountWithDataSet2)) {
                    this.h.add(accountWithDataSet2);
                }
                if (!this.g.contains(accountWithDataSet2)) {
                    this.g.add(accountWithDataSet2);
                }
            }
        }
        return z ? this.h : this.g;
    }

    @Override // com.android.contacts.model.a
    public final List<AccountWithDataSet> b() {
        f();
        return this.i;
    }

    @Override // com.android.contacts.model.a
    public final void b(String str, String str2, String str3) {
        AccountWithDataSet accountWithDataSet = new AccountWithDataSet(str, str2, str3);
        if (!this.l.contains(accountWithDataSet)) {
            Log.i("AccountTypeManager", "unbundleAddAccount: " + str + ", " + str2 + ", " + str3);
            this.l.add(accountWithDataSet);
        }
    }

    @Override // com.android.contacts.model.a
    public final Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> c() {
        f();
        if (!this.n.get()) {
            this.m.a(b(this.d));
            this.n.set(true);
        } else {
            if ((SystemClock.elapsedRealtime() - this.m.f2021b > 60000) && this.o.compareAndSet(false, true)) {
                new a(this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
        return this.m.f2020a;
    }

    @Override // com.android.contacts.model.a
    public final List<com.android.contacts.model.account.a> d() {
        f();
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            for (com.android.contacts.model.account.a aVar : this.j.values()) {
                if (aVar.d()) {
                    arrayList.add(aVar);
                }
            }
        }
        return arrayList;
    }

    protected final void e() {
        List<com.android.contacts.model.account.a> list;
        com.android.contacts.model.account.a fVar;
        if (Log.isLoggable(Constants.PERFORMANCE_TAG, 3)) {
            Log.d(Constants.PERFORMANCE_TAG, "AccountTypeManager.loadAccountsInBackground start");
        }
        TimingLogger timingLogger = new TimingLogger("AccountTypeManager", "loadAccountsInBackground");
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashMap a2 = s.a();
        HashMap a3 = s.a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HashSet<String> hashSet = new HashSet();
        AccountManager accountManager = this.e;
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        SyncAdapterType[] syncAdapterTypes = ContentResolver.getSyncAdapterTypes();
        AuthenticatorDescription[] authenticatorTypes = accountManager.getAuthenticatorTypes();
        for (SyncAdapterType syncAdapterType : syncAdapterTypes) {
            if ("com.android.contacts".equals(syncAdapterType.authority)) {
                String str = syncAdapterType.accountType;
                AuthenticatorDescription a4 = a(authenticatorTypes, str);
                if (a4 == null) {
                    Log.w("AccountTypeManager", "No authenticator found for type=" + str + ", ignoring it.");
                } else {
                    if ("com.google".equals(str)) {
                        fVar = new h(this.d, a4.packageName);
                    } else if (com.android.contacts.model.account.e.b(str)) {
                        fVar = new com.android.contacts.model.account.e(this.d, a4.packageName, str);
                        Log.d("AccountTypeManager", "Registering ExchangeAccountType account type=" + str + ", packageName=" + a4.packageName);
                    } else if ("com.att.aab".equals(str)) {
                        fVar = new com.android.contacts.model.account.c(this.d, a4.packageName);
                        Log.d("AccountTypeManager", "Registering AttAccountType account type=" + str + ", packageName=" + a4.packageName);
                    } else if (!IsAsusDevice && "com.asus.sim".equals(str)) {
                        fVar = new k("com.asus.sim");
                        Log.d("AccountTypeManager", "Registering SimCardAccountType account type=" + str + ", packageName=" + a4.packageName);
                    } else if (IsAsusDevice || !j.i.equals(str)) {
                        Log.d("AccountTypeManager", "Registering external account type=" + str + ", packageName=" + a4.packageName);
                        fVar = new f(this.d, a4.packageName, false);
                    } else {
                        fVar = new j(this.d);
                        Log.d("AccountTypeManager", "Registering PhoneAccountType account type=" + str + ", packageName=" + a4.packageName);
                    }
                    if (fVar.a()) {
                        if (!"com.asus.sim".equals(str) || !j.i.equals(str)) {
                            fVar.f2000a = a4.type;
                            fVar.e = a4.labelId;
                            fVar.f = a4.iconId;
                        }
                        a(fVar, a2, a3);
                        hashSet.addAll(fVar.p());
                    } else if (fVar.b()) {
                        throw new IllegalStateException("Problem initializing embedded type " + fVar.getClass().getCanonicalName());
                    }
                }
            }
        }
        if (!hashSet.isEmpty()) {
            Log.d("AccountTypeManager", "Registering " + hashSet.size() + " extension packages");
            for (String str2 : hashSet) {
                f fVar2 = new f(this.d, str2, true);
                if (fVar2.a()) {
                    if (!fVar2.i) {
                        Log.w("AccountTypeManager", "Skipping extension package " + str2 + " because it doesn't have the CONTACTS_STRUCTURE metadata");
                    } else if (TextUtils.isEmpty(fVar2.f2000a)) {
                        Log.w("AccountTypeManager", "Skipping extension package " + str2 + " because the CONTACTS_STRUCTURE metadata doesn't have the accountType attribute");
                    } else {
                        Log.d("AccountTypeManager", "Registering extension package account type=" + fVar2.f2000a + ", dataSet=" + fVar2.f2001b + ", packageName=" + str2);
                        a(fVar2, a2, a3);
                    }
                }
            }
        }
        timingLogger.addSplit("Loaded account types");
        Account[] accounts = this.e.getAccounts();
        Log.d("ASUS", "accounts Size" + String.valueOf(accounts.length));
        for (Account account : accounts) {
            Log.d("ASUS", PhoneCapabilityTester.privacyLogCheck(account.name));
            if (a(account.type)) {
                AuthenticatorDescription a5 = a(accountManager.getAuthenticatorTypes(), account.type);
                if (a5 == null) {
                    Log.e("AccountTypeManager", "No authenticator found for type=" + account.type + ", ignoring it.");
                } else {
                    i iVar = new i(this.d, a5.packageName);
                    iVar.f2000a = a5.type;
                    iVar.e = a5.labelId;
                    iVar.f = a5.iconId;
                    a(iVar, a2, a3);
                }
            }
            boolean a6 = com.android.contacts.simcardmanage.b.a(this.d);
            if (((ContentResolver.getIsSyncable(account, "com.android.contacts") > 0) || a(account.type)) && (list = (List) a3.get(account.type)) != null) {
                for (com.android.contacts.model.account.a aVar : list) {
                    AccountWithDataSet accountWithDataSet = new AccountWithDataSet(account.name, account.type, aVar.f2001b);
                    if (!IsAsusDevice) {
                        if (aVar instanceof k) {
                            ((k) aVar).a(account.name, a6, this.d);
                        } else if (aVar instanceof j) {
                            j jVar = (j) aVar;
                            jVar.f2000a = b.a.f612b;
                            if (!PhoneCapabilityTester.isVerizon()) {
                                jVar.e = 2131755021;
                            } else if (PhoneCapabilityTester.isVerizonPad()) {
                                jVar.e = 2131755022;
                            } else {
                                jVar.e = 2131755739;
                            }
                            jVar.f = 2131165312;
                        }
                    }
                    arrayList.add(accountWithDataSet);
                    if (aVar.d()) {
                        arrayList2.add(accountWithDataSet);
                    }
                    if (aVar.q()) {
                        arrayList3.add(accountWithDataSet);
                    }
                }
            }
        }
        Log.d("AccountTypeManager", "contactWritableAccounts:" + arrayList2.size() + " allAccounts:" + arrayList.size());
        Collections.sort(arrayList, u);
        Collections.sort(arrayList2, u);
        Collections.sort(arrayList3, u);
        if (IsAsusDevice) {
            a(new j(this.d), a2, a3);
            AccountWithDataSet accountWithDataSet2 = new AccountWithDataSet(b.a.f611a, b.a.f612b, null);
            arrayList.add(accountWithDataSet2);
            arrayList2.add(accountWithDataSet2);
            arrayList3.add(accountWithDataSet2);
            boolean a7 = com.android.contacts.simcardmanage.b.a(this.d);
            for (int i = 1; i <= com.android.contacts.simcardmanage.b.b(this.d); i++) {
                String str3 = b.a.d;
                if (i == 2) {
                    str3 = "asus.local.simcard2";
                }
                k kVar = new k(this.d, str3, a7);
                if (!a2.containsKey(kVar.o())) {
                    a(kVar, a2, a3);
                }
            }
        }
        timingLogger.addSplit("Loaded accounts");
        synchronized (this) {
            this.j = a2;
            this.g = arrayList;
            this.h = arrayList2;
            this.i = arrayList3;
            this.k = a(arrayList, a2);
        }
        timingLogger.dumpToLog();
        Log.i("AccountTypeManager", "Loaded meta-data for " + this.j.size() + " account types, " + this.g.size() + " accounts in " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms(wall) " + (SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis) + "ms(cpu)");
        if (this.t != null) {
            this.t.countDown();
            this.t = null;
        }
        if (Log.isLoggable(Constants.PERFORMANCE_TAG, 3)) {
            Log.d(Constants.PERFORMANCE_TAG, "AccountTypeManager.loadAccountsInBackground finish");
        }
        this.q.post(this.r);
    }

    @Override // android.accounts.OnAccountsUpdateListener
    public final void onAccountsUpdated(Account[] accountArr) {
        e();
    }

    @Override // android.content.SyncStatusObserver
    public final void onStatusChanged(int i) {
        this.f2015a.sendEmptyMessage(0);
    }
}
