package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.C4149vp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwj.class */
public final class zzcwj {

    /* renamed from: a */
    public final Clock f26654a;

    /* renamed from: b */
    public final zzcwl f26655b;

    /* renamed from: c */
    public final List<String> f26656c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    public final boolean f26657d = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23707L3)).booleanValue();

    /* renamed from: e */
    public final zzctd f26658e;

    public zzcwj(Clock clock, zzcwl zzcwlVar, zzctd zzctdVar) {
        this.f26654a = clock;
        this.f26655b = zzcwlVar;
        this.f26658e = zzctdVar;
    }

    /* renamed from: a */
    public final <T> zzdzc<T> m13819a(zzdnw zzdnwVar, zzdnv zzdnvVar, zzdzc<T> zzdzcVar) {
        long a = this.f26654a.mo17092a();
        String str = zzdnvVar.f27606v;
        if (str != null) {
            zzdyq.m12991a(zzdzcVar, new C4149vp(this, a, str, zzdnvVar, zzdnwVar), zzbbz.f24769f);
        }
        return zzdzcVar;
    }

    /* renamed from: a */
    public final String m13822a() {
        return TextUtils.join("_", this.f26656c);
    }

    /* renamed from: a */
    public final void m13818a(String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        this.f26656c.add(str3);
    }
}
