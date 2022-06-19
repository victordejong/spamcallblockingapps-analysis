package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5689f0;
import com.google.android.gms.ads.internal.util.C5693g0;
import com.google.android.gms.ads.internal.util.C5701i0;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lk0.class */
public final class lk0 {

    /* renamed from: a */
    private final Context f26147a;

    /* renamed from: b */
    private final String f26148b;

    /* renamed from: c */
    private final zzcgz f26149c;

    /* renamed from: d */
    private final C7123ww f26150d;

    /* renamed from: e */
    private final C6308ax f26151e;

    /* renamed from: f */
    private final C5701i0 f26152f;

    /* renamed from: g */
    private final long[] f26153g;

    /* renamed from: h */
    private final String[] f26154h;

    /* renamed from: m */
    private boolean f26159m;

    /* renamed from: n */
    private zzcii f26160n;

    /* renamed from: o */
    private boolean f26161o;

    /* renamed from: p */
    private boolean f26162p;

    /* renamed from: i */
    private boolean f26155i = false;

    /* renamed from: j */
    private boolean f26156j = false;

    /* renamed from: k */
    private boolean f26157k = false;

    /* renamed from: l */
    private boolean f26158l = false;

    /* renamed from: q */
    private long f26163q = -1;

    public lk0(Context context, zzcgz zzcgzVar, String str, C6308ax c6308ax, C7123ww c7123ww) {
        C5693g0 c5693g0 = new C5693g0();
        c5693g0.m18020d("min_1", Double.MIN_VALUE, 1.0d);
        c5693g0.m18020d("1_5", 1.0d, 5.0d);
        c5693g0.m18020d("5_10", 5.0d, 10.0d);
        c5693g0.m18020d("10_20", 10.0d, 20.0d);
        c5693g0.m18020d("20_30", 20.0d, 30.0d);
        c5693g0.m18020d("30_max", 30.0d, Double.MAX_VALUE);
        this.f26152f = c5693g0.m18019e();
        this.f26147a = context;
        this.f26149c = zzcgzVar;
        this.f26148b = str;
        this.f26151e = c6308ax;
        this.f26150d = c7123ww;
        String str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25814v);
        if (str2 == null) {
            this.f26154h = new String[0];
            this.f26153g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.f26154h = new String[length];
        this.f26153g = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f26153g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                ei0.m15463g("Unable to parse frame hash target time number.", e);
                this.f26153g[i] = -1;
            }
        }
    }

    /* renamed from: a */
    public final void m13494a(zzcii zzciiVar) {
        C6938rw.m11264a(this.f26151e, this.f26150d, "vpc2");
        this.f26155i = true;
        this.f26151e.m16472d("vpn", zzciiVar.mo7985h());
        this.f26160n = zzciiVar;
    }

    /* renamed from: b */
    public final void m13493b() {
        if (!this.f26155i || this.f26156j) {
            return;
        }
        C6938rw.m11264a(this.f26151e, this.f26150d, "vfr2");
        this.f26156j = true;
    }

    /* renamed from: c */
    public final void m13492c() {
        if (!C6755my.f26904a.m12799e().booleanValue() || this.f26161o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f26148b);
        bundle.putString("player", this.f26160n.mo7985h());
        for (C5689f0 c5689f0 : this.f26152f.m18011b()) {
            String valueOf = String.valueOf(c5689f0.f18469a);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(c5689f0.f18473e));
            String valueOf2 = String.valueOf(c5689f0.f18469a);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(c5689f0.f18472d));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.f26153g;
            if (i >= jArr.length) {
                C5667s.m18160d().m18087U(this.f26147a, this.f26149c.f33854d, "gmob-apps", bundle, true);
                this.f26161o = true;
                return;
            }
            String str = this.f26154h[i];
            if (str != null) {
                bundle.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str);
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
    public final void m13491d(zzcii zzciiVar) {
        if (this.f26157k && !this.f26158l) {
            if (C5722o1.m17988m() && !this.f26158l) {
                C5722o1.m17990k("VideoMetricsMixin first frame");
            }
            C6938rw.m11264a(this.f26151e, this.f26150d, "vff2");
            this.f26158l = true;
        }
        long mo16805c = C5667s.m18153k().mo16805c();
        if (this.f26159m && this.f26162p && this.f26163q != -1) {
            this.f26152f.m18012a(TimeUnit.SECONDS.toNanos(1L) / (mo16805c - this.f26163q));
        }
        this.f26162p = this.f26159m;
        this.f26163q = mo16805c;
        long longValue = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25822w)).longValue();
        long mo7978o = zzciiVar.mo7978o();
        int i = 0;
        while (true) {
            String[] strArr = this.f26154h;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(mo7978o - this.f26153g[i])) {
                    String[] strArr2 = this.f26154h;
                    Bitmap bitmap = zzciiVar.getBitmap(8, 8);
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
    public final void m13490e() {
        this.f26159m = true;
        if (!this.f26156j || this.f26157k) {
            return;
        }
        C6938rw.m11264a(this.f26151e, this.f26150d, "vfp2");
        this.f26157k = true;
    }

    /* renamed from: f */
    public final void m13489f() {
        this.f26159m = false;
    }
}
