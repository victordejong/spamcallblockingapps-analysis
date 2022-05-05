package p081h.p093b.p094a.p095a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.android.billingclient.api.ProxyBillingActivity;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p093b.p094a.p095a.C5542e;
import p081h.p093b.p094a.p095a.C5547g;
import p081h.p093b.p094a.p095a.C5552i;
import p081h.p093b.p094a.p095a.C5572y;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractBinderC8806b;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* renamed from: h.b.a.a.b */
/* loaded from: classes-dex2jar.jar:h/b/a/a/b.class */
public class C5534b extends AbstractC5531a {

    /* renamed from: a */
    public int f13805a;

    /* renamed from: b */
    public final String f13806b;

    /* renamed from: c */
    public final Handler f13807c;

    /* renamed from: d */
    public C5533a0 f13808d;

    /* renamed from: e */
    public Context f13809e;

    /* renamed from: f */
    public Context f13810f;

    /* renamed from: g */
    public AbstractC8807c f13811g;

    /* renamed from: h */
    public ServiceConnectionC5535a f13812h;

    /* renamed from: i */
    public boolean f13813i;

    /* renamed from: j */
    public boolean f13814j;

    /* renamed from: k */
    public int f13815k;

    /* renamed from: l */
    public boolean f13816l;

    /* renamed from: m */
    public boolean f13817m;

    /* renamed from: n */
    public boolean f13818n;

    /* renamed from: o */
    public boolean f13819o;

    /* renamed from: p */
    public boolean f13820p;

    /* renamed from: q */
    public boolean f13821q;

    /* renamed from: r */
    public boolean f13822r;

    /* renamed from: s */
    public boolean f13823s;

    /* renamed from: t */
    public ExecutorService f13824t;
    @Nullable

    /* renamed from: u */
    public String f13825u;

    /* renamed from: h.b.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/b$a.class */
    public final class ServiceConnectionC5535a implements ServiceConnection {

        /* renamed from: a */
        public final Object f13826a;

        /* renamed from: b */
        public boolean f13827b;

        /* renamed from: c */
        public AbstractC5537c f13828c;

        public ServiceConnectionC5535a(AbstractC5537c cVar) {
            this.f13826a = new Object();
            this.f13827b = false;
            this.f13828c = cVar;
        }

        public /* synthetic */ ServiceConnectionC5535a(C5534b bVar, AbstractC5537c cVar, CallableC5544e0 e0Var) {
            this(cVar);
        }

        /* renamed from: a */
        public final void m25200a() {
            synchronized (this.f13826a) {
                this.f13828c = null;
                this.f13827b = true;
            }
        }

        /* renamed from: a */
        public final void m25197a(C5542e eVar) {
            C5534b.this.m25225a(new RunnableC5563p(this, eVar));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C8805a.m16914a("BillingClient", "Billing service connected.");
            C5534b.this.f13811g = AbstractBinderC8806b.m16908a(iBinder);
            if (C5534b.this.m25222a(new CallableC5565r(this), 30000L, new RunnableC5564q(this)) == null) {
                m25197a(C5534b.this.m25216c());
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            C8805a.m16910b("BillingClient", "Billing service disconnected.");
            C5534b.this.f13811g = null;
            C5534b.this.f13805a = 0;
            synchronized (this.f13826a) {
                if (this.f13828c != null) {
                    this.f13828c.mo3552a();
                }
            }
        }
    }

    public C5534b(Context context, boolean z, AbstractC5550h hVar, String str, String str2) {
        this.f13805a = 0;
        this.f13807c = new Handler(Looper.getMainLooper());
        this.f13815k = 0;
        this.f13825u = null;
        this.f13806b = str;
        m25236a(context, hVar, z);
    }

