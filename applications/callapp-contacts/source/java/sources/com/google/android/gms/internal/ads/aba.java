package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.util.zzav;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aba.class */
public final class aba {

    /* renamed from: a */
    boolean f39775a;

    /* renamed from: b */
    private final Context f39776b;

    /* renamed from: c */
    private final String f39777c;

    /* renamed from: d */
    private final zzbar f39778d;

    /* renamed from: e */
    private final C12239bg f39779e;

    /* renamed from: f */
    private final C12241bi f39780f;

    /* renamed from: h */
    private final long[] f39782h;

    /* renamed from: i */
    private final String[] f39783i;

    /* renamed from: n */
    private zzbbz f39788n;

    /* renamed from: o */
    private boolean f39789o;

    /* renamed from: p */
    private boolean f39790p;

    /* renamed from: g */
    private final zzau f39781g = new zzav().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzaah();

    /* renamed from: j */
    private boolean f39784j = false;

    /* renamed from: k */
    private boolean f39785k = false;

    /* renamed from: l */
    private boolean f39786l = false;

    /* renamed from: m */
    private boolean f39787m = false;

    /* renamed from: q */
    private long f39791q = -1;

    public aba(Context context, zzbar zzbarVar, String str, C12241bi c12241bi, C12239bg c12239bg) {
        this.f39776b = context;
        this.f39778d = zzbarVar;
        this.f39777c = str;
        this.f39780f = c12241bi;
        this.f39779e = c12239bg;
        String str2 = (String) ekb.m14831e().m18571a(C12187aq.f42994t);
        if (str2 == null) {
            this.f39783i = new String[0];
            this.f39782h = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.f39783i = new String[split.length];
        this.f39782h = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f39782h[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzd.zzd("Unable to parse frame hash target time number.", e);
                this.f39782h[i] = -1;
            }
        }
    }

    /* renamed from: a */
    public final void m18923a() {
        if (!this.f39784j || this.f39785k) {
            return;
        }
        C12203ay.m18328a(this.f39780f, this.f39779e, "vfr2");
        this.f39785k = true;
    }

    /* renamed from: a */
    public final void m18922a(zzbbz zzbbzVar) {
        C12203ay.m18328a(this.f39780f, this.f39779e, "vpc2");
        this.f39784j = true;
        C12241bi c12241bi = this.f39780f;
        if (c12241bi != null) {
            c12241bi.m17831a("vpn", zzbbzVar.mo13849a());
        }
        this.f39788n = zzbbzVar;
    }

    /* renamed from: b */
    public final void m18921b() {
        if (!C12318db.f46913a.mo17481a().booleanValue() || this.f39789o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f39777c);
        bundle.putString("player", this.f39788n.mo13849a());
        for (zzaw zzawVar : this.f39781g.zzaag()) {
            String valueOf = String.valueOf(zzawVar.name);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzawVar.count));
            String valueOf2 = String.valueOf(zzawVar.name);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzawVar.zzeid));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.f39782h;
            if (i >= jArr.length) {
                zzr.zzkv().zza(this.f39776b, this.f39778d.zzbrz, "gmob-apps", bundle, true);
                this.f39789o = true;
                return;
            }
            String str = this.f39783i[i];
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
    /* renamed from: b */
    public final void m18920b(zzbbz zzbbzVar) {
        if (this.f39786l && !this.f39787m) {
            if (zzd.zzyz() && !this.f39787m) {
                zzd.zzed("VideoMetricsMixin first frame");
            }
            C12203ay.m18328a(this.f39780f, this.f39779e, "vff2");
            this.f39787m = true;
        }
        long mo19037c = zzr.zzlc().mo19037c();
        if (this.f39775a && this.f39790p && this.f39791q != -1) {
            this.f39781g.zza(TimeUnit.SECONDS.toNanos(1L) / (mo19037c - this.f39791q));
        }
        this.f39790p = this.f39775a;
        this.f39791q = mo19037c;
        long longValue = ((Long) ekb.m14831e().m18571a(C12187aq.f42995u)).longValue();
        long mo13828f = zzbbzVar.mo13828f();
        int i = 0;
        while (true) {
            String[] strArr = this.f39783i;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(mo13828f - this.f39782h[i])) {
                    String[] strArr2 = this.f39783i;
                    Bitmap bitmap = zzbbzVar.getBitmap(8, 8);
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

    /* renamed from: c */
    public final void m18919c() {
        this.f39775a = true;
        if (!this.f39785k || this.f39786l) {
            return;
        }
        C12203ay.m18328a(this.f39780f, this.f39779e, "vfp2");
        this.f39786l = true;
    }
}
