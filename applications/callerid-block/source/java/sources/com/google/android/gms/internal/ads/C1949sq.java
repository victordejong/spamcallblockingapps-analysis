package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1449t;
import com.google.android.gms.ads.internal.util.C1451u;
import com.google.android.gms.ads.internal.util.C1453v;
import com.google.android.gms.ads.internal.util.y0;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.sq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sq.class */
public final class C1949sq {

    /* renamed from: a */
    private final Context f8525a;

    /* renamed from: b */
    private final String f8526b;

    /* renamed from: c */
    private final zzbbq f8527c;

    /* renamed from: d */
    private final C2061z3 f8528d;

    /* renamed from: e */
    private final C1678c4 f8529e;

    /* renamed from: f */
    private final C1453v f8530f;

    /* renamed from: g */
    private final long[] f8531g;

    /* renamed from: h */
    private final String[] f8532h;

    /* renamed from: m */
    private boolean f8537m;

    /* renamed from: n */
    private zzbcy f8538n;

    /* renamed from: o */
    private boolean f8539o;

    /* renamed from: p */
    private boolean f8540p;

    /* renamed from: i */
    private boolean f8533i = false;

    /* renamed from: j */
    private boolean f8534j = false;

    /* renamed from: k */
    private boolean f8535k = false;

    /* renamed from: l */
    private boolean f8536l = false;

    /* renamed from: q */
    private long f8541q = -1;

    public C1949sq(Context context, zzbbq zzbbqVar, String str, C1678c4 c1678c4, C2061z3 c2061z3) {
        C1451u c1451u = new C1451u();
        c1451u.m8719a("min_1", Double.MIN_VALUE, 1.0d);
        c1451u.m8719a("1_5", 1.0d, 5.0d);
        c1451u.m8719a("5_10", 5.0d, 10.0d);
        c1451u.m8719a("10_20", 10.0d, 20.0d);
        c1451u.m8719a("20_30", 20.0d, 30.0d);
        c1451u.m8719a("30_max", 30.0d, Double.MAX_VALUE);
        this.f8530f = c1451u.m8718b();
        this.f8525a = context;
        this.f8527c = zzbbqVar;
        this.f8526b = str;
        this.f8529e = c1678c4;
        this.f8528d = c2061z3;
        String str2 = (String) C1674c.m7906c().m6878b(C1842m3.f7503t);
        if (str2 == null) {
            this.f8532h = new String[0];
            this.f8531g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.f8532h = new String[length];
        this.f8531g = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f8531g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                C1894po.m6179g("Unable to parse frame hash target time number.", e);
                this.f8531g[i] = -1;
            }
        }
    }

    /* renamed from: a */
    public final void m5636a(zzbcy zzbcyVar) {
        C1952t3.m5547a(this.f8529e, this.f8528d, "vpc2");
        this.f8533i = true;
        this.f8529e.m7875d("vpn", zzbcyVar.c());
        this.f8538n = zzbcyVar;
    }

    /* renamed from: b */
    public final void m5635b() {
        if (!this.f8533i || this.f8534j) {
            return;
        }
        C1952t3.m5547a(this.f8529e, this.f8528d, "vfr2");
        this.f8534j = true;
    }

    /* renamed from: c */
    public final void m5634c() {
        if (!C1844m5.f7559a.m6222e().booleanValue() || this.f8539o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f8526b);
        bundle.putString("player", this.f8538n.c());
        for (C1449t c1449t : this.f8530f.m8711b()) {
            String valueOf = String.valueOf(c1449t.f5626a);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(c1449t.f5630e));
            String valueOf2 = String.valueOf(c1449t.f5626a);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(c1449t.f5629d));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.f8531g;
            if (i >= jArr.length) {
                C1407r.m8920d().m8783O(this.f8525a, this.f8527c.b, "gmob-apps", bundle, true);
                this.f8539o = true;
                return;
            }
            String str = this.f8532h[i];
            if (str != null) {
                String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                sb.append("fh_");
                sb.append(valueOf3);
                bundle.putString(sb.toString(), str);
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* renamed from: d */
    public final void m5633d(zzbcy zzbcyVar) {
        if (this.f8535k && !this.f8536l) {
            if (y0.m() && !this.f8536l) {
                y0.k("VideoMetricsMixin first frame");
            }
            C1952t3.m5547a(this.f8529e, this.f8528d, "vff2");
            this.f8536l = true;
        }
        long m8244d = C1407r.m8913k().m8244d();
        if (this.f8537m && this.f8540p && this.f8541q != -1) {
            long nanos = TimeUnit.SECONDS.toNanos(1L);
            long j = this.f8541q;
            C1453v c1453v = this.f8530f;
            double d = nanos;
            double d2 = m8244d - j;
            Double.isNaN(d);
            Double.isNaN(d2);
            c1453v.m8712a(d / d2);
        }
        this.f8540p = this.f8537m;
        this.f8541q = m8244d;
        long longValue = ((Long) C1674c.m7906c().m6878b(C1842m3.f7510u)).longValue();
        long n = zzbcyVar.n();
        int i = 0;
        while (true) {
            String[] strArr = this.f8532h;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(n - this.f8531g[i])) {
                    String[] strArr2 = this.f8532h;
                    Bitmap bitmap = zzbcyVar.getBitmap(8, 8);
                    char c = '?';
                    char c2 = 0;
                    for (int i2 = 0; i2 < 8; i2++) {
                        int i3 = 0;
                        while (i3 < 8) {
                            int pixel = bitmap.getPixel(i3, i2);
                            c2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1 : 0) << c;
                            i3++;
                            c--;
                        }
                    }
                    strArr2[i] = String.format("%016X", Long.valueOf(c2));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m5632e() {
        this.f8537m = true;
        if (!this.f8534j || this.f8535k) {
            return;
        }
        C1952t3.m5547a(this.f8529e, this.f8528d, "vfp2");
        this.f8535k = true;
    }

    /* renamed from: f */
    public final void m5631f() {
        this.f8537m = false;
    }
}
