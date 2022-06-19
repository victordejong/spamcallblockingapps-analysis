package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.C3905g;
import com.android.billingclient.api.Purchase;
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
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.d */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/d.class */
public class C3898d extends AbstractC3895c {

    /* renamed from: a */
    private int f12280a;

    /* renamed from: b */
    private final String f12281b;

    /* renamed from: c */
    private final Handler f12282c;

    /* renamed from: d */
    private C3912i0 f12283d;

    /* renamed from: e */
    private Context f12284e;

    /* renamed from: f */
    private Context f12285f;

    /* renamed from: g */
    private AbstractC1873d f12286g;

    /* renamed from: h */
    private ServiceConnectionC3938v f12287h;

    /* renamed from: i */
    private boolean f12288i;

    /* renamed from: j */
    private boolean f12289j;

    /* renamed from: k */
    private int f12290k;

    /* renamed from: l */
    private boolean f12291l;

    /* renamed from: m */
    private boolean f12292m;

    /* renamed from: n */
    private boolean f12293n;

    /* renamed from: o */
    private boolean f12294o;

    /* renamed from: p */
    private boolean f12295p;

    /* renamed from: q */
    private boolean f12296q;

    /* renamed from: r */
    private boolean f12297r;

    /* renamed from: s */
    private boolean f12298s;

    /* renamed from: t */
    private boolean f12299t;

    /* renamed from: u */
    private ExecutorService f12300u;

