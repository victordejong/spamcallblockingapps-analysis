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
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.google.android.gms.internal.f.a;
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
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/d.class */
public final class d extends c {

    /* renamed from: a  reason: collision with root package name */
    int f6974a;

    /* renamed from: b  reason: collision with root package name */
    final String f6975b;

    /* renamed from: c  reason: collision with root package name */
    Context f6976c;

    /* renamed from: d  reason: collision with root package name */
    com.google.android.gms.internal.f.d f6977d;
    boolean e;
    boolean f;
    int g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    private final Handler p;
    private ag q;
    private Context r;
    private v s;
    private boolean t;
    private ExecutorService u;

    private d(Activity activity, boolean z, String str) {
        this(activity.getApplicationContext(), z, new zzaj(), str, null);
    }

    private d(Context context, boolean z, j jVar, String str, String str2) {
        this.f6974a = 0;
        this.p = new Handler(Looper.getMainLooper());
        this.g = 0;
        this.f6975b = str;
        Context applicationContext = context.getApplicationContext();
        this.f6976c = applicationContext;
        this.q = new ag(applicationContext, jVar);
        this.r = context;
        this.t = z;
    }

    private d(String str) {
        this.f6974a = 0;
        this.p = new Handler(Looper.getMainLooper());
        this.g = 0;
        this.f6975b = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(java.lang.String r8, boolean r9, android.content.Context r10, com.android.billingclient.api.j r11) {
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
            java.lang.String r0 = "3.0.3"
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
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.d.<init>(java.lang.String, boolean, android.content.Context, com.android.billingclient.api.j):void");
    }

    private final g a(g gVar) {
        j jVar;
        jVar = this.q.f6946b.f6944c;
        jVar.a(gVar, null);
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ i.a a(d dVar, String str) {
        i.a aVar;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Querying owned items, item type: ".concat(valueOf);
        } else {
            new String("Querying owned items, item type: ");
        }
        a.a("BillingClient");
        ArrayList arrayList = new ArrayList();
        Bundle a2 = a.a(dVar.j, dVar.t, dVar.f6975b);
        String str2 = null;
        while (true) {
            try {
                Bundle a3 = dVar.j ? dVar.f6977d.a(dVar.f6976c.getPackageName(), str, str2, a2) : dVar.f6977d.b(dVar.f6976c.getPackageName(), str, str2);
                g gVar = y.l;
                if (a3 == null) {
                    a.a("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                } else {
                    int a4 = a.a(a3, "BillingClient");
                    String b2 = a.b(a3, "BillingClient");
                    g.a a5 = g.a();
                    a5.f6988a = a4;
                    a5.f6989b = b2;
                    gVar = a5.a();
                    if (a4 != 0) {
                        a.a("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(a4)));
                    } else if (!a3.containsKey("INAPP_PURCHASE_ITEM_LIST") || !a3.containsKey("INAPP_PURCHASE_DATA_LIST") || !a3.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        a.a("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                    } else {
                        ArrayList<String> stringArrayList = a3.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = a3.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = a3.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            a.a("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                        } else if (stringArrayList2 == null) {
                            a.a("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                        } else if (stringArrayList3 == null) {
                            a.a("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                        } else {
                            gVar = y.p;
                        }
                    }
                }
                if (gVar != y.p) {
                    aVar = new i.a(gVar, null);
                    break;
                }
                ArrayList<String> stringArrayList4 = a3.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = a3.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = a3.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList5.size(); i++) {
                    String str3 = stringArrayList5.get(i);
                    String str4 = stringArrayList6.get(i);
                    String valueOf2 = String.valueOf(stringArrayList4.get(i));
                    if (valueOf2.length() != 0) {
                        "Sku is owned: ".concat(valueOf2);
                    } else {
                        new String("Sku is owned: ");
                    }
                    a.a("BillingClient");
                    try {
                        i iVar = new i(str3, str4);
                        if (TextUtils.isEmpty(iVar.c())) {
                            a.a("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(iVar);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        a.a("BillingClient", sb.toString());
                        aVar = new i.a(y.l, null);
                    }
                }
                String string = a3.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                if (valueOf4.length() != 0) {
                    "Continuation token: ".concat(valueOf4);
                } else {
                    new String("Continuation token: ");
                }
                a.a("BillingClient");
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    aVar = new i.a(y.p, arrayList);
                    break;
                }
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf5).length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                a.a("BillingClient", sb2.toString());
                aVar = new i.a(y.q, null);
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(d dVar, Runnable runnable) {
        if (!Thread.interrupted()) {
            dVar.p.post(runnable);
        }
    }

    @Override // com.android.billingclient.api.c
    public final g a(Activity activity, f fVar) {
        Future future;
        Bundle bundle;
        boolean z;
        String str = "BUY_INTENT";
        if (!a()) {
            g gVar = y.q;
            a(gVar);
            return gVar;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(fVar.g);
        k kVar = (k) arrayList.get(0);
        String b2 = kVar.b();
        String str2 = "BillingClient";
        if (!b2.equals("subs") || this.e) {
            String str3 = fVar.f6980c;
            if (str3 != null && !this.f) {
                a.a("BillingClient", "Current client doesn't support subscriptions update.");
                g gVar2 = y.t;
                a(gVar2);
                return gVar2;
            } else if (((!fVar.h && fVar.f6979b == null && fVar.e == null && fVar.f == 0 && !fVar.f6978a) ? false : true) && !this.h) {
                a.a("BillingClient", "Current client doesn't support extra params for buy intent.");
                g gVar3 = y.h;
                a(gVar3);
                return gVar3;
            } else if (arrayList.size() <= 1 || this.o) {
                String str4 = "";
                String str5 = "";
                for (int i = 0; i < arrayList.size(); i++) {
                    String valueOf = String.valueOf(str5);
                    String valueOf2 = String.valueOf(arrayList.get(i));
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                    sb.append(valueOf);
                    sb.append(valueOf2);
                    String sb2 = sb.toString();
                    str5 = sb2;
                    if (i < arrayList.size() - 1) {
                        str5 = String.valueOf(sb2).concat(", ");
                    }
                }
                StringBuilder sb3 = new StringBuilder(String.valueOf(str5).length() + 41 + String.valueOf(b2).length());
                sb3.append("Constructing buy intent for ");
                sb3.append(str5);
                sb3.append(", item type: ");
                sb3.append(b2);
                a.a("BillingClient");
                if (this.h) {
                    Bundle a2 = a.a(fVar, this.j, this.t, this.f6975b);
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    ArrayList<String> arrayList4 = new ArrayList<>();
                    ArrayList<Integer> arrayList5 = new ArrayList<>();
                    int size = arrayList.size();
                    boolean z2 = false;
                    boolean z3 = false;
                    boolean z4 = false;
                    for (int i2 = 0; i2 < size; i2++) {
                        k kVar2 = (k) arrayList.get(i2);
                        if (!kVar2.h().isEmpty()) {
                            arrayList2.add(kVar2.h());
                        }
                        try {
                            str4 = new JSONObject(kVar2.f6995a).optString("offer_id_token");
                        } catch (JSONException e) {
                        }
                        String optString = kVar2.f6996b.optString("offer_id");
                        int optInt = kVar2.f6996b.optInt("offer_type");
                        arrayList3.add(str4);
                        z2 |= !TextUtils.isEmpty(str4);
                        arrayList4.add(optString);
                        z3 |= !TextUtils.isEmpty(optString);
                        arrayList5.add(Integer.valueOf(optInt));
                        z4 |= optInt != 0;
                    }
                    if (!arrayList2.isEmpty()) {
                        a2.putStringArrayList("skuDetailsTokens", arrayList2);
                    }
                    if (z2) {
                        if (!this.m) {
                            g gVar4 = y.i;
                            a(gVar4);
                            return gVar4;
                        }
                        a2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList3);
                    }
                    if (z3) {
                        a2.putStringArrayList("SKU_OFFER_ID_LIST", arrayList4);
                    }
                    if (z4) {
                        a2.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList5);
                    }
                    if (!TextUtils.isEmpty(kVar.g())) {
                        a2.putString("skuPackageName", kVar.g());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!TextUtils.isEmpty(null)) {
                        a2.putString("accountName", null);
                    }
                    if (arrayList.size() > 1) {
                        ArrayList<String> arrayList6 = new ArrayList<>(arrayList.size() - 1);
                        ArrayList<String> arrayList7 = new ArrayList<>(arrayList.size() - 1);
                        for (int i3 = 1; i3 < arrayList.size(); i3++) {
                            arrayList6.add(((k) arrayList.get(i3)).a());
                            arrayList7.add(((k) arrayList.get(i3)).b());
                        }
                        a2.putStringArrayList("additionalSkus", arrayList6);
                        a2.putStringArrayList("additionalSkuTypes", arrayList7);
                    }
                    if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                        String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                        a2.putString("proxyPackage", stringExtra);
                        try {
                            a2.putString("proxyPackageVersion", this.f6976c.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                        } catch (PackageManager.NameNotFoundException e2) {
                            a2.putString("proxyPackageVersion", "package not found");
                        }
                    }
                    future = a(new aq(this, (!this.n || !z) ? this.j ? 9 : fVar.h ? 7 : 6 : 15, kVar, b2, fVar, a2), 5000L, null);
                } else {
                    str = "BUY_INTENT";
                    if (str3 != null) {
                        future = a(new ar(this, fVar, kVar), 5000L, null);
                        str2 = "BillingClient";
                    } else {
                        future = a(new o(this, kVar, b2), 5000L, null);
                        str2 = "BillingClient";
                    }
                }
                try {
                    try {
                        try {
                            bundle = (Bundle) future.get(5000L, TimeUnit.MILLISECONDS);
                        } catch (CancellationException | TimeoutException e3) {
                        }
                    } catch (CancellationException | TimeoutException e4) {
                    }
                } catch (Exception e5) {
                }
                try {
                    int a3 = a.a(bundle, str2);
                    String b3 = a.b(bundle, str2);
                    if (a3 != 0) {
                        StringBuilder sb4 = new StringBuilder(52);
                        sb4.append("Unable to buy item, Error response code: ");
                        sb4.append(a3);
                        a.a(str2, sb4.toString());
                        g.a a4 = g.a();
                        a4.f6988a = a3;
                        a4.f6989b = b3;
                        g a5 = a4.a();
                        a(a5);
                        return a5;
                    }
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra(str, (PendingIntent) bundle.getParcelable(str));
                    activity.startActivity(intent);
                    return y.p;
                } catch (CancellationException | TimeoutException e6) {
                    StringBuilder sb5 = new StringBuilder(String.valueOf(str5).length() + 68);
                    sb5.append("Time out while launching billing flow: ; for sku: ");
                    sb5.append(str5);
                    sb5.append("; try to reconnect");
                    a.a(str2, sb5.toString());
                    g gVar5 = y.r;
                    a(gVar5);
                    return gVar5;
                } catch (Exception e7) {
                    StringBuilder sb6 = new StringBuilder(String.valueOf(str5).length() + 69);
                    sb6.append("Exception while launching billing flow: ; for sku: ");
                    sb6.append(str5);
                    sb6.append("; try to reconnect");
                    a.a(str2, sb6.toString());
                    g gVar6 = y.q;
                    a(gVar6);
                    return gVar6;
                }
            } else {
                a.a("BillingClient", "Current client doesn't support multi-item purchases.");
                g gVar7 = y.u;
                a(gVar7);
                return gVar7;
            }
        } else {
            a.a("BillingClient", "Current client doesn't support subscriptions.");
            g gVar8 = y.s;
            a(gVar8);
            return gVar8;
        }
    }

    @Override // com.android.billingclient.api.c
    public final i.a a(String str) {
        if (!a()) {
            return new i.a(y.q, null);
        }
        if (TextUtils.isEmpty(str)) {
            a.a("BillingClient", "Please provide a valid SKU type.");
            return new i.a(y.g, null);
        }
        try {
            return (i.a) a(new p(this, str), 5000L, null).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new i.a(y.r, null);
        } catch (Exception e2) {
            return new i.a(y.l, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final z a(String str, List<ad> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(list.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(((ad) arrayList2.get(i3)).f6941a);
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.f6975b);
            try {
                Bundle a2 = this.k ? this.f6977d.a(this.f6976c.getPackageName(), str, bundle, a.a(this.g, this.t, this.f6975b, arrayList2)) : this.f6977d.a(this.f6976c.getPackageName(), str, bundle);
                if (a2 == null) {
                    a.a("BillingClient", "querySkuDetailsAsync got null sku details list");
                    return new z(4, "Item is unavailable for purchase.", null);
                } else if (!a2.containsKey("DETAILS_LIST")) {
                    int a3 = a.a(a2, "BillingClient");
                    String b2 = a.b(a2, "BillingClient");
                    if (a3 != 0) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append("getSkuDetails() failed. Response code: ");
                        sb.append(a3);
                        a.a("BillingClient", sb.toString());
                        return new z(a3, b2, arrayList);
                    }
                    a.a("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new z(6, b2, arrayList);
                } else {
                    ArrayList<String> stringArrayList = a2.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList != null) {
                        for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                            try {
                                k kVar = new k(stringArrayList.get(i4));
                                String valueOf = String.valueOf(kVar);
                                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 17);
                                sb2.append("Got sku details: ");
                                sb2.append(valueOf);
                                a.a("BillingClient");
                                arrayList.add(kVar);
                            } catch (JSONException e) {
                                a.a("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                                return new z(6, "Error trying to decode SkuDetails.", null);
                            }
                        }
                        i = i2;
                    } else {
                        a.a("BillingClient", "querySkuDetailsAsync got null response list");
                        return new z(4, "Item is unavailable for purchase.", null);
                    }
                }
            } catch (Exception e2) {
                String valueOf2 = String.valueOf(e2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 63);
                sb3.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                sb3.append(valueOf2);
                a.a("BillingClient", sb3.toString());
                return new z(-1, "Service connection is disconnected.", null);
            }
        }
        return new z(0, "", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> Future<T> a(Callable<T> callable, long j, Runnable runnable) {
        long j2 = (long) (j * 0.95d);
        if (this.u == null) {
            this.u = Executors.newFixedThreadPool(a.f28879a, new an(this));
        }
        try {
            Future<T> submit = this.u.submit(callable);
            this.p.postDelayed(new ao(this, submit, runnable), j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            a.a("BillingClient", sb.toString());
            return null;
        }
    }

    @Override // com.android.billingclient.api.c
    public final void a(a aVar, b bVar) {
        if (!a()) {
            bVar.a(y.q);
        } else if (TextUtils.isEmpty(aVar.f6938a)) {
            a.a("BillingClient", "Please provide a valid purchase token.");
            bVar.a(y.k);
        } else if (!this.j) {
            bVar.a(y.f7021b);
        } else if (a(new al(this, aVar, bVar), 30000L, new am(this, bVar)) == null) {
            bVar.a(c());
        }
    }

    @Override // com.android.billingclient.api.c
    public final void a(e eVar) {
        if (a()) {
            a.a("BillingClient");
            eVar.b(y.p);
            return;
        }
        int i = this.f6974a;
        if (i == 1) {
            a.a("BillingClient", "Client is already in the process of connecting to billing service.");
            eVar.b(y.f7023d);
        } else if (i == 3) {
            a.a("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            eVar.b(y.q);
        } else {
            this.f6974a = 1;
            ag agVar = this.q;
            af afVar = agVar.f6946b;
            Context context = agVar.f6945a;
            IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
            if (!afVar.f6942a) {
                context.registerReceiver(afVar.f6943b.f6946b, intentFilter);
                afVar.f6942a = true;
            }
            a.a("BillingClient");
            this.s = new v(this, eVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f6976c.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        a.a("BillingClient", "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("playBillingLibraryVersion", this.f6975b);
                        if (this.f6976c.bindService(intent2, this.s, 1)) {
                            a.a("BillingClient");
                            return;
                        }
                        a.a("BillingClient", "Connection to Billing service is blocked.");
                    }
                }
            }
            this.f6974a = 0;
            a.a("BillingClient");
            eVar.b(y.f7022c);
        }
    }

    @Override // com.android.billingclient.api.c
    public final void a(l lVar, m mVar) {
        if (!a()) {
            mVar.b(y.q, null);
            return;
        }
        String str = lVar.f6997a;
        List<String> list = lVar.f6998b;
        if (TextUtils.isEmpty(str)) {
            a.a("BillingClient", "Please fix the input params. SKU type can't be empty.");
            mVar.b(y.g, null);
        } else if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                ac acVar = new ac(null);
                acVar.f6940a = str2;
                if (!TextUtils.isEmpty(acVar.f6940a)) {
                    arrayList.add(new ad(acVar.f6940a, null, null));
                } else {
                    throw new IllegalArgumentException("SKU must be set.");
                }
            }
            if (a(new r(this, str, arrayList, null, mVar), 30000L, new ai(this, mVar)) == null) {
                mVar.b(c(), null);
            }
        } else {
            a.a("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            mVar.b(y.f, null);
        }
    }

    @Override // com.android.billingclient.api.c
    public final boolean a() {
        return (this.f6974a != 2 || this.f6977d == null || this.s == null) ? false : true;
    }

    @Override // com.android.billingclient.api.c
    public final void b() {
        try {
            this.r = null;
            ag agVar = this.q;
            af afVar = agVar.f6946b;
            Context context = agVar.f6945a;
            if (afVar.f6942a) {
                context.unregisterReceiver(afVar.f6943b.f6946b);
                afVar.f6942a = false;
            } else {
                a.a("BillingBroadcastManager", "Receiver is not registered.");
            }
            v vVar = this.s;
            if (vVar != null) {
                synchronized (vVar.f7016a) {
                    vVar.f7018c = null;
                    vVar.f7017b = true;
                }
            }
            if (!(this.s == null || this.f6977d == null)) {
                a.a("BillingClient");
                this.f6976c.unbindService(this.s);
                this.s = null;
            }
            this.f6977d = null;
            ExecutorService executorService = this.u;
            if (executorService != null) {
                executorService.shutdownNow();
                this.u = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            a.a("BillingClient", sb.toString());
        } finally {
            this.f6974a = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g c() {
        int i = this.f6974a;
        return (i == 0 || i == 3) ? y.q : y.l;
    }
}
