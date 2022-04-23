package p131c.p132a.p133a.p134a;

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
import com.android.billingclient.api.ProxyBillingActivity;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzd;
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
import p131c.p132a.p133a.p134a.C1994g;
import p131c.p132a.p133a.p134a.C1999i;
/* renamed from: c.a.a.a.d */
/* loaded from: classes-dex2jar.jar:c/a/a/a/d.class */
public class C1987d extends AbstractC1984c {

    /* renamed from: a */
    public int f7803a;

    /* renamed from: b */
    public final String f7804b;

    /* renamed from: c */
    public final Handler f7805c;

    /* renamed from: d */
    public C1998h0 f7806d;

    /* renamed from: e */
    public Context f7807e;

    /* renamed from: f */
    public Context f7808f;

    /* renamed from: g */
    public zzd f7809g;

    /* renamed from: h */
    public ServiceConnectionC2026v f7810h;

    /* renamed from: i */
    public boolean f7811i;

    /* renamed from: j */
    public boolean f7812j;

    /* renamed from: k */
    public int f7813k;

    /* renamed from: l */
    public boolean f7814l;

    /* renamed from: m */
    public boolean f7815m;

    /* renamed from: n */
    public boolean f7816n;

    /* renamed from: o */
    public boolean f7817o;

    /* renamed from: p */
    public boolean f7818p;

    /* renamed from: q */
    public boolean f7819q;

    /* renamed from: r */
    public boolean f7820r;

    /* renamed from: s */
    public boolean f7821s;

    /* renamed from: t */
    public ExecutorService f7822t;