    @UiThread
    public C5534b(@Nullable String str, boolean z, Context context, AbstractC5550h hVar) {
        this(context, z, hVar, m25208e(), null);
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: e */
    public static String m25208e() {
        try {
            return (String) Class.forName("h.b.a.b.a").getField("VERSION_NAME").get(null);
        } catch (Exception e) {
            return "3.0.1";
        }
    }

    /* renamed from: e */
    public static String m25206e(String str) {
        try {
            return new JSONObject(str).optString("offer_id_token");
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: f */
    public static Bundle m25205f() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("vr", true);
        return bundle;
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: a */
    public C5542e mo25237a(Activity activity, C5539d dVar) {
        Future future;
        if (!mo25221b()) {
            C5542e eVar = C5568u.f13910k;
            m25227a(eVar);
            return eVar;
        }
        ArrayList<C5552i> e = dVar.m25179e();
        C5552i iVar = e.get(0);
        String n = iVar.m25142n();
        if (!n.equals("subs") || this.f13813i) {
            boolean z = dVar.m25191a() != null;
            if (z && !this.f13814j) {
                C8805a.m16910b("BillingClient", "Current client doesn't support subscriptions update.");
                C5542e eVar2 = C5568u.f13913n;
                m25227a(eVar2);
                return eVar2;
            } else if (dVar.m25176g() && !this.f13816l) {
                C8805a.m16910b("BillingClient", "Current client doesn't support extra params for buy intent.");
                C5542e eVar3 = C5568u.f13906g;
                m25227a(eVar3);
                return eVar3;
            } else if (e.size() <= 1 || this.f13822r) {
                String str = "";
                for (int i = 0; i < e.size(); i++) {
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(e.get(i));
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                    sb.append(valueOf);
                    sb.append(valueOf2);
                    String sb2 = sb.toString();
                    str = sb2;
                    if (i < e.size() - 1) {
                        str = String.valueOf(sb2).concat(UserProfile.CARD_CATE_SEPARATOR);
                    }
                }
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 41 + String.valueOf(n).length());
                sb3.append("Constructing buy intent for ");
                sb3.append(str);
                sb3.append(", item type: ");
                sb3.append(n);
                C8805a.m16914a("BillingClient", sb3.toString());
                if (this.f13816l) {
                    Bundle a = C8805a.m16915a(dVar, this.f13818n, this.f13823s, this.f13806b);
                    if (!iVar.m25140p().isEmpty()) {
                        a.putString("skuDetailsToken", iVar.m25140p());
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    int size = e.size();
                    int i2 = 0;
                    boolean z2 = false;
                    while (i2 < size) {
                        C5552i iVar2 = e.get(i2);
                        i2++;
                        C5552i iVar3 = iVar2;
                        if (!iVar3.m25140p().isEmpty()) {
                            arrayList.add(iVar3.m25140p());
                        }
                        String e2 = m25206e(iVar3.m25151e());
                        arrayList2.add(e2);
                        z2 |= !TextUtils.isEmpty(e2);
                    }
                    if (!arrayList.isEmpty()) {
                        a.putStringArrayList("skuDetailsTokens", arrayList);
                    }
                    if (z2) {
                        if (!this.f13822r) {
                            C5542e eVar4 = C5568u.f13907h;
                            m25227a(eVar4);
                            return eVar4;
                        }
                        a.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                    }
                    if (!TextUtils.isEmpty(iVar.m25141o())) {
                        a.putString("skuPackageName", iVar.m25141o());
                    }
                    if (!TextUtils.isEmpty(this.f13825u)) {
                        a.putString("accountName", this.f13825u);
                    }
                    if (e.size() > 1) {
                        ArrayList<String> arrayList3 = new ArrayList<>(e.size() - 1);
                        for (int i3 = 1; i3 < e.size(); i3++) {
                            arrayList3.add(e.get(i3).m25145k());
                        }
                        a.putStringArrayList("additionalSkus", arrayList3);
                    }
                    if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                        String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                        a.putString("proxyPackage", stringExtra);
                        try {
                            a.putString("proxyPackageVersion", this.f13809e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException e3) {
                            a.putString("proxyPackageVersion", "package not found");
                        }
                    }
                    future = m25222a(new CallableC5557j0(this, this.f13818n ? 9 : dVar.m25181d() ? 7 : 6, iVar, n, dVar, a), 5000L, (Runnable) null);
                } else {
                    future = z ? m25222a(new CallableC5554i0(this, dVar, iVar), 5000L, (Runnable) null) : m25222a(new CallableC5560m(this, iVar, n), 5000L, (Runnable) null);
                }
                try {
                    Bundle bundle = (Bundle) future.get(5000L, TimeUnit.MILLISECONDS);
                    int a2 = C8805a.m16916a(bundle, "BillingClient");
                    String b = C8805a.m16911b(bundle, "BillingClient");
                    if (a2 != 0) {
                        StringBuilder sb4 = new StringBuilder(52);
                        sb4.append("Unable to buy item, Error response code: ");
                        sb4.append(a2);
                        C8805a.m16910b("BillingClient", sb4.toString());
                        C5542e.C5543a c = C5542e.m25167c();
                        c.m25165a(a2);
                        c.m25164a(b);
                        C5542e a3 = c.m25166a();
                        m25227a(a3);
                        return a3;
                    }
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                    activity.startActivity(intent);
                    return C5568u.f13909j;
                } catch (CancellationException | TimeoutException e4) {
                    StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 68);
                    sb5.append("Time out while launching billing flow: ; for sku: ");
                    sb5.append(str);
                    sb5.append("; try to reconnect");
                    C8805a.m16910b("BillingClient", sb5.toString());
                    C5542e eVar5 = C5568u.f13911l;
                    m25227a(eVar5);
                    return eVar5;
                } catch (Exception e5) {
                    StringBuilder sb6 = new StringBuilder(String.valueOf(str).length() + 69);
                    sb6.append("Exception while launching billing flow: ; for sku: ");
                    sb6.append(str);
                    sb6.append("; try to reconnect");
                    C8805a.m16910b("BillingClient", sb6.toString());
                    C5542e eVar6 = C5568u.f13910k;
                    m25227a(eVar6);
                    return eVar6;
                }
            } else {
                C8805a.m16910b("BillingClient", "Current client doesn't support multi-item purchases.");
                C5542e eVar7 = C5568u.f13914o;
                m25227a(eVar7);
                return eVar7;
            }
        } else {
            C8805a.m16910b("BillingClient", "Current client doesn't support subscriptions.");
            C5542e eVar8 = C5568u.f13912m;
            m25227a(eVar8);
            return eVar8;
        }
    }

    /* renamed from: a */
    public final C5542e m25227a(C5542e eVar) {
        this.f13808d.m25240b().mo3573a(eVar, null);
        return eVar;
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: a */
    public C5542e mo25224a(String str) {
        if (!mo25221b()) {
            return C5568u.f13910k;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals("subscriptionsUpdate")) {
                    c = 1;
                    break;
                }
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c = 6;
                    break;
                }
                break;
            case 97314:
                if (str.equals("bbb")) {
                    c = 5;
                    break;
                }
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c = 7;
                    break;
                }
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c = '\b';
                    break;
                }
                break;
            case 207616302:
                if (str.equals("priceChangeConfirmation")) {
                    c = 4;
                    break;
                }
                break;
            case 292218239:
                if (str.equals("inAppItemsOnVr")) {
                    c = 2;
                    break;
                }
                break;
            case 1219490065:
                if (str.equals("subscriptionsOnVr")) {
                    c = 3;
                    break;
                }
                break;
            case 1987365622:
                if (str.equals("subscriptions")) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return this.f13813i ? C5568u.f13909j : C5568u.f13907h;
            case 1:
                return this.f13814j ? C5568u.f13909j : C5568u.f13907h;
            case 2:
                return m25213c("inapp");
            case 3:
                return m25213c("subs");
            case 4:
                return this.f13817m ? C5568u.f13909j : C5568u.f13907h;
            case 5:
                return this.f13820p ? C5568u.f13909j : C5568u.f13907h;
            case 6:
                return this.f13821q ? C5568u.f13909j : C5568u.f13907h;
            case 7:
            case '\b':
                return this.f13822r ? C5568u.f13909j : C5568u.f13907h;
            default:
                String valueOf = String.valueOf(str);
                C8805a.m16910b("BillingClient", valueOf.length() != 0 ? "Unsupported feature: ".concat(valueOf) : new String("Unsupported feature: "));
                return C5568u.f13915p;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final C5552i.C5553a m25223a(String str, List<C5572y> list, @Nullable String str2) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(list.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList2.get(i3);
                i3++;
                arrayList3.add(((C5572y) obj).m25124a());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f13806b);
            try {
                Bundle a = this.f13819o ? this.f13811g.mo16903a(10, this.f13810f.getPackageName(), str, bundle, C8805a.m16919a(this.f13815k, this.f13823s, this.f13806b, str2, arrayList2)) : this.f13811g.mo16904a(3, this.f13810f.getPackageName(), str, bundle);
                if (a == null) {
                    C8805a.m16910b("BillingClient", "querySkuDetailsAsync got null sku details list");
                    return new C5552i.C5553a(4, "Item is unavailable for purchase.", null);
                } else if (!a.containsKey("DETAILS_LIST")) {
                    int a2 = C8805a.m16916a(a, "BillingClient");
                    String b = C8805a.m16911b(a, "BillingClient");
                    if (a2 != 0) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(a2);
                        C8805a.m16910b("BillingClient", sb.toString());
                        return new C5552i.C5553a(a2, b, arrayList);
                    }
                    C8805a.m16910b("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new C5552i.C5553a(6, b, arrayList);
                } else {
                    ArrayList<String> stringArrayList = a.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        C8805a.m16910b("BillingClient", "querySkuDetailsAsync got null response list");
                        return new C5552i.C5553a(4, "Item is unavailable for purchase.", null);
                    }
                    for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                        try {
                            C5552i iVar = new C5552i(stringArrayList.get(i4));
                            String valueOf = String.valueOf(iVar);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 17);
                            sb2.append("Got sku details: ");
                            sb2.append(valueOf);
                            C8805a.m16914a("BillingClient", sb2.toString());
                            arrayList.add(iVar);
                        } catch (JSONException e) {
                            C8805a.m16910b("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                            return new C5552i.C5553a(6, "Error trying to decode SkuDetails.", null);
                        }
                    }
                    i = i2;
                }
            } catch (Exception e2) {
                String valueOf2 = String.valueOf(e2);
                StringBuilder sb3 = new StringBuilder("querySkuDetailsAsync got a remote exception (try to reconnect).".length() + String.valueOf(valueOf2).length());
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(valueOf2);
                C8805a.m16910b("BillingClient", sb3.toString());
                return new C5552i.C5553a(-1, "Service connection is disconnected.", null);
            }
        }
        return new C5552i.C5553a(0, "", arrayList);
    }

    @Nullable
    /* renamed from: a */
    public final <T> Future<T> m25222a(Callable<T> callable, long j, @Nullable Runnable runnable) {
        long j2 = (long) (j * 0.95d);
        if (this.f13824t == null) {
            this.f13824t = Executors.newFixedThreadPool(C8805a.f20164a, new ThreadFactoryC5546f0(this));
        }
        try {
            Future<T> submit = this.f13824t.submit(callable);
            this.f13807c.postDelayed(new RunnableC5549g0(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            C8805a.m16910b("BillingClient", sb.toString());
            return null;
        }
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: a */
    public void mo25238a() {
        try {
            this.f13808d.m25239c();
            if (this.f13812h != null) {
                this.f13812h.m25200a();
            }
            if (!(this.f13812h == null || this.f13811g == null)) {
                C8805a.m16914a("BillingClient", "Unbinding from service.");
                this.f13810f.unbindService(this.f13812h);
                this.f13812h = null;
            }
            this.f13811g = null;
            if (this.f13824t != null) {
                this.f13824t.shutdownNow();
                this.f13824t = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            C8805a.m16910b("BillingClient", sb.toString());
        } finally {
            this.f13805a = 3;
        }
    }

    /* renamed from: a */
    public final void m25236a(Context context, AbstractC5550h hVar, boolean z) {
        this.f13810f = context.getApplicationContext();
        this.f13808d = new C5533a0(this.f13810f, hVar);
        this.f13809e = context;
        this.f13823s = z;
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: a */
    public void mo25228a(AbstractC5537c cVar) {
        ResolveInfo resolveInfo;
        ServiceInfo serviceInfo;
        if (mo25221b()) {
            C8805a.m16914a("BillingClient", "Service connection is valid. No need to re-initialize.");
            cVar.mo3551a(C5568u.f13909j);
            return;
        }
        int i = this.f13805a;
        if (i == 1) {
            C8805a.m16910b("BillingClient", "Client is already in the process of connecting to billing service.");
            cVar.mo3551a(C5568u.f13902c);
        } else if (i == 3) {
            C8805a.m16910b("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.mo3551a(C5568u.f13910k);
        } else {
            this.f13805a = 1;
            this.f13808d.m25242a();
            C8805a.m16914a("BillingClient", "Starting in-app billing setup.");
            this.f13812h = new ServiceConnectionC5535a(this, cVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f13810f.getPackageManager().queryIntentServices(intent, 0);
            if (!(queryIntentServices == null || queryIntentServices.isEmpty() || (serviceInfo = (resolveInfo = queryIntentServices.get(0)).serviceInfo) == null)) {
                String str = serviceInfo.packageName;
                String str2 = resolveInfo.serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    C8805a.m16910b("BillingClient", "The device doesn't have valid Play Store.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f13806b);
                    if (this.f13810f.bindService(intent2, this.f13812h, 1)) {
                        C8805a.m16914a("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    C8805a.m16910b("BillingClient", "Connection to Billing service is blocked.");
                }
            }
            this.f13805a = 0;
            C8805a.m16914a("BillingClient", "Billing service unavailable on device.");
            cVar.mo3551a(C5568u.f13901b);
        }
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: a */
    public void mo25226a(C5555j jVar, AbstractC5558k kVar) {
        if (!mo25221b()) {
            kVar.mo3550a(C5568u.f13910k, null);
            return;
        }
        String a = jVar.m25136a();
        List<String> b = jVar.m25133b();
        if (TextUtils.isEmpty(a)) {
            C8805a.m16910b("BillingClient", "Please fix the input params. SKU type can't be empty.");
            kVar.mo3550a(C5568u.f13905f, null);
            return;
        }
        boolean z = this.f13821q;
        boolean z2 = this.f13822r;
        if (b == null) {
            C8805a.m16910b("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            kVar.mo3550a(C5568u.f13904e, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : b) {
            C5572y.C5573a aVar = new C5572y.C5573a();
            aVar.m25121a(str);
            arrayList.add(aVar.m25122a());
        }
        if (m25222a(new CallableC5562o(this, a, arrayList, null, kVar), 30000L, new RunnableC5541d0(this, kVar)) == null) {
            kVar.mo3550a(m25216c(), null);
        }
    }

    /* renamed from: a */
    public final void m25225a(Runnable runnable) {
        if (!Thread.interrupted()) {
            this.f13807c.post(runnable);
        }
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: b */
    public C5547g.C5548a mo25217b(String str) {
        if (!mo25221b()) {
            return new C5547g.C5548a(C5568u.f13910k, null);
        }
        if (TextUtils.isEmpty(str)) {
            C8805a.m16910b("BillingClient", "Please provide a valid SKU type.");
            return new C5547g.C5548a(C5568u.f13905f, null);
        }
        try {
            return (C5547g.C5548a) m25222a(new CallableC5559l(this, str), 5000L, (Runnable) null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new C5547g.C5548a(C5568u.f13911l, null);
        } catch (Exception e2) {
            return new C5547g.C5548a(C5568u.f13908i, null);
        }
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5531a
    /* renamed from: b */
    public boolean mo25221b() {
        return (this.f13805a != 2 || this.f13811g == null || this.f13812h == null) ? false : true;
    }

    /* renamed from: c */
    public final C5542e m25216c() {
        int i = this.f13805a;
        return (i == 0 || i == 3) ? C5568u.f13910k : C5568u.f13908i;
    }

    /* renamed from: c */
    public final C5542e m25213c(String str) {
        try {
            return ((Integer) m25222a(new CallableC5551h0(this, str), 5000L, (Runnable) null).get(5000L, TimeUnit.MILLISECONDS)).intValue() == 0 ? C5568u.f13909j : C5568u.f13907h;
        } catch (Exception e) {
            C8805a.m16910b("BillingClient", "Exception while checking if billing is supported; try to reconnect");
            return C5568u.f13910k;
        }
    }

    /* renamed from: d */
    public final C5547g.C5548a m25209d(String str) {
        String string;
        String valueOf = String.valueOf(str);
        C8805a.m16914a("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle a = C8805a.m16913a(this.f13818n, this.f13823s, this.f13806b);
        String str2 = null;
        do {
            try {
                Bundle a2 = this.f13818n ? this.f13811g.mo16901a(9, this.f13810f.getPackageName(), str, str2, a) : this.f13811g.mo16902a(3, this.f13810f.getPackageName(), str, str2);
                C5542e a3 = C5569v.m25125a(a2, "BillingClient", "getPurchase()");
                if (a3 != C5568u.f13909j) {
                    return new C5547g.C5548a(a3, null);
                }
                ArrayList<String> stringArrayList = a2.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = a2.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = a2.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    String valueOf2 = String.valueOf(stringArrayList.get(i));
                    C8805a.m16914a("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        C5547g gVar = new C5547g(str3, str4);
                        if (TextUtils.isEmpty(gVar.m25159d())) {
                            C8805a.m16910b("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(gVar);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        C8805a.m16910b("BillingClient", sb.toString());
                        return new C5547g.C5548a(C5568u.f13908i, null);
                    }
                }
                string = a2.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                C8805a.m16914a("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                str2 = string;
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf5).length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                C8805a.m16910b("BillingClient", sb2.toString());
                return new C5547g.C5548a(C5568u.f13910k, null);
            }
        } while (!TextUtils.isEmpty(string));
        return new C5547g.C5548a(C5568u.f13909j, arrayList);
    }
}