    private C3898d(Context context, boolean z, AbstractC3915k abstractC3915k, String str, String str2) {
        this.f12280a = 0;
        this.f12282c = new Handler(Looper.getMainLooper());
        this.f12290k = 0;
        this.f12281b = str;
        m23822i(context, abstractC3915k, z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3898d(java.lang.String r8, boolean r9, android.content.Context r10, com.android.billingclient.api.AbstractC3915k r11) {
        /*
            r7 = this;
            java.lang.String r0 = "com.android.billingclient.ktx.BuildConfig"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L15
            java.lang.String r1 = "VERSION_NAME"
            java.lang.reflect.Field r0 = r0.getField(r1)     // Catch: java.lang.Exception -> L15
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L15
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L15
            r8 = r0
            goto L19
        L15:
            r8 = move-exception
            java.lang.String r0 = "3.0.3"
            r8 = r0
        L19:
            r0 = r7
            r1 = r10
            r2 = 1
            r3 = r11
            r4 = r8
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.C3898d.<init>(java.lang.String, boolean, android.content.Context, com.android.billingclient.api.k):void");
    }

    /* renamed from: I */
    private final C3905g m23831I(C3905g c3905g) {
        this.f12283d.m23763b().mo23760a(c3905g, null);
        return c3905g;
    }

    /* renamed from: J */
    public final <T> Future<T> m23830J(Callable<T> callable, long j, Runnable runnable) {
        long j2 = (long) (j * 0.95d);
        if (this.f12300u == null) {
            this.f12300u = Executors.newFixedThreadPool(C1870a.f6771a, new ThreadFactoryC3931r0(this));
        }
        try {
            Future<T> submit = this.f12300u.submit(callable);
            this.f12282c.postDelayed(new RunnableC3933s0(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            C1870a.m28779b("BillingClient", sb.toString());
            return null;
        }
    }

    /* renamed from: i */
    private void m23822i(Context context, AbstractC3915k abstractC3915k, boolean z) {
        Context applicationContext = context.getApplicationContext();
        this.f12285f = applicationContext;
        this.f12283d = new C3912i0(applicationContext, abstractC3915k);
        this.f12284e = context;
        this.f12299t = z;
    }

    /* renamed from: j */
    public final void m23821j(Runnable runnable) {
        if (Thread.interrupted()) {
            return;
        }
        this.f12282c.post(runnable);
    }

    /* renamed from: k */
    public final C3905g m23820k() {
        int i = this.f12280a;
        return (i == 0 || i == 3) ? C3944y.f12403q : C3944y.f12398l;
    }

    /* renamed from: o */
    public static /* synthetic */ Purchase.C3889a m23816o(C3898d c3898d, String str) {
        Purchase.C3889a c3889a;
        String valueOf = String.valueOf(str);
        C1870a.m28780a("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle m28773h = C1870a.m28773h(c3898d.f12293n, c3898d.f12299t, c3898d.f12281b);
        String str2 = null;
        while (true) {
            try {
                Bundle mo28767B3 = c3898d.f12293n ? c3898d.f12286g.mo28767B3(9, c3898d.f12285f.getPackageName(), str, str2, m28773h) : c3898d.f12286g.mo28760h5(3, c3898d.f12285f.getPackageName(), str, str2);
                C3905g m23848a = C3892a0.m23848a(mo28767B3, "BillingClient", "getPurchase()");
                if (m23848a != C3944y.f12402p) {
                    c3889a = new Purchase.C3889a(m23848a, null);
                    break;
                }
                ArrayList<String> stringArrayList = mo28767B3.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = mo28767B3.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = mo28767B3.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    String valueOf2 = String.valueOf(stringArrayList.get(i));
                    C1870a.m28780a("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.m23869d())) {
                            C1870a.m28779b("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        C1870a.m28779b("BillingClient", sb.toString());
                        c3889a = new Purchase.C3889a(C3944y.f12398l, null);
                    }
                }
                String string = mo28767B3.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                C1870a.m28780a("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    c3889a = new Purchase.C3889a(C3944y.f12402p, arrayList);
                    break;
                }
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(valueOf5.length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                C1870a.m28779b("BillingClient", sb2.toString());
                c3889a = new Purchase.C3889a(C3944y.f12403q, null);
            }
        }
        return c3889a;
    }

    /* renamed from: q */
    public static /* synthetic */ void m23814q(C3898d c3898d, C3908h c3908h, AbstractC3911i abstractC3911i) {
        int i;
        String str;
        String m23772a = c3908h.m23772a();
        try {
            String valueOf = String.valueOf(m23772a);
            C1870a.m28780a("BillingClient", valueOf.length() != 0 ? "Consuming purchase with token: ".concat(valueOf) : new String("Consuming purchase with token: "));
            if (c3898d.f12293n) {
                Bundle mo28761g5 = c3898d.f12286g.mo28761g5(9, c3898d.f12285f.getPackageName(), m23772a, C1870a.m28771j(c3908h, c3898d.f12293n, c3898d.f12281b));
                i = mo28761g5.getInt("RESPONSE_CODE");
                str = C1870a.m28776e(mo28761g5, "BillingClient");
            } else {
                i = c3898d.f12286g.mo28762e4(3, c3898d.f12285f.getPackageName(), m23772a);
                str = "";
            }
            C3905g.C3906a m23778c = C3905g.m23778c();
            m23778c.m23773c(i);
            m23778c.m23774b(str);
            C3905g m23775a = m23778c.m23775a();
            if (i == 0) {
                c3898d.m23821j(new RunnableC3937u0(c3898d, abstractC3911i, m23775a, m23772a));
            } else {
                c3898d.m23821j(new RunnableC3939v0(c3898d, i, abstractC3911i, m23775a, m23772a));
            }
        } catch (Exception e) {
            c3898d.m23821j(new RunnableC3941w0(c3898d, e, abstractC3911i, m23772a));
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: a */
    public final void mo23829a(C3890a c3890a, AbstractC3893b abstractC3893b) {
        if (!mo23827c()) {
            abstractC3893b.mo23847a(C3944y.f12403q);
        } else if (TextUtils.isEmpty(c3890a.m23853a())) {
            C1870a.m28779b("BillingClient", "Please provide a valid purchase token.");
            abstractC3893b.mo23847a(C3944y.f12397k);
        } else if (!this.f12293n) {
            abstractC3893b.mo23847a(C3944y.f12388b);
        } else if (m23830J(new CallableC3927p0(this, c3890a, abstractC3893b), 30000L, new RunnableC3929q0(this, abstractC3893b)) != null) {
        } else {
            abstractC3893b.mo23847a(m23820k());
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: b */
    public final void mo23828b(C3908h c3908h, AbstractC3911i abstractC3911i) {
        if (!mo23827c()) {
            abstractC3911i.mo23765a(C3944y.f12403q, c3908h.m23772a());
        } else if (m23830J(new CallableC3919l0(this, c3908h, abstractC3911i), 30000L, new RunnableC3921m0(this, abstractC3911i, c3908h)) != null) {
        } else {
            abstractC3911i.mo23765a(m23820k(), c3908h.m23772a());
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: c */
    public final boolean mo23827c() {
        return (this.f12280a != 2 || this.f12286g == null || this.f12287h == null) ? false : true;
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: d */
    public final C3905g mo23826d(Activity activity, C3902f c3902f) {
        Future future;
        boolean z;
        String str;
        String str2 = "BUY_INTENT";
        if (!mo23827c()) {
            C3905g c3905g = C3944y.f12403q;
            m23831I(c3905g);
            return c3905g;
        }
        ArrayList<SkuDetails> m23795f = c3902f.m23795f();
        SkuDetails skuDetails = m23795f.get(0);
        String m23858d = skuDetails.m23858d();
        if (m23858d.equals("subs") && !this.f12288i) {
            C1870a.m28779b("BillingClient", "Current client doesn't support subscriptions.");
            C3905g c3905g2 = C3944y.f12405s;
            m23831I(c3905g2);
            return c3905g2;
        }
        String m23800a = c3902f.m23800a();
        if (m23800a != null && !this.f12289j) {
            C1870a.m28779b("BillingClient", "Current client doesn't support subscriptions update.");
            C3905g c3905g3 = C3944y.f12406t;
            m23831I(c3905g3);
            return c3905g3;
        } else if (c3902f.m23793h() && !this.f12291l) {
            C1870a.m28779b("BillingClient", "Current client doesn't support extra params for buy intent.");
            C3905g c3905g4 = C3944y.f12394h;
            m23831I(c3905g4);
            return c3905g4;
        } else if (m23795f.size() > 1 && !this.f12298s) {
            C1870a.m28779b("BillingClient", "Current client doesn't support multi-item purchases.");
            C3905g c3905g5 = C3944y.f12407u;
            m23831I(c3905g5);
            return c3905g5;
        } else {
            String str3 = "";
            for (int i = 0; i < m23795f.size(); i++) {
                String valueOf = String.valueOf(str3);
                String valueOf2 = String.valueOf(m23795f.get(i));
                StringBuilder sb = new StringBuilder(valueOf.length() + valueOf2.length());
                sb.append(valueOf);
                sb.append(valueOf2);
                String sb2 = sb.toString();
                str3 = sb2;
                if (i < m23795f.size() - 1) {
                    str3 = String.valueOf(sb2).concat(", ");
                }
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + 41 + m23858d.length());
            sb3.append("Constructing buy intent for ");
            sb3.append(str3);
            sb3.append(", item type: ");
            sb3.append(m23858d);
            C1870a.m28780a("BillingClient", sb3.toString());
            if (this.f12291l) {
                Bundle m28774g = C1870a.m28774g(c3902f, this.f12293n, this.f12299t, this.f12281b);
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<String> arrayList2 = new ArrayList<>();
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                int size = m23795f.size();
                int i2 = 0;
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = false;
                while (i2 < size) {
                    SkuDetails skuDetails2 = m23795f.get(i2);
                    if (!skuDetails2.m23856f().isEmpty()) {
                        arrayList.add(skuDetails2.m23856f());
                    }
                    try {
                        str = new JSONObject(skuDetails2.m23861a()).optString("offer_id_token");
                    } catch (JSONException e) {
                        str = "";
                    }
                    String m23855g = skuDetails2.m23855g();
                    int m23854h = skuDetails2.m23854h();
                    arrayList2.add(str);
                    z2 |= !TextUtils.isEmpty(str);
                    arrayList3.add(m23855g);
                    boolean z5 = z3 | (!TextUtils.isEmpty(m23855g));
                    arrayList4.add(Integer.valueOf(m23854h));
                    z4 |= m23854h != 0;
                    i2++;
                    z3 = z5;
                }
                if (!arrayList.isEmpty()) {
                    m28774g.putStringArrayList("skuDetailsTokens", arrayList);
                }
                if (z2) {
                    if (!this.f12296q) {
                        C3905g c3905g6 = C3944y.f12395i;
                        m23831I(c3905g6);
                        return c3905g6;
                    }
                    m28774g.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                }
                if (z3) {
                    m28774g.putStringArrayList("SKU_OFFER_ID_LIST", arrayList3);
                }
                if (z4) {
                    m28774g.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList4);
                }
                if (!TextUtils.isEmpty(skuDetails.m23857e())) {
                    m28774g.putString("skuPackageName", skuDetails.m23857e());
                    z = true;
                } else {
                    z = false;
                }
                if (!TextUtils.isEmpty(null)) {
                    m28774g.putString("accountName", null);
                }
                if (m23795f.size() > 1) {
                    ArrayList<String> arrayList5 = new ArrayList<>(m23795f.size() - 1);
                    ArrayList<String> arrayList6 = new ArrayList<>(m23795f.size() - 1);
                    for (int i3 = 1; i3 < m23795f.size(); i3++) {
                        arrayList5.add(m23795f.get(i3).m23859c());
                        arrayList6.add(m23795f.get(i3).m23858d());
                    }
                    m28774g.putStringArrayList("additionalSkus", arrayList5);
                    m28774g.putStringArrayList("additionalSkuTypes", arrayList6);
                }
                if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                    m28774g.putString("proxyPackage", stringExtra);
                    try {
                        m28774g.putString("proxyPackageVersion", this.f12285f.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException e2) {
                        m28774g.putString("proxyPackageVersion", "package not found");
                    }
                }
                future = m23830J(new CallableC3943x0(this, (!this.f12297r || !z) ? this.f12293n ? 9 : c3902f.m23797d() ? 7 : 6 : 15, skuDetails, m23858d, c3902f, m28774g), 5000L, null);
            } else {
                str2 = "BUY_INTENT";
                future = m23800a != null ? m23830J(new CallableC3945y0(this, c3902f, skuDetails), 5000L, null) : m23830J(new CallableC3924o(this, skuDetails, m23858d), 5000L, null);
            }
            try {
                Bundle bundle = (Bundle) future.get(5000L, TimeUnit.MILLISECONDS);
                int m28777d = C1870a.m28777d(bundle, "BillingClient");
                String m28776e = C1870a.m28776e(bundle, "BillingClient");
                if (m28777d == 0) {
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra(str2, (PendingIntent) bundle.getParcelable(str2));
                    activity.startActivity(intent);
                    return C3944y.f12402p;
                }
                StringBuilder sb4 = new StringBuilder(52);
                sb4.append("Unable to buy item, Error response code: ");
                sb4.append(m28777d);
                C1870a.m28779b("BillingClient", sb4.toString());
                C3905g.C3906a m23778c = C3905g.m23778c();
                m23778c.m23773c(m28777d);
                m23778c.m23774b(m28776e);
                C3905g m23775a = m23778c.m23775a();
                m23831I(m23775a);
                return m23775a;
            } catch (CancellationException | TimeoutException e3) {
                StringBuilder sb5 = new StringBuilder(String.valueOf(str3).length() + 68);
                sb5.append("Time out while launching billing flow: ; for sku: ");
                sb5.append(str3);
                sb5.append("; try to reconnect");
                C1870a.m28779b("BillingClient", sb5.toString());
                C3905g c3905g7 = C3944y.f12404r;
                m23831I(c3905g7);
                return c3905g7;
            } catch (Exception e4) {
                StringBuilder sb6 = new StringBuilder(String.valueOf(str3).length() + 69);
                sb6.append("Exception while launching billing flow: ; for sku: ");
                sb6.append(str3);
                sb6.append("; try to reconnect");
                C1870a.m28779b("BillingClient", sb6.toString());
                C3905g c3905g8 = C3944y.f12403q;
                m23831I(c3905g8);
                return c3905g8;
            }
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: f */
    public final Purchase.C3889a mo23825f(String str) {
        if (!mo23827c()) {
            return new Purchase.C3889a(C3944y.f12403q, null);
        }
        if (TextUtils.isEmpty(str)) {
            C1870a.m28779b("BillingClient", "Please provide a valid SKU type.");
            return new Purchase.C3889a(C3944y.f12393g, null);
        }
        try {
            return (Purchase.C3889a) m23830J(new CallableC3926p(this, str), 5000L, null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new Purchase.C3889a(C3944y.f12404r, null);
        } catch (Exception e2) {
            return new Purchase.C3889a(C3944y.f12398l, null);
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: g */
    public final void mo23824g(C3917l c3917l, AbstractC3920m abstractC3920m) {
        if (!mo23827c()) {
            abstractC3920m.mo23751a(C3944y.f12403q, null);
            return;
        }
        String m23759a = c3917l.m23759a();
        List<String> m23758b = c3917l.m23758b();
        if (TextUtils.isEmpty(m23759a)) {
            C1870a.m28779b("BillingClient", "Please fix the input params. SKU type can't be empty.");
            abstractC3920m.mo23751a(C3944y.f12393g, null);
        } else if (m23758b == null) {
            C1870a.m28779b("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            abstractC3920m.mo23751a(C3944y.f12392f, null);
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str : m23758b) {
                C3901e0 c3901e0 = new C3901e0(null);
                c3901e0.m23802a(str);
                arrayList.add(c3901e0.m23801b());
            }
            if (m23830J(new CallableC3930r(this, m23759a, arrayList, null, abstractC3920m), 30000L, new RunnableC3916k0(this, abstractC3920m)) != null) {
                return;
            }
            abstractC3920m.mo23751a(m23820k(), null);
        }
    }

    @Override // com.android.billingclient.api.AbstractC3895c
    /* renamed from: h */
    public final void mo23823h(AbstractC3900e abstractC3900e) {
        ServiceInfo serviceInfo;
        if (mo23827c()) {
            C1870a.m28780a("BillingClient", "Service connection is valid. No need to re-initialize.");
            abstractC3900e.mo23804a(C3944y.f12402p);
            return;
        }
        int i = this.f12280a;
        if (i == 1) {
            C1870a.m28779b("BillingClient", "Client is already in the process of connecting to billing service.");
            abstractC3900e.mo23804a(C3944y.f12390d);
        } else if (i == 3) {
            C1870a.m28779b("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            abstractC3900e.mo23804a(C3944y.f12403q);
        } else {
            this.f12280a = 1;
            this.f12283d.m23764a();
            C1870a.m28780a("BillingClient", "Starting in-app billing setup.");
            this.f12287h = new ServiceConnectionC3938v(this, abstractC3900e, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f12285f.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    C1870a.m28779b("BillingClient", "The device doesn't have valid Play Store.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f12281b);
                    if (this.f12285f.bindService(intent2, this.f12287h, 1)) {
                        C1870a.m28780a("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    C1870a.m28779b("BillingClient", "Connection to Billing service is blocked.");
                }
            }
            this.f12280a = 0;
            C1870a.m28780a("BillingClient", "Billing service unavailable on device.");
            abstractC3900e.mo23804a(C3944y.f12389c);
        }
    }

    /* renamed from: l */
    public final C3894b0 m23819l(String str, List<C3904f0> list, String str2) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                int i3 = i2 + 20;
                ArrayList arrayList2 = new ArrayList(list.subList(i2, i3 > size ? size : i3));
                ArrayList<String> arrayList3 = new ArrayList<>();
                int size2 = arrayList2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList3.add(((C3904f0) arrayList2.get(i4)).m23781a());
                }
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
                bundle.putString("playBillingLibraryVersion", this.f12281b);
                try {
                    Bundle mo28763d3 = this.f12294o ? this.f12286g.mo28763d3(10, this.f12285f.getPackageName(), str, bundle, C1870a.m28772i(this.f12290k, this.f12299t, this.f12281b, null, arrayList2)) : this.f12286g.mo28766L4(3, this.f12285f.getPackageName(), str, bundle);
                    if (mo28763d3 == null) {
                        C1870a.m28779b("BillingClient", "querySkuDetailsAsync got null sku details list");
                        return new C3894b0(4, "Item is unavailable for purchase.", null);
                    } else if (!mo28763d3.containsKey("DETAILS_LIST")) {
                        int m28777d = C1870a.m28777d(mo28763d3, "BillingClient");
                        String m28776e = C1870a.m28776e(mo28763d3, "BillingClient");
                        if (m28777d == 0) {
                            C1870a.m28779b("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                            return new C3894b0(6, m28776e, arrayList);
                        }
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(m28777d);
                        C1870a.m28779b("BillingClient", sb.toString());
                        return new C3894b0(m28777d, m28776e, arrayList);
                    } else {
                        ArrayList<String> stringArrayList = mo28763d3.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            C1870a.m28779b("BillingClient", "querySkuDetailsAsync got null response list");
                            return new C3894b0(4, "Item is unavailable for purchase.", null);
                        }
                        for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                            try {
                                SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i5));
                                String valueOf = String.valueOf(skuDetails);
                                StringBuilder sb2 = new StringBuilder(valueOf.length() + 17);
                                sb2.append("Got sku details: ");
                                sb2.append(valueOf);
                                C1870a.m28780a("BillingClient", sb2.toString());
                                arrayList.add(skuDetails);
                            } catch (JSONException e) {
                                C1870a.m28779b("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                                return new C3894b0(6, "Error trying to decode SkuDetails.", null);
                            }
                        }
                        i = i3;
                    }
                } catch (Exception e2) {
                    String valueOf2 = String.valueOf(e2);
                    StringBuilder sb3 = new StringBuilder(valueOf2.length() + 63);
                    sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                    sb3.append(valueOf2);
                    C1870a.m28779b("BillingClient", sb3.toString());
                    return new C3894b0(-1, "Service connection is disconnected.", null);
                }
            } else {
                return new C3894b0(0, "", arrayList);
            }
        }
    }
}
