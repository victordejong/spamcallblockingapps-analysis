package com.android.contacts;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.backupandrestore.AsusBackupService;
import com.android.contacts.backupandrestore.AsusisRestoreReceiver;
import com.android.contacts.calllog.UpdateMissCallIconService;
import com.android.contacts.dialpad.DialPadBlurredLayout;
import com.android.contacts.dialpad.h;
import com.android.contacts.group.f;
import com.android.contacts.list.ac;
import com.android.contacts.list.r;
import com.android.contacts.list.s;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import com.asus.a.b;
import com.asus.a.c;
import com.asus.updatesdk.BuildConfig;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ContactsApplication.class */
public final class ContactsApplication extends Application {

    /* renamed from: a  reason: collision with root package name */
    private static com.android.contacts.test.a f483a;
    private static final String e = ContactsApplication.class.getSimpleName();
    private static final Class[] f = {DialtactsActivity.class};
    private static ContactsApplication g = null;

    /* renamed from: b  reason: collision with root package name */
    private k f484b;
    private r c;
    private Thread d;
    private SharedPreferences h;
    private boolean i = false;
    private BroadcastReceiver j = new BroadcastReceiver() { // from class: com.android.contacts.ContactsApplication.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Log.d("ContactsApplication", "[BroadcastReceiver] onReceive, intent = " + intent);
            if (intent.getAction().equals("asus.intent.action.MISSED_CALL_INFO")) {
                int intExtra = intent.getIntExtra("com.android.phone.missed_call_number", 0);
                Log.d("ContactsApplication", "[BroadcastReceiver] ACTION_SEND_MISSED_CALL_INFO numberMissedCalls=" + intExtra);
                Intent intent2 = new Intent(context, UpdateMissCallIconService.class);
                intent2.putExtra("count", intExtra);
                context.startService(intent2);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ContactsApplication$a.class */
    private final class a extends AsyncTask<Void, Void, Void> {
        private a() {
        }

        /* synthetic */ a(ContactsApplication contactsApplication, byte b2) {
            this();
        }

        private Void a() {
            Log.d(ContactsApplication.e, "in DelayedInitializer");
            ContactsApplication contactsApplication = ContactsApplication.this;
            boolean z = b.c(contactsApplication) >= 3 && (PhoneCapabilityTester.isCNSku() || PhoneCapabilityTester.isCUCCSku());
            c.a(z);
            ContactsApplication.this.getApplicationContext().setTheme(2131820569);
            if (!ContactsApplication.this.i) {
                if (PhoneCapabilityTester.isPhone(contactsApplication)) {
                    h.a(ContactsApplication.this.getApplicationContext());
                    DialPadBlurredLayout.a(ContactsApplication.this.getApplicationContext());
                }
                if (!PhoneCapabilityTester.isUsingTwoPanes(contactsApplication)) {
                    ac.a(ContactsApplication.this.getApplicationContext(), ac.a(contactsApplication));
                }
            }
            PreferenceManager.getDefaultSharedPreferences(contactsApplication);
            if (PhoneCapabilityTester.isHighendDevice(contactsApplication, 1L)) {
                com.android.contacts.model.a.a(contactsApplication);
            }
            ContactsApplication.this.getContentResolver().getType(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, 1L));
            if (PhoneCapabilityTester.isNeedToStartForegroundService(ContactsApplication.this.getApplicationContext())) {
                try {
                    ContactsApplication.this.getApplicationContext().startService(new Intent(ContactsApplication.this.getApplicationContext(), AsusContactsForegroundFakeService.class));
                } catch (Exception e) {
                    Log.d("ContactsApplication", "Fail to start foregroundservice, Exception : " + e.toString());
                }
            }
            com.asus.snapcall.c.f(contactsApplication);
            if (PhoneCapabilityTester.isATTSku()) {
                ContactsApplication.this.getApplicationContext().startService(new Intent(ContactsApplication.this.getApplicationContext(), AttBuildInfoService.class));
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(contactsApplication);
            if (!defaultSharedPreferences.getBoolean("need_auto_link", true)) {
                try {
                    Cursor query = ContactsApplication.this.getContentResolver().query(Uri.withAppendedPath(Uri.parse("content://com.android.contacts"), "asus_auto_linked/enable"), null, null, null, null);
                    if (query != null) {
                        query.close();
                    }
                    defaultSharedPreferences.edit().putBoolean("need_auto_link", true).apply();
                    Log.i("ContactsApplication", "Remove auto link options and reset!");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (PhoneCapabilityTester.isPhone(contactsApplication)) {
                ContactsApplication.this.getPackageManager();
                if (z) {
                    c.a((Context) contactsApplication, true);
                    Log.d(ContactsApplication.e, "initCallGuard for CN");
                } else {
                    Log.d(ContactsApplication.e, "get callguardHelper in DelayedInitializer");
                    try {
                        c.d(contactsApplication);
                    } catch (Exception e3) {
                        Log.d(ContactsApplication.e, "fail to get callguardHelper in DelayedInitializer due to:" + e3.toString());
                    }
                }
            }
            f.b(contactsApplication);
            if (!CompatUtils.isMarshmallowCompatible()) {
                return null;
            }
            if (com.android.contacts.backupandrestore.a.c()) {
                ContactsApplication.this.h = ContactsApplication.this.getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
                if (ContactsApplication.this.h.getInt("TryBackup", 0) == 0) {
                    return null;
                }
                Log.d("AsusBackupService", "isBackup");
                long currentTimeMillis = System.currentTimeMillis();
                long parseLong = ContactsApplication.this.h.getString(com.android.contacts.backupandrestore.a.f618b, BuildConfig.FLAVOR).equals(BuildConfig.FLAVOR) ? 0L : Long.parseLong(ContactsApplication.this.h.getString(com.android.contacts.backupandrestore.a.f618b, BuildConfig.FLAVOR));
                if (currentTimeMillis - parseLong < 86400000) {
                    Calendar instance = Calendar.getInstance();
                    instance.add(10, 24);
                    ((AlarmManager) ContactsApplication.this.getSystemService("alarm")).set(0, instance.getTimeInMillis(), PendingIntent.getBroadcast(ContactsApplication.this.getApplicationContext(), 1, new Intent(ContactsApplication.this.getApplicationContext(), AsusisRestoreReceiver.class), 1073741824));
                }
                if (currentTimeMillis - parseLong > 86400000) {
                    ContactsApplication.this.getApplicationContext().startService(new Intent(ContactsApplication.this.getApplicationContext(), AsusBackupService.class));
                }
            }
            if (com.android.contacts.backupandrestore.a.a()) {
                Log.d("AsusBackupService", "needRestore");
                ContactsApplication.this.h = ContactsApplication.this.getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
                ContactsApplication.this.h.edit().putString(com.android.contacts.backupandrestore.a.f617a, "1").commit();
                Calendar instance2 = Calendar.getInstance();
                instance2.add(10, 24);
                ((AlarmManager) ContactsApplication.this.getSystemService("alarm")).set(0, instance2.getTimeInMillis(), PendingIntent.getBroadcast(ContactsApplication.this.getApplicationContext(), 1, new Intent(ContactsApplication.this.getApplicationContext(), AsusisRestoreReceiver.class), 1073741824));
            }
            if (com.android.contacts.backupandrestore.a.b()) {
                Log.d("AsusBackupService", "needBackup");
                ContactsApplication.this.h = ContactsApplication.this.getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
                ContactsApplication.this.h.edit().putString(com.android.contacts.backupandrestore.a.f617a, "0").commit();
                ContactsApplication.this.getApplicationContext().startService(new Intent(ContactsApplication.this.getApplicationContext(), AsusBackupService.class));
            }
            if (com.android.contacts.backupandrestore.a.e()) {
                Log.d("AsusBackupService", "ContactsneedRestore");
                ContactsApplication.this.h = ContactsApplication.this.getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
                ContactsApplication.this.h.edit().putString(com.android.contacts.backupandrestore.a.f617a, "1").commit();
                Calendar instance3 = Calendar.getInstance();
                instance3.add(10, 24);
                ((AlarmManager) ContactsApplication.this.getSystemService("alarm")).set(0, instance3.getTimeInMillis(), PendingIntent.getBroadcast(ContactsApplication.this.getApplicationContext(), 1, new Intent(ContactsApplication.this.getApplicationContext(), AsusisRestoreReceiver.class), 1073741824));
            }
            if (!com.android.contacts.backupandrestore.a.d()) {
                return null;
            }
            Log.d("AsusBackupService", "CalllogneedRestore");
            ContactsApplication.this.h = ContactsApplication.this.getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
            ContactsApplication.this.h.edit().putString(com.android.contacts.backupandrestore.a.f617a, "1").commit();
            Calendar instance4 = Calendar.getInstance();
            instance4.add(10, 24);
            ((AlarmManager) ContactsApplication.this.getSystemService("alarm")).set(0, instance4.getTimeInMillis(), PendingIntent.getBroadcast(ContactsApplication.this.getApplicationContext(), 1, new Intent(ContactsApplication.this.getApplicationContext(), AsusisRestoreReceiver.class), 1073741824));
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }
    }

    private Intent a(Intent intent) {
        if (!(getBaseContext() instanceof Activity)) {
            intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        }
        return intent;
    }

    public static com.android.contacts.test.a a() {
        return f483a;
    }

    public static ContactsApplication b() {
        ContactsApplication contactsApplication;
        synchronized (ContactsApplication.class) {
            try {
                contactsApplication = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return contactsApplication;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r3 != null) goto L_0x0011;
     */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.ContentResolver getContentResolver() {
        /*
            r2 = this;
            com.android.contacts.test.a r0 = com.android.contacts.ContactsApplication.f483a
            if (r0 == 0) goto L_0x0013
            com.android.contacts.test.a r0 = com.android.contacts.ContactsApplication.f483a
            android.content.ContentResolver r0 = r0.f2172a
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0013
        L_0x0011:
            r0 = r3
            return r0
        L_0x0013:
            r0 = r2
            android.content.ContentResolver r0 = super.getContentResolver()
            r3 = r0
            goto L_0x0011
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactsApplication.getContentResolver():android.content.ContentResolver");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SharedPreferences getSharedPreferences(String str, int i) {
        SharedPreferences sharedPreferences;
        return (f483a == null || (sharedPreferences = f483a.f2173b) == null) ? super.getSharedPreferences(str, i) : sharedPreferences;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        Object systemService;
        if (f483a != null) {
            com.android.contacts.test.a aVar = f483a;
            Object obj = aVar.c != null ? aVar.c.get(str) : null;
            if (obj != null) {
                systemService = obj;
                return systemService;
            }
        }
        if ("contactPhotos".equals(str)) {
            if (this.f484b == null) {
                this.f484b = k.b(this);
                registerComponentCallbacks(this.f484b);
                this.f484b.d();
            }
            systemService = this.f484b;
        } else if (AccountFilterUtil.KEY_EXTRA_CONTACT_LIST_FILTER.equals(str)) {
            if (this.c == null) {
                this.c = new s(this);
            }
            systemService = this.c;
        } else {
            systemService = super.getSystemService(str);
        }
        return systemService;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x029a  */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate() {
        /*
            Method dump skipped, instructions count: 1360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactsApplication.onCreate():void");
    }

    @Override // android.app.Application
    public final void onTerminate() {
        super.onTerminate();
        if (PhoneCapabilityTester.isRCSVerizon()) {
            com.asus.eabservice.a a2 = com.asus.eabservice.a.a();
            Context applicationContext = getApplicationContext();
            Log.d("EABManager", "[Tauros][EABManager] unbindEABService() is called.");
            applicationContext.unbindService(a2.f2894b);
            a2.f2893a = null;
        }
        com.android.contacts.c.b.a();
        if (this.d != null) {
            this.d.interrupt();
            Log.d(this.d.getName(), "BirthdayUpdateThread interrupt");
        }
        Log.d("ContactsApplication", "onTerminate(): Unregister ACTION_SEND_MISSED_CALL_INFO receiver");
        unregisterReceiver(this.j);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivities(Intent[] intentArr) {
        for (Intent intent : intentArr) {
            a(intent);
        }
        getBaseContext().startActivities(intentArr);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivities(Intent[] intentArr, Bundle bundle) {
        for (Intent intent : intentArr) {
            a(intent);
        }
        getBaseContext().startActivities(intentArr, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        a(intent);
        getBaseContext().startActivity(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent, Bundle bundle) {
        a(intent);
        getBaseContext().startActivity(intent, bundle);
    }
}
