package p241t4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.util.JsonReader;
import ba.C0748b;
import com.android.billingclient.api.SkuDetails;
import com.google.android.gms.internal.ads.C1676a;
import com.mglab.scm.visual.FragmentDev;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p007a6.C0028d;
import p074d9.C2497h;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2768a;
import p103g5.AbstractC2878v;
import p114h5.C3009a;
import p117h8.C3036l;
import p122i2.AbstractC3073i;
import p122i2.C3067c;
import p146k5.C3324a;
import p148k7.C3343h;
import p170m7.AbstractC3656d;
import p170m7.AbstractC3664h;
import p201p6.C4021f;
import p218r2.AbstractC4187e;
import p231s4.AbstractC4290c;
import p233s6.C4316k;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
import p278w8.C4775f;
import p278w8.C4776g;
import p305z4.C5099s;
/* renamed from: t4.d */
/* loaded from: classes2-dex2jar.jar:t4/d.class */
public final /* synthetic */ class C4398d implements C4021f.AbstractC4022a, AbstractC4737a.AbstractC4738a, C3009a.AbstractC3010a, AbstractC4187e, AbstractC3664h, AbstractC3073i, AbstractC3656d, AbstractC4290c.AbstractC4291a, C2497h.AbstractC2499b, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: b */
    public static final /* synthetic */ C4398d f13700b = new C4398d(0);

    /* renamed from: c */
    public static final /* synthetic */ C4398d f13701c = new C4398d(1);

    /* renamed from: d */
    public static final /* synthetic */ C4398d f13702d = new C4398d(4);

    /* renamed from: e */
    public static final /* synthetic */ C4398d f13703e = new C4398d(5);

    /* renamed from: f */
    public static final /* synthetic */ C4398d f13704f = new C4398d(6);

    /* renamed from: g */
    public static final /* synthetic */ C4398d f13705g = new C4398d(7);

    /* renamed from: h */
    public static final /* synthetic */ C4398d f13706h = new C4398d(8);

    /* renamed from: i */
    public static final /* synthetic */ C4398d f13707i = new C4398d(9);

    /* renamed from: j */
    public static final /* synthetic */ C4398d f13708j = new C4398d(10);

    /* renamed from: k */
    public static final /* synthetic */ C4398d f13709k = new C4398d(11);

    /* renamed from: a */
    public final /* synthetic */ int f13710a;

    public /* synthetic */ C4398d(int i) {
        this.f13710a = i;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        C4316k c4316k = (C4316k) obj;
        Context context = C2768a.f9468a;
        if (c4316k != null) {
            try {
                c4316k.toString();
                c4316k.m1108f("result").mo1105a();
            } catch (Exception e) {
                e.printStackTrace();
                e.toString();
            }
        }
    }

    @Override // p218r2.AbstractC4187e
    public Object apply(Object obj) {
        return C3324a.f11276b.m2749g((AbstractC2878v) obj).getBytes(Charset.forName("UTF-8"));
    }

    @Override // p114h5.C3009a.AbstractC3010a
    /* renamed from: b */
    public Object mo101b(JsonReader jsonReader) {
        switch (this.f13710a) {
            case 2:
                return C3009a.m2753c(jsonReader);
            default:
                return C3009a.m2755a(jsonReader);
        }
    }

    @Override // p201p6.C4021f.AbstractC4022a
    /* renamed from: c */
    public String mo100c(Object obj) {
        ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    @Override // p275w5.AbstractC4737a.AbstractC4738a
    /* renamed from: d */
    public void mo97d(AbstractC4739b abstractC4739b) {
        int i = C5099s.f15448c;
    }

    @Override // p122i2.AbstractC3073i
    /* renamed from: e */
    public void mo102e(C3067c c3067c, List list) {
        Context context = C2768a.f9468a;
        if (c3067c.f10403a == 0) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                SkuDetails skuDetails = (SkuDetails) it2.next();
                Bundle bundle = new Bundle();
                bundle.putString("Price", skuDetails.f3209b.optString("price"));
                bundle.putLong("PriceAmountMicros", skuDetails.f3209b.optLong("price_amount_micros"));
                Map<String, Bundle> map = C2768a.f9470c;
                ((HashMap) map).put(skuDetails.m7230a(), bundle);
            }
            C2768a.f9470c.toString();
        }
    }

    @Override // p074d9.C2497h.AbstractC2499b
    /* renamed from: f */
    public void mo847f(C2497h c2497h, Throwable th) {
        switch (this.f13710a) {
            case 9:
                C1676a.m4785l("Transaction error", 1, C0748b.m7409b());
                return;
            default:
                C0028d.m8914f(11, C0748b.m7409b());
                return;
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        int i = FragmentDev.f7408b;
        new C4776g(new C4775f(), C3036l.class).m481d();
    }

    @Override // p170m7.AbstractC3664h
    public Object then(Object obj) {
        ExecutorService executorService = C3343h.f11330f;
        return ((InetAddress[]) obj)[0];
    }
}
