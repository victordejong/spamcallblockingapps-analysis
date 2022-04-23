package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.oh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvl.class */
public final class zzvl {

    /* renamed from: a */
    public static final zzvl f29034a = new zzvl();

    /* renamed from: a */
    public static final /* synthetic */ int m11200a(String str, String str2) {
        return RequestConfiguration.f22670e.indexOf(str) - RequestConfiguration.f22670e.indexOf(str2);
    }

    /* renamed from: a */
    public static zzvg m11201a(Context context, zzyw zzywVar) {
        zzuy zzuyVar;
        String str;
        Date a = zzywVar.m11095a();
        long time = a != null ? a.getTime() : -1L;
        String b = zzywVar.m11092b();
        int d = zzywVar.m11090d();
        Set<String> e = zzywVar.m11089e();
        List unmodifiableList = !e.isEmpty() ? Collections.unmodifiableList(new ArrayList(e)) : null;
        boolean a2 = zzywVar.m11094a(context);
        Location f = zzywVar.m11088f();
        Bundle a3 = zzywVar.m11093a(AdMobAdapter.class);
        if (zzywVar.m11076r() != null) {
            zzuyVar = new zzuy(zzywVar.m11076r().m17914a(), zzwm.m11162i().containsKey(zzywVar.m11076r().m17913b()) ? zzwm.m11162i().get(zzywVar.m11076r().m17913b()) : "");
        } else {
            zzuyVar = null;
        }
        boolean g = zzywVar.m11087g();
        String i = zzywVar.m11085i();
        SearchAdRequest m = zzywVar.m11081m();
        zzaag zzaagVar = m != null ? new zzaag(m) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzwm.m11170a();
            str = zzbbg.m15900a(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean j = zzywVar.m11084j();
        RequestConfiguration b2 = zzzd.m10991d().m10995b();
        return new zzvg(8, time, a3, d, unmodifiableList, a2, Math.max(zzywVar.m11078p(), b2.m18098b()), g, i, zzaagVar, f, b, zzywVar.m11079o(), zzywVar.m11091c(), Collections.unmodifiableList(new ArrayList(zzywVar.m11077q())), zzywVar.m11082l(), str, j, zzuyVar, Math.max(zzywVar.m11075s(), b2.m18097c()), (String) Collections.max(Arrays.asList(zzywVar.m11086h(), b2.m18099a()), oh0.f14341a), zzywVar.m11083k());
    }
}
