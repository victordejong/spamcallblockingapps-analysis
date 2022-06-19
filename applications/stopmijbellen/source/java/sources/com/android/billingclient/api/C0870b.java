package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.widget.C0302z;
import com.android.billingclient.api.C0870b;
import com.android.billingclient.api.SkuDetails;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzu;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import p122i2.AbstractC3069e;
import p122i2.AbstractC3071g;
import p122i2.AbstractC3073i;
import p122i2.C3067c;
import p122i2.C3068d;
import p122i2.C3072h;
import p122i2.C3078n;
import p122i2.C3080p;
import p122i2.RunnableC3075k;
import p122i2.RunnableC3087w;
import p122i2.RunnableC3089y;
import p122i2.RunnableC3090z;
import p122i2.ServiceConnectionC3077m;
import p122i2.ThreadFactoryC3074j;
import p229s2.C4281c;
/* renamed from: com.android.billingclient.api.b */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/b.class */
public class C0870b extends AbstractC0869a {

    /* renamed from: b */
    public final String f3211b;

    /* renamed from: d */
    public volatile C0302z f3213d;

    /* renamed from: e */
    public Context f3214e;

    /* renamed from: f */
    public volatile zze f3215f;

    /* renamed from: g */
    public volatile ServiceConnectionC3077m f3216g;

    /* renamed from: h */
    public boolean f3217h;

    /* renamed from: j */
    public boolean f3219j;

    /* renamed from: k */
    public boolean f3220k;

    /* renamed from: l */
    public boolean f3221l;

    /* renamed from: m */
    public boolean f3222m;

    /* renamed from: n */
    public boolean f3223n;

    /* renamed from: o */
    public boolean f3224o;

    /* renamed from: p */
    public boolean f3225p;

    /* renamed from: q */
    public boolean f3226q;

    /* renamed from: s */
    public ExecutorService f3228s;

    /* renamed from: a */
    public volatile int f3210a = 0;

    /* renamed from: c */
    public final Handler f3212c = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    public int f3218i = 0;

    /* renamed from: r */
    public boolean f3227r = false;

