package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.google.android.gms.internal.p360f.AbstractC13307d;
import com.google.android.gms.internal.p360f.C13304a;
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
/* renamed from: com.android.billingclient.api.d */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/d.class */
public final class C3337d extends AbstractC3335c {

    /* renamed from: a */
    int f12573a;

    /* renamed from: b */
    final String f12574b;

    /* renamed from: c */
    Context f12575c;

    /* renamed from: d */
    AbstractC13307d f12576d;

    /* renamed from: e */
    boolean f12577e;

    /* renamed from: f */
    boolean f12578f;

    /* renamed from: g */
    int f12579g;

    /* renamed from: h */
    boolean f12580h;

    /* renamed from: i */
    boolean f12581i;

    /* renamed from: j */
    boolean f12582j;

    /* renamed from: k */
    boolean f12583k;

    /* renamed from: l */
    boolean f12584l;

    /* renamed from: m */
    boolean f12585m;

    /* renamed from: n */
    boolean f12586n;

    /* renamed from: o */
    boolean f12587o;

    /* renamed from: p */
    private final Handler f12588p;

    /* renamed from: q */
    private C3322ag f12589q;

    /* renamed from: r */
    private Context f12590r;

    /* renamed from: s */
    private ServiceConnectionC3359v f12591s;

    /* renamed from: t */
    private boolean f12592t;

    /* renamed from: u */
    private ExecutorService f12593u;

    private C3337d(Activity activity, boolean z, String str) {
        this(activity.getApplicationContext(), z, new zzaj(), str, null);
    }

    private C3337d(Context context, boolean z, AbstractC3346j abstractC3346j, String str, String str2) {
        this.f12573a = 0;
        this.f12588p = new Handler(Looper.getMainLooper());
        this.f12579g = 0;
        this.f12574b = str;
        Context applicationContext = context.getApplicationContext();
        this.f12575c = applicationContext;
        this.f12589q = new C3322ag(applicationContext, abstractC3346j);
        this.f12590r = context;
        this.f12592t = z;
    }

