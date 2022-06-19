package p193e.p1432d.p1433a.p1434a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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
import com.google.android.gms.internal.play_billing.zzp;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1433a.p1434a.C22086n;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16984c;
import q3.a.w;
import s1.z.c.l;
/* renamed from: e.d.a.a.e */
/* loaded from: classes-dex2jar.jar:e/d/a/a/e.class */
public class C22068e extends AbstractC22066d {

    /* renamed from: a */
    public volatile int f61331a;

    /* renamed from: b */
    public final String f61332b;

    /* renamed from: c */
    public final Handler f61333c;

    /* renamed from: d */
    public volatile C22067d0 f61334d;

    /* renamed from: e */
    public Context f61335e;

    /* renamed from: f */
    public volatile zzd f61336f;

    /* renamed from: g */
    public volatile ServiceConnectionC22103z f61337g;

    /* renamed from: h */
    public boolean f61338h;

    /* renamed from: i */
    public boolean f61339i;

    /* renamed from: j */
    public int f61340j;

    /* renamed from: k */
    public boolean f61341k;

    /* renamed from: l */
    public boolean f61342l;

    /* renamed from: m */
    public boolean f61343m;

    /* renamed from: n */
    public boolean f61344n;

    /* renamed from: o */
    public boolean f61345o;

    /* renamed from: p */
    public boolean f61346p;

    /* renamed from: q */
    public boolean f61347q;

    /* renamed from: r */
    public boolean f61348r;

    /* renamed from: s */
    public boolean f61349s;

    /* renamed from: t */
    public ExecutorService f61350t;

    public C22068e(String str, boolean z, Context context, AbstractC22093q abstractC22093q) {
        String str2;
        try {
            str2 = (String) Class.forName("e.d.a.b.a").getField("VERSION_NAME").get(null);
        } catch (Exception e) {
            str2 = "4.0.0";
        }
        this.f61331a = 0;
        this.f61333c = new Handler(Looper.getMainLooper());
        this.f61340j = 0;
        this.f61332b = str2;
        Context applicationContext = context.getApplicationContext();
        this.f61335e = applicationContext;
        this.f61334d = new C22067d0(applicationContext, abstractC22093q);
        this.f61349s = z;
    }

