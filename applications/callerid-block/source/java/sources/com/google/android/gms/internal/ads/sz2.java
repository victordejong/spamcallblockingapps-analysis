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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* renamed from: a */
    public final zzys m5551a(Context context, C1932s1 c1932s1) {
        String str;
        Date m5836a = c1932s1.m5836a();
        ?? time = m5836a != null ? m5836a.getTime() : true;
        String m5835b = c1932s1.m5835b();
        int m5833d = c1932s1.m5833d();
        Set<String> m5832e = c1932s1.m5832e();
        List unmodifiableList = !m5832e.isEmpty() ? Collections.unmodifiableList(new ArrayList(m5832e)) : null;
        boolean m5826k = c1932s1.m5826k(context);
        Location m5831f = c1932s1.m5831f();
        Bundle m5830g = c1932s1.m5830g(AdMobAdapter.class);
        if (c1932s1.m5819r() != null) {
            m03.m6631f();
            c1932s1.m5819r().m8524a();
            throw null;
        }
        String m5829h = c1932s1.m5829h();
        C1502a m5827j = c1932s1.m5827j();
        if (m5827j != null) {
            new zzadu(m5827j);
            throw null;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            m03.m6636a();
            str = C1786io.m7132l(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean m5820q = c1932s1.m5820q();
        C1495p m4673e = C2060z1.m4677a().m4673e();
        return new zzys(8, time == true ? 1L : 0L, m5830g, m5833d, unmodifiableList, m5826k, Math.max(c1932s1.m5823n(), m4673e.m8583b()), false, m5829h, (zzadu) null, m5831f, m5835b, c1932s1.m5824m(), c1932s1.m5822o(), Collections.unmodifiableList(new ArrayList(c1932s1.m5821p())), c1932s1.m5828i(), str, m5820q, (zzyk) null, Math.max(-1, m4673e.m8582c()), (String) Collections.max(Arrays.asList(null, m4673e.m8584a()), rz2.f8412b), c1932s1.m5834c(), c1932s1.m5818s());
    }
}
