package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C5842q;
import com.google.android.gms.ads.search.C5847a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.xq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xq.class */
public final class C7154xq {

    /* renamed from: a */
    public static final C7154xq f32156a = new C7154xq();

    protected C7154xq() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* renamed from: a */
    public final zzbdg m9085a(Context context, C6862pu c6862pu) {
        String str;
        Date m12150a = c6862pu.m12150a();
        ?? time = m12150a != null ? m12150a.getTime() : true;
        String m12149b = c6862pu.m12149b();
        int m12147d = c6862pu.m12147d();
        Set<String> m12146e = c6862pu.m12146e();
        List unmodifiableList = !m12146e.isEmpty() ? Collections.unmodifiableList(new ArrayList(m12146e)) : null;
        boolean m12140k = c6862pu.m12140k(context);
        Location m12145f = c6862pu.m12145f();
        Bundle m12144g = c6862pu.m12144g(AdMobAdapter.class);
        if (c6862pu.m12133r() == null) {
            String m12143h = c6862pu.m12143h();
            C5847a m12141j = c6862pu.m12141j();
            zzbio zzbioVar = m12141j != null ? new zzbio(m12141j) : null;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                String packageName = applicationContext.getPackageName();
                C7118wr.m9485a();
                str = xh0.m9168j(Thread.currentThread().getStackTrace(), packageName);
            } else {
                str = null;
            }
            boolean m12134q = c6862pu.m12134q();
            C5842q m9447i = C7121wu.m9452d().m9447i();
            return new zzbdg(8, time == true ? 1L : 0L, m12144g, m12147d, unmodifiableList, m12140k, Math.max(c6862pu.m12137n(), m9447i.m17776b()), false, m12143h, zzbioVar, m12145f, m12149b, c6862pu.m12138m(), c6862pu.m12136o(), Collections.unmodifiableList(new ArrayList(c6862pu.m12135p())), c6862pu.m12142i(), str, m12134q, null, Math.max(-1, m9447i.m17775c()), (String) Collections.max(Arrays.asList(null, m9447i.m17777a()), C7117wq.f31671d), c6862pu.m12148c(), c6862pu.m12131t(), c6862pu.m12132s());
        }
        throw null;
    }
}