    public C1987d(Context context, boolean z, AbstractC2002j jVar, String str, String str2) {
        this.f7803a = 0;
        this.f7805c = new Handler(Looper.getMainLooper());
        this.f7813k = 0;
        this.f7804b = str;
        m31349a(context, jVar, z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1987d(java.lang.String r8, boolean r9, android.content.Context r10, p131c.p132a.p133a.p134a.AbstractC2002j r11) {
        /*
            r7 = this;
            java.lang.String r0 = "com.android.billingclient.ktx.BuildConfig"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: Exception -> 0x0015
            java.lang.String r1 = "VERSION_NAME"
            java.lang.reflect.Field r0 = r0.getField(r1)     // Catch: Exception -> 0x0015
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: Exception -> 0x0015
            java.lang.String r0 = (java.lang.String) r0     // Catch: Exception -> 0x0015
            r8 = r0
            goto L_0x0019
        L_0x0015:
            r8 = move-exception
            java.lang.String r0 = "3.0.2"
            r8 = r0
        L_0x0019:
            r0 = r7
            r1 = r10
            r2 = 1
            r3 = r11
            r4 = r8
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p132a.p133a.p134a.C1987d.<init>(java.lang.String, boolean, android.content.Context, c.a.a.a.j):void");
    }

    /* renamed from: a */
    public static /* synthetic */ C1999i.C2000a m31343a(C1987d dVar, String str) {
        C1999i.C2000a aVar;
        String valueOf = String.valueOf(str);
        zza.m9445a("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle a = zza.m9444a(dVar.f7816n, dVar.f7821s, dVar.f7804b);
        String str2 = null;
        while (true) {
            try {
                Bundle a2 = dVar.f7816n ? dVar.f7809g.mo9435a(9, dVar.f7808f.getPackageName(), str, str2, a) : dVar.f7809g.mo9436a(3, dVar.f7808f.getPackageName(), str, str2);
                C1994g a3 = C2030z.m31247a(a2, "BillingClient", "getPurchase()");
                if (a3 != C2029y.f7913k) {
                    aVar = new C1999i.C2000a(a3, null);
                    break;
                }
                ArrayList<String> stringArrayList = a2.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = a2.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = a2.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    String valueOf2 = String.valueOf(stringArrayList.get(i));
                    zza.m9445a("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        C1999i iVar = new C1999i(str3, str4);
                        if (TextUtils.isEmpty(iVar.m31276c())) {
                            zza.m9442b("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(iVar);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        zza.m9442b("BillingClient", sb.toString());
                        aVar = new C1999i.C2000a(C2029y.f7912j, null);
                    }
                }
                String string = a2.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                zza.m9445a("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    aVar = new C1999i.C2000a(C2029y.f7913k, arrayList);
                    break;
                }
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf5).length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                zza.m9442b("BillingClient", sb2.toString());
                aVar = new C1999i.C2000a(C2029y.f7914l, null);
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public final C1981a0 m31335a(String str, List<C1990e0> list, String str2) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(list.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(((C1990e0) arrayList2.get(i3)).m31314a());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f7804b);
            try {
                Bundle a = this.f7817o ? this.f7809g.mo9437a(10, this.f7808f.getPackageName(), str, bundle, zza.m9451a(this.f7813k, this.f7821s, this.f7804b, null, arrayList2)) : this.f7809g.mo9430c(3, this.f7808f.getPackageName(), str, bundle);
                if (a == null) {
                    zza.m9442b("BillingClient", "querySkuDetailsAsync got null sku details list");
                    return new C1981a0(4, "Item is unavailable for purchase.", null);
                } else if (!a.containsKey("DETAILS_LIST")) {
                    int a2 = zza.m9448a(a, "BillingClient");
                    String b = zza.m9443b(a, "BillingClient");
                    if (a2 != 0) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(a2);
                        zza.m9442b("BillingClient", sb.toString());
                        return new C1981a0(a2, b, arrayList);
                    }
                    zza.m9442b("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new C1981a0(6, b, arrayList);
                } else {
                    ArrayList<String> stringArrayList = a.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList != null) {
                        for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                            try {
                                C2004k kVar = new C2004k(stringArrayList.get(i4));
                                String valueOf = String.valueOf(kVar);
                                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 17);
                                sb2.append("Got sku details: ");
                                sb2.append(valueOf);
                                zza.m9445a("BillingClient", sb2.toString());
                                arrayList.add(kVar);
                            } catch (JSONException e) {
                                zza.m9442b("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                                return new C1981a0(6, "Error trying to decode SkuDetails.", null);
                            }
                        }
                        i = i2;
                    } else {
                        zza.m9442b("BillingClient", "querySkuDetailsAsync got null response list");
                        return new C1981a0(4, "Item is unavailable for purchase.", null);
                    }
                }
            } catch (Exception e2) {
                String valueOf2 = String.valueOf(e2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 63);
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(valueOf2);
                zza.m9442b("BillingClient", sb3.toString());
                return new C1981a0(-1, "Service connection is disconnected.", null);
            }
        }
        return new C1981a0(0, "", arrayList);
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final C1994g mo31350a(Activity activity, C1991f fVar) {
        Future future;
        boolean z;
        String str = "BUY_INTENT";
        if (!mo31333b()) {
            C1994g gVar = C2029y.f7914l;
            m31339a(gVar);
            return gVar;
        }
        ArrayList<C2004k> e = fVar.m31301e();
        C2004k kVar = e.get(0);
        String d = kVar.m31266d();
        if (!d.equals("subs") || this.f7811i) {
            String a = fVar.m31313a();
            if (a != null && !this.f7812j) {
                zza.m9442b("BillingClient", "Current client doesn't support subscriptions update.");
                C1994g gVar2 = C2029y.f7917o;
                m31339a(gVar2);
                return gVar2;
            } else if (fVar.m31299g() && !this.f7814l) {
                zza.m9442b("BillingClient", "Current client doesn't support extra params for buy intent.");
                C1994g gVar3 = C2029y.f7909g;
                m31339a(gVar3);
                return gVar3;
            } else if (e.size() <= 1 || this.f7819q) {
                String str2 = "";
                String str3 = "";
                for (int i = 0; i < e.size(); i++) {
                    String valueOf = String.valueOf(str3);
                    String valueOf2 = String.valueOf(e.get(i));
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                    sb.append(valueOf);
                    sb.append(valueOf2);
                    String sb2 = sb.toString();
                    str3 = sb2;
                    if (i < e.size() - 1) {
                        str3 = String.valueOf(sb2).concat(", ");
                    }
                }
                StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + 41 + String.valueOf(d).length());
                sb3.append("Constructing buy intent for ");
                sb3.append(str3);
                sb3.append(", item type: ");
                sb3.append(d);
                zza.m9445a("BillingClient", sb3.toString());
                if (this.f7814l) {
                    Bundle a2 = zza.m9446a(fVar, this.f7816n, this.f7821s, this.f7804b);
                    ArrayList<String> arrayList = new ArrayList<>();
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    ArrayList<Integer> arrayList4 = new ArrayList<>();
                    int size = e.size();
                    boolean z2 = false;
                    boolean z3 = false;
                    boolean z4 = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        C2004k kVar2 = e.get(i2);
                        if (!kVar2.m31264f().isEmpty()) {
                            arrayList.add(kVar2.m31264f());
                        }
                        try {
                            str2 = new JSONObject(kVar2.m31269a()).optString("offer_id_token");
                        } catch (JSONException e2) {
                        }
                        String g = kVar2.m31263g();
                        int h = kVar2.m31262h();
                        arrayList2.add(str2);
                        z2 |= !TextUtils.isEmpty(str2);
                        arrayList3.add(g);
                        z3 |= !TextUtils.isEmpty(g);
                        arrayList4.add(Integer.valueOf(h));
                        z4 |= h != 0;
                    }
                    if (!arrayList.isEmpty()) {
                        a2.putStringArrayList("skuDetailsTokens", arrayList);
                    }
                    if (z2) {
                        if (!this.f7819q) {
                            C1994g gVar4 = C2029y.f7910h;
                            m31339a(gVar4);
                            return gVar4;
                        }
                        a2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                    }
                    if (z3) {
                        a2.putStringArrayList("SKU_OFFER_ID_LIST", arrayList3);
                    }
                    if (z4) {
                        a2.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList4);
                    }
                    if (!TextUtils.isEmpty(kVar.m31265e())) {
                        a2.putString("skuPackageName", kVar.m31265e());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!TextUtils.isEmpty(null)) {
                        a2.putString("accountName", null);
                    }
                    if (e.size() > 1) {
                        ArrayList<String> arrayList5 = new ArrayList<>(e.size() - 1);
                        for (int i3 = 1; i3 < e.size(); i3++) {
                            arrayList5.add(e.get(i3).m31267c());
                        }
                        a2.putStringArrayList("additionalSkus", arrayList5);
                    }
                    if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                        String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                        a2.putString("proxyPackage", stringExtra);
                        try {
                            a2.putString("proxyPackageVersion", this.f7807e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException e3) {
                            a2.putString("proxyPackageVersion", "package not found");
                        }
                    }
                    future = m31334a(new CallableC2022s0(this, (!this.f7820r || !z) ? this.f7816n ? 9 : fVar.m31303d() ? 7 : 6 : 15, kVar, d, fVar, a2), 5000L, (Runnable) null);
                } else {
                    str = "BUY_INTENT";
                    future = a != null ? m31334a(new CallableC2024t0(this, fVar, kVar), 5000L, (Runnable) null) : m31334a(new CallableC2013o(this, kVar, d), 5000L, (Runnable) null);
                }
                try {
                    Bundle bundle = (Bundle) future.get(5000L, TimeUnit.MILLISECONDS);
                    int a3 = zza.m9448a(bundle, "BillingClient");
                    String b = zza.m9443b(bundle, "BillingClient");
                    if (a3 != 0) {
                        StringBuilder sb4 = new StringBuilder(52);
                        sb4.append("Unable to buy item, Error response code: ");
                        sb4.append(a3);
                        zza.m9442b("BillingClient", sb4.toString());
                        C1994g.C1995a c = C1994g.m31290c();
                        c.m31288a(a3);
                        c.m31287a(b);
                        C1994g a4 = c.m31289a();
                        m31339a(a4);
                        return a4;
                    }
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra(str, (PendingIntent) bundle.getParcelable(str));
                    activity.startActivity(intent);
                    return C2029y.f7913k;
                } catch (CancellationException | TimeoutException e4) {
                    StringBuilder sb5 = new StringBuilder(String.valueOf(str3).length() + 68);
                    sb5.append("Time out while launching billing flow: ; for sku: ");
                    sb5.append(str3);
                    sb5.append("; try to reconnect");
                    zza.m9442b("BillingClient", sb5.toString());
                    C1994g gVar5 = C2029y.f7915m;
                    m31339a(gVar5);
                    return gVar5;
                } catch (Exception e5) {
                    StringBuilder sb6 = new StringBuilder(String.valueOf(str3).length() + 69);
                    sb6.append("Exception while launching billing flow: ; for sku: ");
                    sb6.append(str3);
                    sb6.append("; try to reconnect");
                    zza.m9442b("BillingClient", sb6.toString());
                    C1994g gVar6 = C2029y.f7914l;
                    m31339a(gVar6);
                    return gVar6;
                }
            } else {
                zza.m9442b("BillingClient", "Current client doesn't support multi-item purchases.");
                C1994g gVar7 = C2029y.f7918p;
                m31339a(gVar7);
                return gVar7;
            }
        } else {
            zza.m9442b("BillingClient", "Current client doesn't support subscriptions.");
            C1994g gVar8 = C2029y.f7916n;
            m31339a(gVar8);
            return gVar8;
        }
    }

    /* renamed from: a */
    public final C1994g m31339a(C1994g gVar) {
        this.f7806d.m31280b().mo19816a(gVar, null);
        return gVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final C1994g mo31336a(String str) {
        char c;
        if (!mo31333b()) {
            return C2029y.f7914l;
        }
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals("subscriptionsUpdate")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 96321:
                if (str.equals("aaa")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 97314:
                if (str.equals("bbb")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 98307:
                if (str.equals("ccc")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 99300:
                if (str.equals("ddd")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 207616302:
                if (str.equals("priceChangeConfirmation")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 292218239:
                if (str.equals("inAppItemsOnVr")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1219490065:
                if (str.equals("subscriptionsOnVr")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1987365622:
                if (str.equals("subscriptions")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return this.f7811i ? C2029y.f7913k : C2029y.f7910h;
            case 1:
                return this.f7812j ? C2029y.f7913k : C2029y.f7910h;
            case 2:
                return m31325c("inapp");
            case 3:
                return m31325c("subs");
            case 4:
                return this.f7815m ? C2029y.f7913k : C2029y.f7910h;
            case 5:
                return this.f7818p ? C2029y.f7913k : C2029y.f7910h;
            case 6:
                return this.f7820r ? C2029y.f7913k : C2029y.f7910h;
            case 7:
            case '\b':
                return this.f7819q ? C2029y.f7913k : C2029y.f7910h;
            default:
                String valueOf = String.valueOf(str);
                zza.m9442b("BillingClient", valueOf.length() != 0 ? "Unsupported feature: ".concat(valueOf) : new String("Unsupported feature: "));
                return C2029y.f7919q;
        }
    }

    /* renamed from: a */
    public final <T> Future<T> m31334a(Callable<T> callable, long j, Runnable runnable) {
        double d = j;
        Double.isNaN(d);
        long j2 = (long) (d * 0.95d);
        if (this.f7822t == null) {
            this.f7822t = Executors.newFixedThreadPool(zza.f29696a, new ThreadFactoryC2014o0(this));
        }
        try {
            Future<T> submit = this.f7822t.submit(callable);
            this.f7805c.postDelayed(new RunnableC2016p0(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            zza.m9442b("BillingClient", sb.toString());
            return null;
        }
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final void mo31351a() {
        try {
            this.f7806d.m31279c();
            ServiceConnectionC2026v vVar = this.f7810h;
            if (vVar != null) {
                vVar.m31253a();
            }
            if (!(this.f7810h == null || this.f7809g == null)) {
                zza.m9445a("BillingClient", "Unbinding from service.");
                this.f7808f.unbindService(this.f7810h);
                this.f7810h = null;
            }
            this.f7809g = null;
            ExecutorService executorService = this.f7822t;
            if (executorService != null) {
                executorService.shutdownNow();
                this.f7822t = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            zza.m9442b("BillingClient", sb.toString());
        } finally {
            this.f7803a = 3;
        }
    }

    /* renamed from: a */
    public final void m31349a(Context context, AbstractC2002j jVar, boolean z) {
        Context applicationContext = context.getApplicationContext();
        this.f7808f = applicationContext;
        this.f7806d = new C1998h0(applicationContext, jVar);
        this.f7807e = context;
        this.f7821s = z;
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final void mo31348a(C1979a aVar, AbstractC1982b bVar) {
        if (!mo31333b()) {
            bVar.mo19796a(C2029y.f7914l);
        } else if (TextUtils.isEmpty(aVar.m31363a())) {
            zza.m9442b("BillingClient", "Please provide a valid purchase token.");
            bVar.mo19796a(C2029y.f7911i);
        } else if (!this.f7816n) {
            bVar.mo19796a(C2029y.f7904b);
        } else if (m31334a(new CallableC2010m0(this, aVar, bVar), 30000L, new RunnableC2012n0(this, bVar)) == null) {
            bVar.mo19796a(m31328c());
        }
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final void mo31340a(AbstractC1989e eVar) {
        ServiceInfo serviceInfo;
        if (mo31333b()) {
            zza.m9445a("BillingClient", "Service connection is valid. No need to re-initialize.");
            eVar.mo19794a(C2029y.f7913k);
            return;
        }
        int i = this.f7803a;
        if (i == 1) {
            zza.m9442b("BillingClient", "Client is already in the process of connecting to billing service.");
            eVar.mo19794a(C2029y.f7906d);
        } else if (i == 3) {
            zza.m9442b("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            eVar.mo19794a(C2029y.f7914l);
        } else {
            this.f7803a = 1;
            this.f7806d.m31282a();
            zza.m9445a("BillingClient", "Starting in-app billing setup.");
            this.f7810h = new ServiceConnectionC2026v(this, eVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f7808f.getPackageManager().queryIntentServices(intent, 0);
            if (!(queryIntentServices == null || queryIntentServices.isEmpty() || (serviceInfo = queryIntentServices.get(0).serviceInfo) == null)) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zza.m9442b("BillingClient", "The device doesn't have valid Play Store.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f7804b);
                    if (this.f7808f.bindService(intent2, this.f7810h, 1)) {
                        zza.m9445a("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    zza.m9442b("BillingClient", "Connection to Billing service is blocked.");
                }
            }
            this.f7803a = 0;
            zza.m9445a("BillingClient", "Billing service unavailable on device.");
            eVar.mo19794a(C2029y.f7905c);
        }
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: a */
    public final void mo31338a(C2006l lVar, AbstractC2009m mVar) {
        if (!mo31333b()) {
            mVar.mo3328a(C2029y.f7914l, null);
            return;
        }
        String a = lVar.m31261a();
        List<String> b = lVar.m31258b();
        if (TextUtils.isEmpty(a)) {
            zza.m9442b("BillingClient", "Please fix the input params. SKU type can't be empty.");
            mVar.mo3328a(C2029y.f7908f, null);
        } else if (b != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : b) {
                C1988d0 d0Var = new C1988d0(null);
                d0Var.m31315a(str);
                arrayList.add(d0Var.m31316a());
            }
            if (m31334a(new CallableC2019r(this, a, arrayList, null, mVar), 30000L, new RunnableC2003j0(this, mVar)) == null) {
                mVar.mo3328a(m31328c(), null);
            }
        } else {
            zza.m9442b("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            mVar.mo3328a(C2029y.f7907e, null);
        }
    }

    /* renamed from: a */
    public final void m31337a(Runnable runnable) {
        if (!Thread.interrupted()) {
            this.f7805c.post(runnable);
        }
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: b */
    public final C1999i.C2000a mo31329b(String str) {
        if (!mo31333b()) {
            return new C1999i.C2000a(C2029y.f7914l, null);
        }
        if (TextUtils.isEmpty(str)) {
            zza.m9442b("BillingClient", "Please provide a valid SKU type.");
            return new C1999i.C2000a(C2029y.f7908f, null);
        }
        try {
            return (C1999i.C2000a) m31334a(new CallableC2015p(this, str), 5000L, (Runnable) null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new C1999i.C2000a(C2029y.f7915m, null);
        } catch (Exception e2) {
            return new C1999i.C2000a(C2029y.f7912j, null);
        }
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC1984c
    /* renamed from: b */
    public final boolean mo31333b() {
        return (this.f7803a != 2 || this.f7809g == null || this.f7810h == null) ? false : true;
    }

    /* renamed from: c */
    public final C1994g m31328c() {
        int i = this.f7803a;
        return (i == 0 || i == 3) ? C2029y.f7914l : C2029y.f7912j;
    }

    /* renamed from: c */
    public final C1994g m31325c(String str) {
        try {
            return ((Integer) m31334a(new CallableC2020r0(this, str), 5000L, (Runnable) null).get(5000L, TimeUnit.MILLISECONDS)).intValue() == 0 ? C2029y.f7913k : C2029y.f7910h;
        } catch (Exception e) {
            zza.m9442b("BillingClient", "Exception while checking if billing is supported; try to reconnect");
            return C2029y.f7914l;
        }
    }
}