    /* renamed from: p */
    public static C22086n.C22087a m8806p(C22068e c22068e, String str) {
        C22086n.C22087a c22087a;
        String valueOf = String.valueOf(str);
        zza.zzj("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle zzf = zza.zzf(c22068e.f61343m, c22068e.f61349s, c22068e.f61332b);
        String str2 = null;
        while (true) {
            try {
                Bundle zzj = c22068e.f61343m ? c22068e.f61336f.zzj(9, c22068e.f61335e.getPackageName(), str, str2, zzf) : c22068e.f61336f.zzi(3, c22068e.f61335e.getPackageName(), str, str2);
                C22080k c22080k = C22061a0.f61317j;
                if (zzj == null) {
                    zza.zzk("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                } else {
                    int zza = zza.zza(zzj, "BillingClient");
                    String zzh = zza.zzh(zzj, "BillingClient");
                    C22080k c22080k2 = new C22080k();
                    c22080k2.f61377a = zza;
                    c22080k2.f61378b = zzh;
                    if (zza != 0) {
                        zza.zzk("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(zza)));
                        c22080k = c22080k2;
                    } else if (!zzj.containsKey("INAPP_PURCHASE_ITEM_LIST") || !zzj.containsKey("INAPP_PURCHASE_DATA_LIST") || !zzj.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        zza.zzk("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                    } else {
                        ArrayList<String> stringArrayList = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            zza.zzk("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                        } else if (stringArrayList2 == null) {
                            zza.zzk("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                        } else if (stringArrayList3 == null) {
                            zza.zzk("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                        } else {
                            c22080k = C22061a0.f61318k;
                        }
                    }
                }
                if (c22080k != C22061a0.f61318k) {
                    c22087a = new C22086n.C22087a(c22080k, null);
                    break;
                }
                ArrayList<String> stringArrayList4 = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList5.size(); i++) {
                    String str3 = stringArrayList5.get(i);
                    String str4 = stringArrayList6.get(i);
                    String valueOf2 = String.valueOf(stringArrayList4.get(i));
                    zza.zzj("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        C22086n c22086n = new C22086n(str3, str4);
                        if (TextUtils.isEmpty(c22086n.m8803a())) {
                            zza.zzk("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(c22086n);
                    } catch (JSONException e) {
                        String valueOf3 = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 48);
                        sb.append("Got an exception trying to decode the purchase: ");
                        sb.append(valueOf3);
                        zza.zzk("BillingClient", sb.toString());
                        c22087a = new C22086n.C22087a(C22061a0.f61317j, null);
                    }
                }
                String string = zzj.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(string);
                zza.zzj("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    c22087a = new C22086n.C22087a(C22061a0.f61318k, arrayList);
                    break;
                }
            } catch (Exception e2) {
                String valueOf5 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(valueOf5.length() + 57);
                sb2.append("Got exception trying to get purchases: ");
                sb2.append(valueOf5);
                sb2.append("; try to reconnect");
                zza.zzk("BillingClient", sb2.toString());
                c22087a = new C22086n.C22087a(C22061a0.f61319l, null);
            }
        }
        return c22087a;
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: a */
    public final void mo8821a(final C22062b c22062b, final AbstractC22064c abstractC22064c) {
        if (!mo8817e()) {
            C22080k c22080k = C22061a0.f61319l;
            w wVar = ((C22070f) abstractC22064c).f61352a;
            l.d(c22080k, "it");
            wVar.K(c22080k);
        } else if (TextUtils.isEmpty(c22062b.f61324a)) {
            zza.zzk("BillingClient", "Please provide a valid purchase token.");
            C22080k c22080k2 = C22061a0.f61316i;
            w wVar2 = ((C22070f) abstractC22064c).f61352a;
            l.d(c22080k2, "it");
            wVar2.K(c22080k2);
        } else if (!this.f61343m) {
            C22080k c22080k3 = C22061a0.f61309b;
            w wVar3 = ((C22070f) abstractC22064c).f61352a;
            l.d(c22080k3, "it");
            wVar3.K(c22080k3);
        } else if (m8807o(new Callable() { // from class: e.d.a.a.f0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                C22068e c22068e = C22068e.this;
                C22062b c22062b2 = c22062b;
                AbstractC22064c abstractC22064c2 = abstractC22064c;
                Objects.requireNonNull(c22068e);
                try {
                    Bundle zzd = c22068e.f61336f.zzd(9, c22068e.f61335e.getPackageName(), c22062b2.f61324a, zza.zzb(c22062b2, c22068e.f61332b));
                    int zza = zza.zza(zzd, "BillingClient");
                    String zzh = zza.zzh(zzd, "BillingClient");
                    C22080k c22080k4 = new C22080k();
                    c22080k4.f61377a = zza;
                    c22080k4.f61378b = zzh;
                    w wVar4 = ((C22070f) abstractC22064c2).f61352a;
                    l.d(c22080k4, "it");
                    wVar4.K(c22080k4);
                    return null;
                } catch (Exception e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 32);
                    sb.append("Error acknowledge purchase; ex: ");
                    sb.append(valueOf);
                    zza.zzk("BillingClient", sb.toString());
                    C22080k c22080k5 = C22061a0.f61319l;
                    w wVar5 = ((C22070f) abstractC22064c2).f61352a;
                    l.d(c22080k5, "it");
                    wVar5.K(c22080k5);
                    return null;
                }
            }
        }, 30000L, new Runnable() { // from class: e.d.a.a.e0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC22064c abstractC22064c2 = AbstractC22064c.this;
                C22080k c22080k4 = C22061a0.f61320m;
                w wVar4 = ((C22070f) abstractC22064c2).f61352a;
                l.d(c22080k4, "it");
                wVar4.K(c22080k4);
            }
        }, m8811k()) != null) {
        } else {
            C22080k m8809m = m8809m();
            w wVar4 = ((C22070f) abstractC22064c).f61352a;
            l.d(m8809m, "it");
            wVar4.K(m8809m);
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: b */
    public final void mo8820b(final C22082l c22082l, final AbstractC22084m abstractC22084m) {
        if (!mo8817e()) {
            ((C16984c) abstractC22084m).mo8804a(C22061a0.f61319l, c22082l.f61381a);
        } else if (m8807o(new Callable() { // from class: e.d.a.a.g0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                String str;
                C22068e c22068e = C22068e.this;
                C22082l c22082l2 = c22082l;
                AbstractC22084m abstractC22084m2 = abstractC22084m;
                Objects.requireNonNull(c22068e);
                String str2 = c22082l2.f61381a;
                try {
                    String valueOf = String.valueOf(str2);
                    zza.zzj("BillingClient", valueOf.length() != 0 ? "Consuming purchase with token: ".concat(valueOf) : new String("Consuming purchase with token: "));
                    if (c22068e.f61343m) {
                        Bundle zze = c22068e.f61336f.zze(9, c22068e.f61335e.getPackageName(), str2, zza.zzc(c22082l2, c22068e.f61343m, c22068e.f61332b));
                        i = zze.getInt("RESPONSE_CODE");
                        str = zza.zzh(zze, "BillingClient");
                    } else {
                        i = c22068e.f61336f.zza(3, c22068e.f61335e.getPackageName(), str2);
                        str = "";
                    }
                    C22080k c22080k = new C22080k();
                    c22080k.f61377a = i;
                    c22080k.f61378b = str;
                    if (i == 0) {
                        zza.zzj("BillingClient", "Successfully consumed purchase.");
                        abstractC22084m2.mo8804a(c22080k, str2);
                        return null;
                    }
                    StringBuilder sb = new StringBuilder(63);
                    sb.append("Error consuming purchase with token. Response code: ");
                    sb.append(i);
                    zza.zzk("BillingClient", sb.toString());
                    abstractC22084m2.mo8804a(c22080k, str2);
                    return null;
                } catch (Exception e) {
                    String valueOf2 = String.valueOf(e);
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 30);
                    sb2.append("Error consuming purchase; ex: ");
                    sb2.append(valueOf2);
                    zza.zzk("BillingClient", sb2.toString());
                    abstractC22084m2.mo8804a(C22061a0.f61319l, str2);
                    return null;
                }
            }
        }, 30000L, new Runnable() { // from class: e.d.a.a.l0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC22084m.this.mo8804a(C22061a0.f61320m, c22082l.f61381a);
            }
        }, m8811k()) != null) {
        } else {
            ((C16984c) abstractC22084m).mo8804a(m8809m(), c22082l.f61381a);
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: c */
    public final void mo8819c() {
        try {
            this.f61334d.m8822a();
            if (this.f61337g != null) {
                ServiceConnectionC22103z serviceConnectionC22103z = this.f61337g;
                synchronized (serviceConnectionC22103z.f61416a) {
                    serviceConnectionC22103z.f61418c = null;
                    serviceConnectionC22103z.f61417b = true;
                }
            }
            if (this.f61337g != null && this.f61336f != null) {
                zza.zzj("BillingClient", "Unbinding from service.");
                this.f61335e.unbindService(this.f61337g);
                this.f61337g = null;
            }
            this.f61336f = null;
            ExecutorService executorService = this.f61350t;
            if (executorService != null) {
                executorService.shutdownNow();
                this.f61350t = null;
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 48);
            sb.append("There was an exception while ending connection: ");
            sb.append(valueOf);
            zza.zzk("BillingClient", sb.toString());
        } finally {
            this.f61331a = 3;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: d */
    public final C22080k mo8818d(String str) {
        boolean z;
        if (!mo8817e()) {
            return C22061a0.f61319l;
        }
        switch (str.hashCode()) {
            case -422092961:
                if (str.equals("subscriptionsUpdate")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 96321:
                if (str.equals("aaa")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 97314:
                if (str.equals("bbb")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 98307:
                if (str.equals("ccc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99300:
                if (str.equals("ddd")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 100293:
                if (str.equals("eee")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 207616302:
                if (str.equals("priceChangeConfirmation")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 292218239:
                if (str.equals("inAppItemsOnVr")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1219490065:
                if (str.equals("subscriptionsOnVr")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1987365622:
                if (str.equals("subscriptions")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return this.f61338h ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
                return this.f61339i ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
                return m8808n("inapp");
            case true:
                return m8808n("subs");
            case true:
                return this.f61342l ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
                return this.f61345o ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
                return this.f61347q ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
                return this.f61346p ? C22061a0.f61318k : C22061a0.f61315h;
            case true:
            case true:
                return this.f61348r ? C22061a0.f61318k : C22061a0.f61315h;
            default:
                zza.zzk("BillingClient", str.length() != 0 ? "Unsupported feature: ".concat(str) : new String("Unsupported feature: "));
                return C22061a0.f61323p;
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: e */
    public final boolean mo8817e() {
        return (this.f61331a != 2 || this.f61336f == null || this.f61337g == null) ? false : true;
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: f */
    public final C22080k mo8816f(Activity activity, final C22078j c22078j) {
        Future future;
        String str;
        Bundle bundle;
        String str2;
        boolean z;
        String str3;
        if (!mo8817e()) {
            C22080k c22080k = C22061a0.f61319l;
            m8810l(c22080k);
            return c22080k;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(c22078j.f61371f);
        final C22095r c22095r = (C22095r) arrayList.get(0);
        final String m8800b = c22095r.m8800b();
        if (m8800b.equals("subs") && !this.f61338h) {
            zza.zzk("BillingClient", "Current client doesn't support subscriptions.");
            C22080k c22080k2 = C22061a0.f61321n;
            m8810l(c22080k2);
            return c22080k2;
        }
        if (((!c22078j.f61372g && c22078j.f61367b == null && c22078j.f61369d == null && c22078j.f61370e == 0 && !c22078j.f61366a) ? false : true) && !this.f61341k) {
            zza.zzk("BillingClient", "Current client doesn't support extra params for buy intent.");
            C22080k c22080k3 = C22061a0.f61314g;
            m8810l(c22080k3);
            return c22080k3;
        } else if (arrayList.size() > 1 && !this.f61348r) {
            zza.zzk("BillingClient", "Current client doesn't support multi-item purchases.");
            C22080k c22080k4 = C22061a0.f61322o;
            m8810l(c22080k4);
            return c22080k4;
        } else {
            String str4 = "";
            for (int i = 0; i < arrayList.size(); i++) {
                String valueOf = String.valueOf(str4);
                String valueOf2 = String.valueOf(arrayList.get(i));
                String m8618h = C22128a.m8618h(new StringBuilder(valueOf.length() + valueOf2.length()), valueOf, valueOf2);
                str4 = m8618h;
                if (i < arrayList.size() - 1) {
                    str4 = String.valueOf(m8618h).concat(", ");
                }
            }
            zza.zzj("BillingClient", C22128a.m8606k(new StringBuilder(String.valueOf(str4).length() + 41 + m8800b.length()), "Constructing buy intent for ", str4, ", item type: ", m8800b));
            if (this.f61341k) {
                final Bundle zze = zza.zze(c22078j, this.f61343m, this.f61349s, this.f61332b);
                ArrayList<String> arrayList2 = new ArrayList<>();
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<Integer> arrayList5 = new ArrayList<>();
                ArrayList<String> arrayList6 = new ArrayList<>();
                int size = arrayList.size();
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = false;
                boolean z5 = false;
                int i2 = 0;
                while (i2 < size) {
                    C22095r c22095r2 = (C22095r) arrayList.get(i2);
                    if (!c22095r2.f61404b.optString("skuDetailsToken").isEmpty()) {
                        arrayList2.add(c22095r2.f61404b.optString("skuDetailsToken"));
                    }
                    try {
                        str3 = new JSONObject(c22095r2.f61403a).optString("offer_id_token");
                    } catch (JSONException e) {
                        str3 = "";
                    }
                    String optString = c22095r2.f61404b.optString("offer_id");
                    int optInt = c22095r2.f61404b.optInt("offer_type");
                    String optString2 = c22095r2.f61404b.optString("serializedDocid");
                    arrayList3.add(str3);
                    z2 |= !TextUtils.isEmpty(str3);
                    arrayList4.add(optString);
                    boolean z6 = z3 | (!TextUtils.isEmpty(optString));
                    arrayList5.add(Integer.valueOf(optInt));
                    z4 |= optInt != 0;
                    z5 |= !TextUtils.isEmpty(optString2);
                    arrayList6.add(optString2);
                    i2++;
                    z3 = z6;
                }
                if (!arrayList2.isEmpty()) {
                    zze.putStringArrayList("skuDetailsTokens", arrayList2);
                }
                if (z2) {
                    if (!this.f61346p) {
                        C22080k c22080k5 = C22061a0.f61315h;
                        m8810l(c22080k5);
                        return c22080k5;
                    }
                    zze.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList3);
                }
                if (z3) {
                    zze.putStringArrayList("SKU_OFFER_ID_LIST", arrayList4);
                }
                if (z4) {
                    zze.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList5);
                }
                if (z5) {
                    zze.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList6);
                }
                if (!TextUtils.isEmpty(c22095r.m8799c())) {
                    zze.putString("skuPackageName", c22095r.m8799c());
                    z = true;
                } else {
                    z = false;
                }
                if (!TextUtils.isEmpty(null)) {
                    zze.putString("accountName", null);
                }
                if (arrayList.size() > 1) {
                    ArrayList<String> arrayList7 = new ArrayList<>(arrayList.size() - 1);
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayList.size() - 1);
                    for (int i3 = 1; i3 < arrayList.size(); i3++) {
                        arrayList7.add(((C22095r) arrayList.get(i3)).m8801a());
                        arrayList8.add(((C22095r) arrayList.get(i3)).m8800b());
                    }
                    zze.putStringArrayList("additionalSkus", arrayList7);
                    zze.putStringArrayList("additionalSkuTypes", arrayList8);
                }
                if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                    zze.putString("proxyPackage", stringExtra);
                    try {
                        zze.putString("proxyPackageVersion", this.f61335e.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException e2) {
                        zze.putString("proxyPackageVersion", "package not found");
                    }
                }
                final int i4 = (!this.f61347q || !z) ? this.f61343m ? 9 : c22078j.f61372g ? 7 : 6 : 15;
                future = m8807o(new Callable() { // from class: e.d.a.a.p0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        C22068e c22068e = C22068e.this;
                        int i5 = i4;
                        C22095r c22095r3 = c22095r;
                        return c22068e.f61336f.zzg(i5, c22068e.f61335e.getPackageName(), c22095r3.m8801a(), m8800b, null, zze);
                    }
                }, 5000L, null, this.f61333c);
                str = "BillingClient";
            } else {
                str = "BillingClient";
                future = m8807o(new Callable() { // from class: e.d.a.a.h0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        C22068e c22068e = C22068e.this;
                        C22095r c22095r3 = c22095r;
                        return c22068e.f61336f.zzf(3, c22068e.f61335e.getPackageName(), c22095r3.m8801a(), m8800b, null);
                    }
                }, 5000L, null, this.f61333c);
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
                int zza = zza.zza(bundle, str2);
                String zzh = zza.zzh(bundle, str2);
                if (zza == 0) {
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                    activity.startActivity(intent);
                    return C22061a0.f61318k;
                }
                StringBuilder sb = new StringBuilder(52);
                sb.append("Unable to buy item, Error response code: ");
                sb.append(zza);
                zza.zzk(str2, sb.toString());
                C22080k c22080k6 = new C22080k();
                c22080k6.f61377a = zza;
                c22080k6.f61378b = zzh;
                m8810l(c22080k6);
                return c22080k6;
            } catch (CancellationException | TimeoutException e6) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str4).length() + 68);
                sb2.append("Time out while launching billing flow: ; for sku: ");
                sb2.append(str4);
                sb2.append("; try to reconnect");
                zza.zzk(str, sb2.toString());
                C22080k c22080k7 = C22061a0.f61320m;
                m8810l(c22080k7);
                return c22080k7;
            } catch (Exception e7) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(str4).length() + 69);
                sb3.append("Exception while launching billing flow: ; for sku: ");
                sb3.append(str4);
                sb3.append("; try to reconnect");
                zza.zzk(str, sb3.toString());
                C22080k c22080k8 = C22061a0.f61319l;
                m8810l(c22080k8);
                return c22080k8;
            }
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: g */
    public final C22086n.C22087a mo8815g(String str) {
        if (!mo8817e()) {
            return new C22086n.C22087a(C22061a0.f61319l, null);
        }
        if (TextUtils.isEmpty(str)) {
            zza.zzk("BillingClient", "Please provide a valid SKU type.");
            return new C22086n.C22087a(C22061a0.f61313f, null);
        }
        try {
            return (C22086n.C22087a) m8807o(new CallableC22094q0(this, str), 5000L, null, this.f61333c).get(5000L, TimeUnit.MILLISECONDS);
        } catch (CancellationException | TimeoutException e) {
            return new C22086n.C22087a(C22061a0.f61320m, null);
        } catch (Exception e2) {
            return new C22086n.C22087a(C22061a0.f61317j, null);
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: h */
    public void mo8814h(String str, final AbstractC22089o abstractC22089o) {
        if (!mo8817e()) {
            ((C22072g) abstractC22089o).m8805a(C22061a0.f61319l, zzp.zzg());
        } else if (TextUtils.isEmpty(str)) {
            zza.zzk("BillingClient", "Please provide a valid SKU type.");
            ((C22072g) abstractC22089o).m8805a(C22061a0.f61313f, zzp.zzg());
        } else if (m8807o(new CallableC22099v(this, str, abstractC22089o), 30000L, new Runnable() { // from class: e.d.a.a.m0
            @Override // java.lang.Runnable
            public final void run() {
                ((C22072g) AbstractC22089o.this).m8805a(C22061a0.f61320m, zzp.zzg());
            }
        }, m8811k()) != null) {
        } else {
            ((C22072g) abstractC22089o).m8805a(m8809m(), zzp.zzg());
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: i */
    public final void mo8813i(C22096s c22096s, final AbstractC22097t abstractC22097t) {
        if (!mo8817e()) {
            abstractC22097t.onSkuDetailsResponse(C22061a0.f61319l, null);
            return;
        }
        final String str = c22096s.f61405a;
        List<String> list = c22096s.f61406b;
        if (TextUtils.isEmpty(str)) {
            zza.zzk("BillingClient", "Please fix the input params. SKU type can't be empty.");
            abstractC22097t.onSkuDetailsResponse(C22061a0.f61313f, null);
        } else if (list == null) {
            zza.zzk("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            abstractC22097t.onSkuDetailsResponse(C22061a0.f61312e, null);
        } else {
            final ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                if (TextUtils.isEmpty(str2)) {
                    throw new IllegalArgumentException("SKU must be set.");
                }
                arrayList.add(new C22063b0(str2));
            }
            if (m8807o(new Callable() { // from class: e.d.a.a.j0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    String str3;
                    int i;
                    Exception e;
                    Bundle bundle;
                    C22068e c22068e = C22068e.this;
                    String str4 = str;
                    List list2 = arrayList;
                    AbstractC22097t abstractC22097t2 = abstractC22097t;
                    Objects.requireNonNull(c22068e);
                    ArrayList arrayList2 = new ArrayList();
                    int size = list2.size();
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= size) {
                            str3 = "";
                            i = 0;
                            break;
                        }
                        int i4 = i3 + 20;
                        ArrayList arrayList3 = new ArrayList(list2.subList(i3, i4 > size ? size : i4));
                        ArrayList<String> arrayList4 = new ArrayList<>();
                        int size2 = arrayList3.size();
                        for (int i5 = 0; i5 < size2; i5++) {
                            arrayList4.add(((C22063b0) arrayList3.get(i5)).f61325a);
                        }
                        Bundle bundle2 = new Bundle();
                        bundle2.putStringArrayList("ITEM_ID_LIST", arrayList4);
                        bundle2.putString("playBillingLibraryVersion", c22068e.f61332b);
                        try {
                            if (c22068e.f61344n) {
                                try {
                                    bundle = c22068e.f61336f.zzl(10, c22068e.f61335e.getPackageName(), str4, bundle2, zza.zzd(c22068e.f61340j, c22068e.f61349s, c22068e.f61332b, null, arrayList3));
                                } catch (Exception e2) {
                                    e = e2;
                                    String valueOf = String.valueOf(e);
                                    StringBuilder sb = new StringBuilder(valueOf.length() + 63);
                                    sb.append("querySkuDetailsAsync got a remote exception (try to reconnect).");
                                    sb.append(valueOf);
                                    zza.zzk("BillingClient", sb.toString());
                                    i = -1;
                                    str3 = "Service connection is disconnected.";
                                    arrayList2 = null;
                                    C22080k c22080k2 = new C22080k();
                                    c22080k2.f61377a = i;
                                    c22080k2.f61378b = str3;
                                    abstractC22097t2.onSkuDetailsResponse(c22080k2, arrayList2);
                                    return null;
                                }
                            } else {
                                bundle = c22068e.f61336f.zzk(3, c22068e.f61335e.getPackageName(), str4, bundle2);
                            }
                            if (bundle == null) {
                                zza.zzk("BillingClient", "querySkuDetailsAsync got null sku details list");
                                break;
                            } else if (!bundle.containsKey("DETAILS_LIST")) {
                                i = zza.zza(bundle, "BillingClient");
                                str3 = zza.zzh(bundle, "BillingClient");
                                if (i != 0) {
                                    StringBuilder sb2 = new StringBuilder(50);
                                    sb2.append("getSkuDetails() failed. Response code: ");
                                    sb2.append(i);
                                    zza.zzk("BillingClient", sb2.toString());
                                } else {
                                    zza.zzk("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                                    i = 6;
                                }
                            } else {
                                ArrayList<String> stringArrayList = bundle.getStringArrayList("DETAILS_LIST");
                                if (stringArrayList == null) {
                                    zza.zzk("BillingClient", "querySkuDetailsAsync got null response list");
                                    break;
                                }
                                for (int i6 = 0; i6 < stringArrayList.size(); i6++) {
                                    try {
                                        C22095r c22095r = new C22095r(stringArrayList.get(i6));
                                        String valueOf2 = String.valueOf(c22095r);
                                        StringBuilder sb3 = new StringBuilder(valueOf2.length() + 17);
                                        sb3.append("Got sku details: ");
                                        sb3.append(valueOf2);
                                        zza.zzj("BillingClient", sb3.toString());
                                        arrayList2.add(c22095r);
                                    } catch (JSONException e3) {
                                        zza.zzk("BillingClient", "Got a JSON exception trying to decode SkuDetails.");
                                        str3 = "Error trying to decode SkuDetails.";
                                        i = 6;
                                    }
                                }
                                i2 = i4;
                            }
                        } catch (Exception e4) {
                            e = e4;
                        }
                    }
                    str3 = "Item is unavailable for purchase.";
                    i = 4;
                    arrayList2 = null;
                    C22080k c22080k22 = new C22080k();
                    c22080k22.f61377a = i;
                    c22080k22.f61378b = str3;
                    abstractC22097t2.onSkuDetailsResponse(c22080k22, arrayList2);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: e.d.a.a.n0
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC22097t.this.onSkuDetailsResponse(C22061a0.f61320m, null);
                }
            }, m8811k()) != null) {
                return;
            }
            abstractC22097t.onSkuDetailsResponse(m8809m(), null);
        }
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22066d
    /* renamed from: j */
    public final void mo8812j(AbstractC22076i abstractC22076i) {
        ServiceInfo serviceInfo;
        if (mo8817e()) {
            zza.zzj("BillingClient", "Service connection is valid. No need to re-initialize.");
            abstractC22076i.onBillingSetupFinished(C22061a0.f61318k);
        } else if (this.f61331a == 1) {
            zza.zzk("BillingClient", "Client is already in the process of connecting to billing service.");
            abstractC22076i.onBillingSetupFinished(C22061a0.f61311d);
        } else if (this.f61331a == 3) {
            zza.zzk("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            abstractC22076i.onBillingSetupFinished(C22061a0.f61319l);
        } else {
            this.f61331a = 1;
            C22067d0 c22067d0 = this.f61334d;
            C22065c0 c22065c0 = c22067d0.f61330b;
            Context context = c22067d0.f61329a;
            IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
            if (!c22065c0.f61327b) {
                context.registerReceiver(c22065c0.f61328c.f61330b, intentFilter);
                c22065c0.f61327b = true;
            }
            zza.zzj("BillingClient", "Starting in-app billing setup.");
            this.f61337g = new ServiceConnectionC22103z(this, abstractC22076i);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f61335e.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null) {
                    zza.zzk("BillingClient", "The device doesn't have valid Play Store.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f61332b);
                    if (this.f61335e.bindService(intent2, this.f61337g, 1)) {
                        zza.zzj("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    zza.zzk("BillingClient", "Connection to Billing service is blocked.");
                }
            }
            this.f61331a = 0;
            zza.zzj("BillingClient", "Billing service unavailable on device.");
            abstractC22076i.onBillingSetupFinished(C22061a0.f61310c);
        }
    }

    /* renamed from: k */
    public final Handler m8811k() {
        return Looper.myLooper() == null ? this.f61333c : new Handler(Looper.myLooper());
    }

    /* renamed from: l */
    public final C22080k m8810l(final C22080k c22080k) {
        if (Thread.interrupted()) {
            return c22080k;
        }
        this.f61333c.post(new Runnable() { // from class: e.d.a.a.k0
            @Override // java.lang.Runnable
            public final void run() {
                C22068e c22068e = C22068e.this;
                c22068e.f61334d.f61330b.f61326a.onPurchasesUpdated(c22080k, null);
            }
        });
        return c22080k;
    }

    /* renamed from: m */
    public final C22080k m8809m() {
        return (this.f61331a == 0 || this.f61331a == 3) ? C22061a0.f61319l : C22061a0.f61317j;
    }

    /* renamed from: n */
    public final C22080k m8808n(final String str) {
        try {
            return ((Integer) m8807o(new Callable() { // from class: e.d.a.a.i0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    C22068e c22068e = C22068e.this;
                    String str2 = str;
                    zzd zzdVar = c22068e.f61336f;
                    String packageName = c22068e.f61335e.getPackageName();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("vr", true);
                    return Integer.valueOf(zzdVar.zzc(7, packageName, str2, bundle));
                }
            }, 5000L, null, m8811k()).get(5000L, TimeUnit.MILLISECONDS)).intValue() == 0 ? C22061a0.f61318k : C22061a0.f61315h;
        } catch (Exception e) {
            zza.zzk("BillingClient", "Exception while checking if billing is supported; try to reconnect");
            return C22061a0.f61319l;
        }
    }

    /* renamed from: o */
    public final <T> Future<T> m8807o(Callable<T> callable, long j, final Runnable runnable, Handler handler) {
        long j2 = (long) (j * 0.95d);
        if (this.f61350t == null) {
            this.f61350t = Executors.newFixedThreadPool(zza.zza, new ThreadFactoryC22100w(this));
        }
        try {
            final Future<T> submit = this.f61350t.submit(callable);
            handler.postDelayed(new Runnable() { // from class: e.d.a.a.o0
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    Runnable runnable2 = runnable;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    future.cancel(true);
                    zza.zzk("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 == null) {
                        return;
                    }
                    runnable2.run();
                }
            }, j2);
            return submit;
        } catch (Exception e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Async task throws exception ");
            sb.append(valueOf);
            zza.zzk("BillingClient", sb.toString());
            return null;
        }
    }
}
