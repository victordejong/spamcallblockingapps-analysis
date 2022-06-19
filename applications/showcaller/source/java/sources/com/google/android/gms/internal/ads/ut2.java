package com.google.android.gms.internal.ads;

import java.net.HttpURLConnection;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ut2.class */
public final class ut2 extends nt2 {

    /* renamed from: d */
    private jv2<Integer> f30962d;

    /* renamed from: e */
    private jv2<Integer> f30963e;

    /* renamed from: f */
    private tt2 f30964f = null;

    /* renamed from: g */
    private HttpURLConnection f30965g;

    public ut2() {
        jv2<Integer> jv2Var = pt2.f28135d;
        jv2<Integer> jv2Var2 = qt2.f28628d;
        this.f30962d = jv2Var;
        this.f30963e = jv2Var2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.f30965g;
        ot2.m12530b();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: e */
    public final HttpURLConnection m10175e(tt2 tt2Var, int i, int i2) {
        this.f30962d = new jv2(265) { // from class: com.google.android.gms.internal.ads.rt2
            @Override // com.google.android.gms.internal.ads.jv2
            public final Object zza() {
                return 265;
            }
        };
        this.f30963e = new jv2(-1) { // from class: com.google.android.gms.internal.ads.st2
            @Override // com.google.android.gms.internal.ads.jv2
            public final Object zza() {
                return -1;
            }
        };
        this.f30964f = tt2Var;
        ot2.m12531a(this.f30962d.zza().intValue(), this.f30963e.zza().intValue());
        tt2 tt2Var2 = this.f30964f;
        Objects.requireNonNull(tt2Var2);
        HttpURLConnection httpURLConnection = (HttpURLConnection) tt2Var2.zza();
        this.f30965g = httpURLConnection;
        return httpURLConnection;
    }
}