    public C0870b(boolean z, Context context, C4281c c4281c) {
        String m7219i = m7219i();
        this.f3211b = m7219i;
        Context applicationContext = context.getApplicationContext();
        this.f3214e = applicationContext;
        this.f3213d = new C0302z(applicationContext, c4281c);
        this.f3226q = z;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: i */
    public static String m7219i() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception e) {
            return "4.1.0";
        }
    }

    @Override // com.android.billingclient.api.AbstractC0869a
    /* renamed from: a */
    public final void mo7227a(final C3068d c3068d, final AbstractC3069e abstractC3069e) {
        if (!mo7225c()) {
            abstractC3069e.mo106a(C3078n.f10428l, c3068d.f10405a);
        } else if (m7218j(new Callable() { // from class: i2.u
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i;
                String str;
                C0870b c0870b = C0870b.this;
                C3068d c3068d2 = c3068d;
                AbstractC3069e abstractC3069e2 = abstractC3069e;
                Objects.requireNonNull(c0870b);
                String str2 = c3068d2.f10405a;
                try {
                    String valueOf = String.valueOf(str2);
                    zzb.zzm("BillingClient", valueOf.length() != 0 ? "Consuming purchase with token: ".concat(valueOf) : new String("Consuming purchase with token: "));
                    if (c0870b.f3220k) {
                        Bundle zze = c0870b.f3215f.zze(9, c0870b.f3214e.getPackageName(), str2, zzb.zzd(c3068d2, c0870b.f3220k, c0870b.f3211b));
                        i = zze.getInt("RESPONSE_CODE");
                        str = zzb.zzj(zze, "BillingClient");
                    } else {
                        i = c0870b.f3215f.zza(3, c0870b.f3214e.getPackageName(), str2);
                        str = "";
                    }
                    C3067c c3067c = new C3067c();
                    c3067c.f10403a = i;
                    c3067c.f10404b = str;
                    if (i == 0) {
                        zzb.zzm("BillingClient", "Successfully consumed purchase.");
                        abstractC3069e2.mo106a(c3067c, str2);
                        return null;
                    }
                    StringBuilder sb = new StringBuilder(63);
                    sb.append("Error consuming purchase with token. Response code: ");
                    sb.append(i);
                    zzb.zzn("BillingClient", sb.toString());
                    abstractC3069e2.mo106a(c3067c, str2);
                    return null;
                } catch (Exception e) {
                    zzb.zzo("BillingClient", "Error consuming purchase!", e);
                    abstractC3069e2.mo106a(C3078n.f10428l, str2);
                    return null;
                }
            }
        }, 30000L, new RunnableC3089y(abstractC3069e, c3068d, 0), m7222f()) != null) {
        } else {
            abstractC3069e.mo106a(m7220h(), c3068d.f10405a);
        }
    }

    @Override // com.android.billingclient.api.AbstractC0869a
    /* renamed from: b */
    public final void mo7226b() {
        try {
            this.f3213d.m8400c();
            if (this.f3216g != null) {
                ServiceConnectionC3077m serviceConnectionC3077m = this.f3216g;
                synchronized (serviceConnectionC3077m.f10413a) {
                    serviceConnectionC3077m.f10415c = null;
                    serviceConnectionC3077m.f10414b = true;
                }
            }
            if (this.f3216g != null && this.f3215f != null) {
                zzb.zzm("BillingClient", "Unbinding from service.");
                this.f3214e.unbindService(this.f3216g);
                this.f3216g = null;
            }
            this.f3215f = null;
            ExecutorService executorService = this.f3228s;
            if (executorService != null) {
                executorService.shutdownNow();
                this.f3228s = null;
            }
        } catch (Exception e) {
            zzb.zzo("BillingClient", "There was an exception while ending connection!", e);
        } finally {
            this.f3210a = 3;
        }
    }

    @Override // com.android.billingclient.api.AbstractC0869a
    /* renamed from: c */
    public final boolean mo7225c() {
        return (this.f3210a != 2 || this.f3215f == null || this.f3216g == null) ? false : true;
    }

    @Override // com.android.billingclient.api.AbstractC0869a
    /* renamed from: d */
    public void mo7224d(String str, AbstractC3071g abstractC3071g) {
        if (!mo7225c()) {
            abstractC3071g.mo155b(C3078n.f10428l, zzu.zzh());
        } else if (TextUtils.isEmpty(str)) {
            zzb.zzn("BillingClient", "Please provide a valid product type.");
            abstractC3071g.mo155b(C3078n.f10423g, zzu.zzh());
        } else if (m7218j(new CallableC0873e(this, str, abstractC3071g), 30000L, new RunnableC3075k(abstractC3071g, 1), m7222f()) != null) {
        } else {
            abstractC3071g.mo155b(m7220h(), zzu.zzh());
        }
    }

    @Override // com.android.billingclient.api.AbstractC0869a
    /* renamed from: e */
    public final void mo7223e(C3072h c3072h, final AbstractC3073i abstractC3073i) {
        if (!mo7225c()) {
            abstractC3073i.mo102e(C3078n.f10428l, null);
            return;
        }
        final String str = c3072h.f10406a;
        List<String> list = c3072h.f10407b;
        if (TextUtils.isEmpty(str)) {
            zzb.zzn("BillingClient", "Please fix the input params. SKU type can't be empty.");
            abstractC3073i.mo102e(C3078n.f10422f, null);
        } else if (list == null) {
            zzb.zzn("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            abstractC3073i.mo102e(C3078n.f10421e, null);
        } else {
            final ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                if (TextUtils.isEmpty(str2)) {
                    throw new IllegalArgumentException("SKU must be set.");
                }
                arrayList.add(new C3080p(str2));
            }
            if (m7218j(new Callable() { // from class: i2.x
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    String str3;
                    int i;
                    C0870b c0870b = C0870b.this;
                    String str4 = str;
                    List list2 = arrayList;
                    AbstractC3073i abstractC3073i2 = abstractC3073i;
                    Objects.requireNonNull(c0870b);
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
                            arrayList4.add(((C3080p) arrayList3.get(i5)).f10436a);
                        }
                        Bundle bundle = new Bundle();
                        bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
                        bundle.putString("playBillingLibraryVersion", c0870b.f3211b);
                        try {
                            Bundle zzl = c0870b.f3221l ? c0870b.f3215f.zzl(10, c0870b.f3214e.getPackageName(), str4, bundle, zzb.zze(c0870b.f3218i, c0870b.f3226q, c0870b.f3211b, null, arrayList3)) : c0870b.f3215f.zzk(3, c0870b.f3214e.getPackageName(), str4, bundle);
                            if (zzl == null) {
                                zzb.zzn("BillingClient", "querySkuDetailsAsync got null sku details list");
                                break;
                            } else if (!zzl.containsKey("DETAILS_LIST")) {
                                i = zzb.zzb(zzl, "BillingClient");
                                str3 = zzb.zzj(zzl, "BillingClient");
                                if (i != 0) {
                                    StringBuilder sb = new StringBuilder(50);
                                    sb.append("getSkuDetails() failed. Response code: ");
                                    sb.append(i);
                                    zzb.zzn("BillingClient", sb.toString());
                                } else {
                                    zzb.zzn("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                                }
                            } else {
                                ArrayList<String> stringArrayList = zzl.getStringArrayList("DETAILS_LIST");
                                if (stringArrayList == null) {
                                    zzb.zzn("BillingClient", "querySkuDetailsAsync got null response list");
                                    break;
                                }
                                for (int i6 = 0; i6 < stringArrayList.size(); i6++) {
                                    try {
                                        SkuDetails skuDetails = new SkuDetails(stringArrayList.get(i6));
                                        zzb.zzm("BillingClient", "Got sku details: ".concat(skuDetails.toString()));
                                        arrayList2.add(skuDetails);
                                    } catch (JSONException e) {
                                        zzb.zzo("BillingClient", "Got a JSON exception trying to decode SkuDetails.", e);
                                        str3 = "Error trying to decode SkuDetails.";
                                        arrayList2 = null;
                                        i = 6;
                                        C3067c c3067c2 = new C3067c();
                                        c3067c2.f10403a = i;
                                        c3067c2.f10404b = str3;
                                        abstractC3073i2.mo102e(c3067c2, arrayList2);
                                        return null;
                                    }
                                }
                                i2 = i4;
                            }
                        } catch (Exception e2) {
                            zzb.zzo("BillingClient", "querySkuDetailsAsync got a remote exception (try to reconnect).", e2);
                            i = -1;
                            str3 = "Service connection is disconnected.";
                        }
                    }
                    i = 4;
                    str3 = "Item is unavailable for purchase.";
                    arrayList2 = null;
                    C3067c c3067c22 = new C3067c();
                    c3067c22.f10403a = i;
                    c3067c22.f10404b = str3;
                    abstractC3073i2.mo102e(c3067c22, arrayList2);
                    return null;
                }
            }, 30000L, new RunnableC3090z(abstractC3073i, 0), m7222f()) != null) {
                return;
            }
            abstractC3073i.mo102e(m7220h(), null);
        }
    }

    /* renamed from: f */
    public final Handler m7222f() {
        return Looper.myLooper() == null ? this.f3212c : new Handler(Looper.myLooper());
    }

    /* renamed from: g */
    public final C3067c m7221g(C3067c c3067c) {
        if (Thread.interrupted()) {
            return c3067c;
        }
        this.f3212c.post(new RunnableC3087w(this, c3067c, 0));
        return c3067c;
    }

    /* renamed from: h */
    public final C3067c m7220h() {
        return (this.f3210a == 0 || this.f3210a == 3) ? C3078n.f10428l : C3078n.f10426j;
    }

    /* renamed from: j */
    public final Future m7218j(Callable callable, long j, Runnable runnable, Handler handler) {
        long j2 = (long) (j * 0.95d);
        if (this.f3228s == null) {
            this.f3228s = Executors.newFixedThreadPool(zzb.zza, new ThreadFactoryC3074j(this));
        }
        try {
            Future submit = this.f3228s.submit(callable);
            handler.postDelayed(new RunnableC3087w(submit, runnable, 1), j2);
            return submit;
        } catch (Exception e) {
            zzb.zzo("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }
}
