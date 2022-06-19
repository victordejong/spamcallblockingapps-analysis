package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aah.class */
public final class aah {

    /* renamed from: a */
    private final Context f7626a;

    /* renamed from: b */
    private final String f7627b;

    /* renamed from: c */
    private final C3647yd f7628c;

    /* renamed from: d */
    private final C3319m f7629d;

    /* renamed from: e */
    private final C3373o f7630e;

    /* renamed from: g */
    private final long[] f7632g;

    /* renamed from: h */
    private final String[] f7633h;

    /* renamed from: m */
    private boolean f7638m;

    /* renamed from: n */
    private AbstractC3685zo f7639n;

    /* renamed from: o */
    private boolean f7640o;

    /* renamed from: p */
    private boolean f7641p;

    /* renamed from: f */
    private final C3602wm f7631f = new C3603wn().m6875a("min_1", Double.MIN_VALUE, 1.0d).m6875a("1_5", 1.0d, 5.0d).m6875a("5_10", 5.0d, 10.0d).m6875a("10_20", 10.0d, 20.0d).m6875a("20_30", 20.0d, 30.0d).m6875a("30_max", 30.0d, Double.MAX_VALUE).m6877a();

    /* renamed from: i */
    private boolean f7634i = false;

    /* renamed from: j */
    private boolean f7635j = false;

    /* renamed from: k */
    private boolean f7636k = false;

    /* renamed from: l */
    private boolean f7637l = false;

    /* renamed from: q */
    private long f7642q = -1;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x00e0 -> B:10:0x00d9). Please submit an issue!!! */
    public aah(Context context, C3647yd c3647yd, String str, C3373o c3373o, C3319m c3319m) {
        this.f7626a = context;
        this.f7628c = c3647yd;
        this.f7627b = str;
        this.f7630e = c3373o;
        this.f7629d = c3319m;
        String str2 = (String) dyx.m8158e().m7876a(edi.f16606r);
        if (str2 == null) {
            this.f7633h = new String[0];
            this.f7632g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.f7633h = new String[split.length];
        this.f7632g = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f7632g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                C3556uu.m6746d("Unable to parse frame hash target time number.", e);
                this.f7632g[i] = -1;
            }
        }
    }

    /* renamed from: a */
    public final void m13737a() {
        if (!this.f7634i || this.f7635j) {
            return;
        }
        C3238j.m7741a(this.f7630e, this.f7629d, "vfr2");
        this.f7635j = true;
    }

    /* renamed from: a */
    public final void m13736a(AbstractC3685zo abstractC3685zo) {
        C3238j.m7741a(this.f7630e, this.f7629d, "vpc2");
        this.f7634i = true;
        if (this.f7630e != null) {
            this.f7630e.m7379a("vpn", abstractC3685zo.mo6702a());
        }
        this.f7639n = abstractC3685zo;
    }

    /* renamed from: b */
    public final void m13735b() {
        if (!C2822az.f10671a.mo13599a().booleanValue() || this.f7640o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f7627b);
        bundle.putString("player", this.f7639n.mo6702a());
        for (C3604wo c3604wo : this.f7631f.m6880a()) {
            String valueOf = String.valueOf("fps_c_");
            String valueOf2 = String.valueOf(c3604wo.f17560a);
            bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(c3604wo.f17562c));
            String valueOf3 = String.valueOf("fps_p_");
            String valueOf4 = String.valueOf(c3604wo.f17560a);
            bundle.putString(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), Double.toString(c3604wo.f17561b));
        }
        for (int i = 0; i < this.f7632g.length; i++) {
            String str = this.f7633h[i];
            if (str != null) {
                String valueOf5 = String.valueOf(Long.valueOf(this.f7632g[i]));
                bundle.putString(new StringBuilder(String.valueOf(valueOf5).length() + 3).append("fh_").append(valueOf5).toString(), str);
            }
        }
        C2341q.m14744c().m7002a(this.f7626a, this.f7628c.f17636a, "gmob-apps", bundle, true);
        this.f7640o = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: b */
    public final void m13734b(AbstractC3685zo abstractC3685zo) {
        if (this.f7636k && !this.f7637l) {
            if (C3556uu.m7053a() && !this.f7637l) {
                C3556uu.m7052a("VideoMetricsMixin first frame");
            }
            C3238j.m7741a(this.f7630e, this.f7629d, "vff2");
            this.f7637l = true;
        }
        long mo13860c = C2341q.m14737j().mo13860c();
        if (this.f7638m && this.f7641p && this.f7642q != -1) {
            this.f7631f.m6879a(TimeUnit.SECONDS.toNanos(1L) / (mo13860c - this.f7642q));
        }
        this.f7641p = this.f7638m;
        this.f7642q = mo13860c;
        long longValue = ((Long) dyx.m8158e().m7876a(edi.f16607s)).longValue();
        long currentPosition = abstractC3685zo.getCurrentPosition();
        for (int i = 0; i < this.f7633h.length; i++) {
            if (this.f7633h[i] == null && longValue > Math.abs(currentPosition - this.f7632g[i])) {
                String[] strArr = this.f7633h;
                Bitmap bitmap = abstractC3685zo.getBitmap(8, 8);
                char c = 0;
                char c2 = '?';
                for (int i2 = 0; i2 < 8; i2++) {
                    int i3 = 0;
                    while (i3 < 8) {
                        int pixel = bitmap.getPixel(i3, i2);
                        c |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > 128 ? 1 : 0) << c2;
                        i3++;
                        c2--;
                    }
                }
                strArr[i] = String.format("%016X", Long.valueOf(c));
                return;
            }
        }
    }

    /* renamed from: c */
    public final void m13733c() {
        this.f7638m = true;
        if (!this.f7635j || this.f7636k) {
            return;
        }
        C3238j.m7741a(this.f7630e, this.f7629d, "vfp2");
        this.f7636k = true;
    }

    /* renamed from: d */
    public final void m13732d() {
        this.f7638m = false;
    }
}
