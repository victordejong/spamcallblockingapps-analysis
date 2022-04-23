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

    /* renamed from: a  reason: collision with root package name */
    boolean f23036a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f23037b;

    /* renamed from: c  reason: collision with root package name */
    private final String f23038c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f23039d;
    private final bg e;
    private final bi f;
    private final long[] h;
    private final String[] i;
    private zzbbz n;
    private boolean o;
    private boolean p;
    private final zzau g = new zzav().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzaah();
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private long q = -1;

    public aba(Context context, zzbar zzbarVar, String str, bi biVar, bg bgVar) {
        this.f23037b = context;
        this.f23039d = zzbarVar;
        this.f23038c = str;
        this.f = biVar;
        this.e = bgVar;
        String str2 = (String) ekb.e().a(aq.t);
        if (str2 == null) {
            this.i = new String[0];
            this.h = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.i = new String[split.length];
        this.h = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.h[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzd.zzd("Unable to parse frame hash target time number.", e);
                this.h[i] = -1;
            }
        }
    }

    public final void a() {
        if (this.j && !this.k) {
            ay.a(this.f, this.e, "vfr2");
            this.k = true;
        }
    }

    public final void a(zzbbz zzbbzVar) {
        ay.a(this.f, this.e, "vpc2");
        this.j = true;
        bi biVar = this.f;
        if (biVar != null) {
            biVar.a("vpn", zzbbzVar.a());
        }
        this.n = zzbbzVar;
    }

    public final void b() {
        if (db.f26694a.a().booleanValue() && !this.o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.f23038c);
            bundle.putString("player", this.n.a());
            for (zzaw zzawVar : this.g.zzaag()) {
                String valueOf = String.valueOf(zzawVar.name);
                bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzawVar.count));
                String valueOf2 = String.valueOf(zzawVar.name);
                bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzawVar.zzeid));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.h;
                if (i < jArr.length) {
                    String str = this.i[i];
                    if (str != null) {
                        String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                        sb.append("fh_");
                        sb.append(valueOf3);
                        bundle.putString(sb.toString(), str);
                    }
                    i++;
                } else {
                    zzr.zzkv().zza(this.f23037b, this.f23039d.zzbrz, "gmob-apps", bundle, true);
                    this.o = true;
                    return;
                }
            }
        }
    }

    public final void b(zzbbz zzbbzVar) {
        if (this.l && !this.m) {
            if (zzd.zzyz() && !this.m) {
                zzd.zzed("VideoMetricsMixin first frame");
            }
            ay.a(this.f, this.e, "vff2");
            this.m = true;
        }
        long c2 = zzr.zzlc().c();
        if (this.f23036a && this.p && this.q != -1) {
            this.g.zza(TimeUnit.SECONDS.toNanos(1L) / (c2 - this.q));
        }
        this.p = this.f23036a;
        this.q = c2;
        long longValue = ((Long) ekb.e().a(aq.u)).longValue();
        long f = zzbbzVar.f();
        int i = 0;
        while (true) {
            String[] strArr = this.i;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] != null || longValue <= Math.abs(f - this.h[i])) {
                i++;
            } else {
                String[] strArr2 = this.i;
                Bitmap bitmap = zzbbzVar.getBitmap(8, 8);
                long j = 63;
                long j2 = 0;
                for (int i2 = 0; i2 < 8; i2++) {
                    int i3 = 0;
                    while (i3 < 8) {
                        int pixel = bitmap.getPixel(i3, i2);
                        j2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j);
                        i3++;
                        j--;
                    }
                }
                strArr2[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
        }
    }

    public final void c() {
        this.f23036a = true;
        if (this.k && !this.l) {
            ay.a(this.f, this.e, "vfp2");
            this.l = true;
        }
    }
}