    private C3337d(String str) {
        this.f12573a = 0;
        this.f12588p = new Handler(Looper.getMainLooper());
        this.f12579g = 0;
        this.f12574b = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3337d(java.lang.String r8, boolean r9, android.content.Context r10, com.android.billingclient.api.AbstractC3346j r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.C3337d.<init>(java.lang.String, boolean, android.content.Context, com.android.billingclient.api.j):void");
    }

    /* renamed from: a */
    private final C3341g m38199a(C3341g c3341g) {
        AbstractC3346j abstractC3346j;
        abstractC3346j = this.f12589q.f12543b.f12541c;
        abstractC3346j.mo28296a(c3341g, null);
        return c3341g;
    }

    /* renamed from: a */
    public static /* synthetic */ C3344i.C3345a m38201a(C3337d c3337d, String str) {
        C3344i.C3345a c3345a;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Querying owned items, item type: ".concat(valueOf);
        } else {
            new String("Querying owned items, item type: ");
        }
        C13304a.m13374a("BillingClient");
        ArrayList arrayList = new ArrayList();
        Bundle m13372a = C13304a.m13372a(c3337d.f12582j, c3337d.f12592t, c3337d.f12574b);
        String str2 = null;
        while (true) {
            try {
                Bundle mo13362a = c3337d.f12582j ? c3337d.f12576d.mo13362a(c3337d.f12575c.getPackageName(), str, str2, m13372a) : c3337d.f12576d.mo13359b(c3337d.f12575c.getPackageName(), str, str2);
                C3341g c3341g = C3362y.f12654l;
                if (mo13362a == null) {
                    C13304a.m13373a("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                } else {
                    int m13376a = C13304a.m13376a(mo13362a, "BillingClient");
                    String m13371b = C13304a.m13371b(mo13362a, "BillingClient");
                    C3341g.C3342a m38191a = C3341g.m38191a();
                    m38191a.f12611a = m13376a;
                    m38191a.f12612b = m13371b;
                    C3341g m38190a = m38191a.m38190a();
                    if (m13376a != 0) {
                        C13304a.m13373a("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(m13376a)));
                        c3341g = m38190a;
                    } else if (!mo13362a.containsKey("INAPP_PURCHASE_ITEM_LIST") || !mo13362a.containsKey("INAPP_PURCHASE_DATA_LIST") || !mo13362a.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        C13304a.m13373a("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                    } else {
                        ArrayList<String> stringArrayList = mo13362a.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = mo13362a.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = mo13362a.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            C13304a.m13373a("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                        } else if (stringArrayList2 == null) {
                            C13304a.m13373a("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                        } else if (stringArrayList3 == null) {
                            C13304a.m13373a("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                        } else {
                            c3341g = C3362y.f12658p;
                        }
                    }
                }
                if (c3341g != C3362y.f12658p) {
                    c3345a = new C3344i.C3345a(c3341g, null);
                    break;
                }
                ArrayList<String> stringArrayList4 = mo13362a.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = mo13362a.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = mo13362a.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList5.size(); i++) {
                    String str3 = stringArrayList5.get(i);
                    String str4 = stringArrayList6.get(i);
                    String valueOf2 = String.valueOf(stringArrayList4.get(i));
                    if (valueOf2.length() != 0) {
                        "Sku is owned: ".concat(valueOf2);
                    } else {
                        new String("Sku is owned: ");
                    }
                    C13304a.m13374a("BillingClient");
                    try {
                        C3344i c3344i = new C3344i(str3, str4);
                        if (TextUtils.isEmpty(c3344i.m38187c())) {
                            C13304a.m13373a("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(c3344i);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        C13304a.m13373a("BillingClient", sb.toString());
                        c3345a = new C3344i.C3345a(C3362y.f12654l, null);
                    }
                }
                String string = mo13362a.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                if (valueOf4.length() != 0) {
                    "Continuation token: ".concat(valueOf4);
                } else {
                    new String("Continuation token: ");
                }
                C13304a.m13374a("BillingClient");
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    c3345a = new C3344i.C3345a(C3362y.f12658p, arrayList);
                    break;
                }
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf5).length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                C13304a.m13373a("BillingClient", sb2.toString());
                c3345a = new C3344i.C3345a(C3362y.f12659q, null);
            }
        }
        return c3345a;
    }

    /* renamed from: a */
    public static /* synthetic */ void m38202a(C3337d c3337d, Runnable runnable) {
        if (!Thread.interrupted()) {
            c3337d.f12588p.post(runnable);
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final C3341g mo38204a(Activity activity, C3339f c3339f) {
        Future future;
        String str;
        Bundle bundle;
        String str2;
        boolean z;
        String str3;
        String str4 = "BUY_INTENT";
        if (!mo38205a()) {
            C3341g c3341g = C3362y.f12659q;
            m38199a(c3341g);
            return c3341g;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(c3339f.f12600g);
        C3347k c3347k = (C3347k) arrayList.get(0);
        String m38183b = c3347k.m38183b();
        if (m38183b.equals("subs") && !this.f12577e) {
            C13304a.m13373a("BillingClient", "Current client doesn't support subscriptions.");
            C3341g c3341g2 = C3362y.f12661s;
            m38199a(c3341g2);
            return c3341g2;
        }
        String str5 = c3339f.f12596c;
        if (str5 != null && !this.f12578f) {
            C13304a.m13373a("BillingClient", "Current client doesn't support subscriptions update.");
            C3341g c3341g3 = C3362y.f12662t;
            m38199a(c3341g3);
            return c3341g3;
        }
        if (((!c3339f.f12601h && c3339f.f12595b == null && c3339f.f12598e == null && c3339f.f12599f == 0 && !c3339f.f12594a) ? false : true) && !this.f12580h) {
            C13304a.m13373a("BillingClient", "Current client doesn't support extra params for buy intent.");
            C3341g c3341g4 = C3362y.f12650h;
            m38199a(c3341g4);
            return c3341g4;
        } else if (arrayList.size() > 1 && !this.f12587o) {
            C13304a.m13373a("BillingClient", "Current client doesn't support multi-item purchases.");
            C3341g c3341g5 = C3362y.f12663u;
            m38199a(c3341g5);
            return c3341g5;
        } else {
            String str6 = "";
            for (int i = 0; i < arrayList.size(); i++) {
                String valueOf = String.valueOf(str6);
                String valueOf2 = String.valueOf(arrayList.get(i));
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                sb.append(valueOf);
                sb.append(valueOf2);
                String sb2 = sb.toString();
                str6 = sb2;
                if (i < arrayList.size() - 1) {
                    str6 = String.valueOf(sb2).concat(", ");
                }
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(str6).length() + 41 + String.valueOf(m38183b).length());
            sb3.append("Constructing buy intent for ");
            sb3.append(str6);
            sb3.append(", item type: ");
            sb3.append(m38183b);
            C13304a.m13374a("BillingClient");
            if (this.f12580h) {
                Bundle m13375a = C13304a.m13375a(c3339f, this.f12582j, this.f12592t, this.f12574b);
                ArrayList<String> arrayList2 = new ArrayList<>();
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<Integer> arrayList5 = new ArrayList<>();
                int size = arrayList.size();
                int i2 = 0;
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = false;
                while (i2 < size) {
                    C3347k c3347k2 = (C3347k) arrayList.get(i2);
                    if (!c3347k2.m38177h().isEmpty()) {
                        arrayList2.add(c3347k2.m38177h());
                    }
                    try {
                        str3 = new JSONObject(c3347k2.f12618a).optString("offer_id_token");
                    } catch (JSONException e) {
                        str3 = "";
                    }
                    String optString = c3347k2.f12619b.optString("offer_id");
                    int optInt = c3347k2.f12619b.optInt("offer_type");
                    arrayList3.add(str3);
                    z2 |= !TextUtils.isEmpty(str3);
                    arrayList4.add(optString);
                    boolean z5 = z3 | (!TextUtils.isEmpty(optString));
                    arrayList5.add(Integer.valueOf(optInt));
                    z4 |= optInt != 0;
                    i2++;
                    z3 = z5;
                }
                if (!arrayList2.isEmpty()) {
                    m13375a.putStringArrayList("skuDetailsTokens", arrayList2);
                }
                if (z2) {
                    if (!this.f12585m) {
                        C3341g c3341g6 = C3362y.f12651i;
                        m38199a(c3341g6);
                        return c3341g6;
                    }
                    m13375a.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList3);
                }
                if (z3) {
                    m13375a.putStringArrayList("SKU_OFFER_ID_LIST", arrayList4);
                }
                if (z4) {
                    m13375a.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList5);
                }
                if (!TextUtils.isEmpty(c3347k.m38178g())) {
                    m13375a.putString("skuPackageName", c3347k.m38178g());
                    z = true;
                } else {
                    z = false;
                }
                if (!TextUtils.isEmpty(null)) {
                    m13375a.putString("accountName", null);
                }
                if (arrayList.size() > 1) {
                    ArrayList<String> arrayList6 = new ArrayList<>(arrayList.size() - 1);
                    ArrayList<String> arrayList7 = new ArrayList<>(arrayList.size() - 1);
                    for (int i3 = 1; i3 < arrayList.size(); i3++) {
                        arrayList6.add(((C3347k) arrayList.get(i3)).m38184a());
                        arrayList7.add(((C3347k) arrayList.get(i3)).m38183b());
                    }
                    m13375a.putStringArrayList("additionalSkus", arrayList6);
                    m13375a.putStringArrayList("additionalSkuTypes", arrayList7);
                }
                if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                    m13375a.putString("proxyPackage", stringExtra);
                    try {
                        m13375a.putString("proxyPackageVersion", this.f12575c.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException e2) {
                        m13375a.putString("proxyPackageVersion", "package not found");
                    }
                }
                future = m38195a(new CallableC3332aq(this, (!this.f12586n || !z) ? this.f12582j ? 9 : c3339f.f12601h ? 7 : 6 : 15, c3347k, m38183b, c3339f, m13375a), 5000L, null);
                str = "BillingClient";
            } else {
                str4 = "BUY_INTENT";
                if (str5 != null) {
                    future = m38195a(new CallableC3333ar(this, c3339f, c3347k), 5000L, null);
                    str = "BillingClient";
                } else {
                    future = m38195a(new CallableC3352o(this, c3347k, m38183b), 5000L, null);
                    str = "BillingClient";
                }
            }
            try {
                try {
                    try {
                        bundle = (Bundle) future.get(5000L, TimeUnit.MILLISECONDS);
                        str2 = str;
                    } catch (CancellationException | TimeoutException e3) {
                    }
                } catch (CancellationException | TimeoutException e4) {
                }
            } catch (Exception e5) {
            }
            try {
                int m13376a = C13304a.m13376a(bundle, str2);
                String m13371b = C13304a.m13371b(bundle, str2);
                if (m13376a == 0) {
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra(str4, (PendingIntent) bundle.getParcelable(str4));
                    activity.startActivity(intent);
                    return C3362y.f12658p;
                }
                StringBuilder sb4 = new StringBuilder(52);
                sb4.append("Unable to buy item, Error response code: ");
                sb4.append(m13376a);
                C13304a.m13373a(str2, sb4.toString());
                C3341g.C3342a m38191a = C3341g.m38191a();
                m38191a.f12611a = m13376a;
                m38191a.f12612b = m13371b;
                C3341g m38190a = m38191a.m38190a();
                m38199a(m38190a);
                return m38190a;
            } catch (CancellationException | TimeoutException e6) {
                StringBuilder sb5 = new StringBuilder(String.valueOf(str6).length() + 68);
                sb5.append("Time out while launching billing flow: ; for sku: ");
                sb5.append(str6);
                sb5.append("; try to reconnect");
                C13304a.m13373a(str, sb5.toString());
                C3341g c3341g7 = C3362y.f12660r;
                m38199a(c3341g7);
                return c3341g7;
            } catch (Exception e7) {
                StringBuilder sb6 = new StringBuilder(String.valueOf(str6).length() + 69);
                sb6.append("Exception while launching billing flow: ; for sku: ");
                sb6.append(str6);
                sb6.append("; try to reconnect");
                C13304a.m13373a(str, sb6.toString());
                C3341g c3341g8 = C3362y.f12659q;
                m38199a(c3341g8);
                return c3341g8;
            }
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final C3344i.C3345a mo38197a(String str) {
        if (!mo38205a()) {
            return new C3344i.C3345a(C3362y.f12659q, null);
        }
        if (TextUtils.isEmpty(str)) {
            C13304a.m13373a("BillingClient", "Please provide a valid SKU type.");
            return new C3344i.C3345a(C3362y.f12649g, null);
        }
        try {
            return (C3344i.C3345a) m38195a(new CallableC3353p(this, str), 5000L, null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new C3344i.C3345a(C3362y.f12660r, null);
        } catch (Exception e2) {
            return new C3344i.C3345a(C3362y.f12654l, null);
        }
    }

    /* renamed from: a */
    public final C3363z m38196a(String str, List<C3319ad> list) {
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
                    arrayList3.add(((C3319ad) arrayList2.get(i4)).f12538a);
                }
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
                bundle.putString("playBillingLibraryVersion", this.f12574b);
                try {
                    Bundle mo13364a = this.f12583k ? this.f12576d.mo13364a(this.f12575c.getPackageName(), str, bundle, C13304a.m13379a(this.f12579g, this.f12592t, this.f12574b, arrayList2)) : this.f12576d.mo13365a(this.f12575c.getPackageName(), str, bundle);
                    if (mo13364a == null) {
                        C13304a.m13373a("BillingClient", "querySkuDetailsAsync got null sku details list");
                        return new C3363z(4, "Item is unavailable for purchase.", null);
                    } else if (!mo13364a.containsKey("DETAILS_LIST")) {
                        int m13376a = C13304a.m13376a(mo13364a, "BillingClient");
                        String m13371b = C13304a.m13371b(mo13364a, "BillingClient");
                        if (m13376a == 0) {
                            C13304a.m13373a("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                            return new C3363z(6, m13371b, arrayList);
                        }
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(m13376a);
                        C13304a.m13373a("BillingClient", sb.toString());
                        return new C3363z(m13376a, m13371b, arrayList);
                    } else {
                        ArrayList<String> stringArrayList = mo13364a.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            C13304a.m13373a("BillingClient", "querySkuDetailsAsync got null response list");
                            return new C3363z(4, "Item is unavailable for purchase.", null);
                        }
                        for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                            try {
                                C3347k c3347k = new C3347k(stringArrayList.get(i5));
                                String valueOf = String.valueOf(c3347k);
                                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 17);
                                sb2.append("Got sku details: ");
                                sb2.append(valueOf);
                                C13304a.m13374a("BillingClient");
                                arrayList.add(c3347k);
                            } catch (JSONException e) {
                                C13304a.m13373a("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                                return new C3363z(6, "Error trying to decode SkuDetails.", null);
                            }
                        }
                        i = i3;
                    }
                } catch (Exception e2) {
                    String valueOf2 = String.valueOf(e2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 63);
                    sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                    sb3.append(valueOf2);
                    C13304a.m13373a("BillingClient", sb3.toString());
                    return new C3363z(-1, "Service connection is disconnected.", null);
                }
            } else {
                return new C3363z(0, "", arrayList);
            }
        }
    }

    /* renamed from: a */
    public final <T> Future<T> m38195a(Callable<T> callable, long j, Runnable runnable) {
        long j2 = (long) (j * 0.95d);
        if (this.f12593u == null) {
            this.f12593u = Executors.newFixedThreadPool(C13304a.f50539a, new ThreadFactoryC3329an(this));
        }
        try {
            Future<T> submit = this.f12593u.submit(callable);
            this.f12588p.postDelayed(new RunnableC3330ao(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            C13304a.m13373a("BillingClient", sb.toString());
            return null;
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final void mo38203a(C3314a c3314a, AbstractC3334b abstractC3334b) {
        if (!mo38205a()) {
            abstractC3334b.mo28287a(C3362y.f12659q);
        } else if (TextUtils.isEmpty(c3314a.f12535a)) {
            C13304a.m13373a("BillingClient", "Please provide a valid purchase token.");
            abstractC3334b.mo28287a(C3362y.f12653k);
        } else if (!this.f12582j) {
            abstractC3334b.mo28287a(C3362y.f12644b);
        } else if (m38195a(new CallableC3327al(this, c3314a, abstractC3334b), 30000L, new RunnableC3328am(this, abstractC3334b)) != null) {
        } else {
            abstractC3334b.mo28287a(m38193c());
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final void mo38200a(AbstractC3338e abstractC3338e) {
        if (mo38205a()) {
            C13304a.m13374a("BillingClient");
            abstractC3338e.mo28285b(C3362y.f12658p);
            return;
        }
        int i = this.f12573a;
        if (i == 1) {
            C13304a.m13373a("BillingClient", "Client is already in the process of connecting to billing service.");
            abstractC3338e.mo28285b(C3362y.f12646d);
        } else if (i == 3) {
            C13304a.m13373a("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            abstractC3338e.mo28285b(C3362y.f12659q);
        } else {
            this.f12573a = 1;
            C3322ag c3322ag = this.f12589q;
            C3321af c3321af = c3322ag.f12543b;
            Context context = c3322ag.f12542a;
            IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
            if (!c3321af.f12539a) {
                context.registerReceiver(c3321af.f12540b.f12543b, intentFilter);
                c3321af.f12539a = true;
            }
            C13304a.m13374a("BillingClient");
            this.f12591s = new ServiceConnectionC3359v(this, abstractC3338e, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f12575c.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        C13304a.m13373a("BillingClient", "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("playBillingLibraryVersion", this.f12574b);
                        if (this.f12575c.bindService(intent2, this.f12591s, 1)) {
                            C13304a.m13374a("BillingClient");
                            return;
                        }
                        C13304a.m13373a("BillingClient", "Connection to Billing service is blocked.");
                    }
                }
            }
            this.f12573a = 0;
            C13304a.m13374a("BillingClient");
            abstractC3338e.mo28285b(C3362y.f12645c);
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final void mo38198a(C3348l c3348l, AbstractC3350m abstractC3350m) {
        if (!mo38205a()) {
            abstractC3350m.mo28284b(C3362y.f12659q, null);
            return;
        }
        String str = c3348l.f12620a;
        List<String> list = c3348l.f12621b;
        if (TextUtils.isEmpty(str)) {
            C13304a.m13373a("BillingClient", "Please fix the input params. SKU type can't be empty.");
            abstractC3350m.mo28284b(C3362y.f12649g, null);
        } else if (list == null) {
            C13304a.m13373a("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            abstractC3350m.mo28284b(C3362y.f12648f, null);
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                C3318ac c3318ac = new C3318ac(null);
                c3318ac.f12537a = str2;
                if (TextUtils.isEmpty(c3318ac.f12537a)) {
                    throw new IllegalArgumentException("SKU must be set.");
                }
                arrayList.add(new C3319ad(c3318ac.f12537a, null, null));
            }
            if (m38195a(new CallableC3355r(this, str, arrayList, null, abstractC3350m), 30000L, new RunnableC3324ai(this, abstractC3350m)) != null) {
                return;
            }
            abstractC3350m.mo28284b(m38193c(), null);
        }
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: a */
    public final boolean mo38205a() {
        return (this.f12573a != 2 || this.f12576d == null || this.f12591s == null) ? false : true;
    }

    @Override // com.android.billingclient.api.AbstractC3335c
    /* renamed from: b */
    public final void mo38194b() {
        try {
            this.f12590r = null;
            C3322ag c3322ag = this.f12589q;
            C3321af c3321af = c3322ag.f12543b;
            Context context = c3322ag.f12542a;
            if (c3321af.f12539a) {
                context.unregisterReceiver(c3321af.f12540b.f12543b);
                c3321af.f12539a = false;
            } else {
                C13304a.m13373a("BillingBroadcastManager", "Receiver is not registered.");
            }
            ServiceConnectionC3359v serviceConnectionC3359v = this.f12591s;
            if (serviceConnectionC3359v != null) {
                synchronized (serviceConnectionC3359v.f12639a) {
                    serviceConnectionC3359v.f12641c = null;
                    serviceConnectionC3359v.f12640b = true;
                }
            }
            if (this.f12591s != null && this.f12576d != null) {
                C13304a.m13374a("BillingClient");
                this.f12575c.unbindService(this.f12591s);
                this.f12591s = null;
            }
            this.f12576d = null;
            ExecutorService executorService = this.f12593u;
            if (executorService != null) {
                executorService.shutdownNow();
                this.f12593u = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            C13304a.m13373a("BillingClient", sb.toString());
        } finally {
            this.f12573a = 3;
        }
    }

    /* renamed from: c */
    public final C3341g m38193c() {
        int i = this.f12573a;
        return (i == 0 || i == 3) ? C3362y.f12659q : C3362y.f12654l;
    }
}
