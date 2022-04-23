package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdx.class */
public final class zzbdx {

    /* renamed from: a */
    public final Context f24854a;

    /* renamed from: b */
    public final String f24855b;

    /* renamed from: c */
    public final zzbbx f24856c;

    /* renamed from: d */
    public final zzabq f24857d;

    /* renamed from: e */
    public final zzabs f24858e;

    /* renamed from: f */
    public final zzbac f24859f;

    /* renamed from: g */
    public final long[] f24860g;

    /* renamed from: h */
    public final String[] f24861h;

    /* renamed from: m */
    public boolean f24866m;

    /* renamed from: n */
    public zzbdf f24867n;

    /* renamed from: o */
    public boolean f24868o;

    /* renamed from: p */
    public boolean f24869p;

    /* renamed from: i */
    public boolean f24862i = false;

    /* renamed from: j */
    public boolean f24863j = false;

    /* renamed from: k */
    public boolean f24864k = false;

    /* renamed from: l */
    public boolean f24865l = false;

    /* renamed from: q */
    public long f24870q = -1;

    public zzbdx(Context context, zzbbx zzbbxVar, String str, zzabs zzabsVar, zzabq zzabqVar) {
        zzbah zzbahVar = new zzbah();
        zzbahVar.m15967a("min_1", Double.MIN_VALUE, 1.0d);
        zzbahVar.m15967a("1_5", 1.0d, 5.0d);
        zzbahVar.m15967a("5_10", 5.0d, 10.0d);
        zzbahVar.m15967a("10_20", 10.0d, 20.0d);
        zzbahVar.m15967a("20_30", 20.0d, 30.0d);
        zzbahVar.m15967a("30_max", 30.0d, Double.MAX_VALUE);
        this.f24859f = zzbahVar.m15969a();
        this.f24854a = context;
        this.f24856c = zzbbxVar;
        this.f24855b = str;
        this.f24858e = zzabsVar;
        this.f24857d = zzabqVar;
        String str2 = (String) zzwm.m11166e().m16921a(zzabb.f23884s);
        if (str2 == null) {
            this.f24861h = new String[0];
            this.f24860g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.f24861h = new String[split.length];
        this.f24860g = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f24860g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzbbq.m15853c("Unable to parse frame hash target time number.", e);
                this.f24860g[i] = -1;
            }
        }
    }

    /* renamed from: a */
    public final void m15749a() {
        if (zzadi.f24018a.mo16862a().booleanValue() && !this.f24868o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.f24855b);
            bundle.putString("player", this.f24867n.mo15721e());
            for (zzbae zzbaeVar : this.f24859f.m15977a()) {
                String valueOf = String.valueOf(zzbaeVar.f24701a);
                bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzbaeVar.f24705e));
                String valueOf2 = String.valueOf(zzbaeVar.f24701a);
                bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzbaeVar.f24704d));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f24860g;
                if (i < jArr.length) {
                    String str = this.f24861h[i];
                    if (str != null) {
                        String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                        sb.append("fh_");
                        sb.append(valueOf3);
                        bundle.putString(sb.toString(), str);
                    }
                    i++;
                } else {
                    zzp.m17969c().m16138a(this.f24854a, this.f24856c.f24759a, "gmob-apps", bundle, true);
                    this.f24868o = true;
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m15748a(zzbdf zzbdfVar) {
        zzabj.m16895a(this.f24858e, this.f24857d, "vpc2");
        this.f24862i = true;
        zzabs zzabsVar = this.f24858e;
        if (zzabsVar != null) {
            zzabsVar.m16882a("vpn", zzbdfVar.mo15721e());
        }
        this.f24867n = zzbdfVar;
    }

    /* renamed from: b */
    public final void m15747b() {
        this.f24866m = true;
        if (this.f24863j && !this.f24864k) {
            zzabj.m16895a(this.f24858e, this.f24857d, "vfp2");
            this.f24864k = true;
        }
    }

    /* renamed from: b */
    public final void m15746b(zzbdf zzbdfVar) {
        if (this.f24864k && !this.f24865l) {
            if (zzayp.m16155a() && !this.f24865l) {
                zzayp.m16153g("VideoMetricsMixin first frame");
            }
            zzabj.m16895a(this.f24858e, this.f24857d, "vff2");
            this.f24865l = true;
        }
        long c = zzp.m17962j().mo17090c();
        if (this.f24866m && this.f24869p && this.f24870q != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L);
            double d = c - this.f24870q;
            Double.isNaN(nanos);
            Double.isNaN(d);
            this.f24859f.m15976a(nanos / d);
        }
        this.f24869p = this.f24866m;
        this.f24870q = c;
        long longValue = ((Long) zzwm.m11166e().m16921a(zzabb.f23889t)).longValue();
        long currentPosition = zzbdfVar.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.f24861h;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] != null || longValue <= Math.abs(currentPosition - this.f24860g[i])) {
                i++;
            } else {
                String[] strArr2 = this.f24861h;
                Bitmap bitmap = zzbdfVar.getBitmap(8, 8);
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

    /* renamed from: c */
    public final void m15745c() {
        this.f24866m = false;
    }

    /* renamed from: d */
    public final void m15744d() {
        if (this.f24862i && !this.f24863j) {
            zzabj.m16895a(this.f24858e, this.f24857d, "vfr2");
            this.f24863j = true;
        }
    }
}
