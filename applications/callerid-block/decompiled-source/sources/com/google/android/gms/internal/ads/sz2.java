package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C1495p;
import com.google.android.gms.ads.search.C1502a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sz2.class */
public final class sz2 {

    /* renamed from: a */
    public static final sz2 f8580a = new sz2();

    protected sz2() {
    }

    /* renamed from: a */
    public final zzys m5551a(Context context, C1932s1 s1Var) {
        String str;
        Date a = s1Var.m5836a();
        long time = a != null ? a.getTime() : -1L;
        String b = s1Var.m5835b();
        int d = s1Var.m5833d();
        Set<String> e = s1Var.m5832e();
        List unmodifiableList = !e.isEmpty() ? Collections.unmodifiableList(new ArrayList(e)) : null;
        boolean k = s1Var.m5826k(context);
        Location f = s1Var.m5831f();
        Bundle g = s1Var.m5830g(AdMobAdapter.class);
        if (s1Var.m5819r() == null) {
            String h = s1Var.m5829h();
            C1502a j = s1Var.m5827j();
            if (j == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    String packageName = applicationContext.getPackageName();
                    m03.m6636a();
                    str = C1786io.m7132l(Thread.currentThread().getStackTrace(), packageName);
                } else {
                    str = null;
                }
                boolean q = s1Var.m5820q();
                C1495p e2 = C2060z1.m4677a().m4673e();
                return new zzys(8, time, g, d, unmodifiableList, k, Math.max(s1Var.m5823n(), e2.m8583b()), false, h, (zzadu) null, f, b, s1Var.m5824m(), s1Var.m5822o(), Collections.unmodifiableList(new ArrayList(s1Var.m5821p())), s1Var.m5828i(), str, q, (zzyk) null, Math.max(-1, e2.m8582c()), (String) Collections.max(Arrays.asList(null, e2.m8584a()), rz2.f8412b), s1Var.m5834c(), s1Var.m5818s());
            }
            new zzadu(j);
            throw null;
        }
        m03.m6631f();
        s1Var.m5819r().m8524a();
        throw null;
    }
}
