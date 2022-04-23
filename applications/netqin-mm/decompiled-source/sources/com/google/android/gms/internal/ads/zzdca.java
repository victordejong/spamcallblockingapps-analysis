package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.ads.zzdca;
import com.google.android.gms.internal.ads.zzdha;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdca.class */
public final class zzdca implements zzdgx<zzdcb> {

    /* renamed from: a */
    public final zzdgx<zzdha> f27097a;

    /* renamed from: b */
    public final zzdok f27098b;

    /* renamed from: c */
    public final Context f27099c;

    /* renamed from: d */
    public final zzayb f27100d;

    public zzdca(zzddp<zzdha> zzddpVar, zzdok zzdokVar, Context context, zzayb zzaybVar) {
        this.f27097a = zzddpVar;
        this.f27098b = zzdokVar;
        this.f27099c = context;
        this.f27100d = zzaybVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdcb m13660a(zzdha zzdhaVar) {
        boolean z;
        String str;
        float f;
        int i;
        int i2;
        String str2;
        DisplayMetrics displayMetrics;
        zzvn zzvnVar = this.f27098b.f27643e;
        zzvn[] zzvnVarArr = zzvnVar.f29041g;
        if (zzvnVarArr != null) {
            int length = zzvnVarArr.length;
            String str3 = null;
            int i3 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                str = str3;
                z = z4;
                if (i3 >= length) {
                    break;
                }
                zzvn zzvnVar2 = zzvnVarArr[i3];
                boolean z5 = z2;
                String str4 = str3;
                if (!zzvnVar2.f29043i) {
                    z5 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzvnVar2.f29035a;
                        z5 = true;
                    }
                }
                boolean z6 = z3;
                boolean z7 = z4;
                if (zzvnVar2.f29043i) {
                    z6 = z3;
                    z7 = z4;
                    if (!z3) {
                        z6 = true;
                        z7 = true;
                    }
                }
                if (z5) {
                    str = str4;
                    z = z7;
                    if (z6) {
                        break;
                    }
                }
                i3++;
                z2 = z5;
                z3 = z6;
                str3 = str4;
                z4 = z7;
            }
        } else {
            str = zzvnVar.f29035a;
            z = zzvnVar.f29043i;
        }
        Resources resources = this.f27099c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i2 = 0;
            i = 0;
        } else {
            f = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
            str2 = this.f27100d.m16176i().mo16057f();
        }
        StringBuilder sb = new StringBuilder();
        zzvn[] zzvnVarArr2 = zzvnVar.f29041g;
        if (zzvnVarArr2 != null) {
            boolean z8 = false;
            for (zzvn zzvnVar3 : zzvnVarArr2) {
                if (zzvnVar3.f29043i) {
                    z8 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    sb.append((zzvnVar3.f29039e != -1 || f == 0.0f) ? zzvnVar3.f29039e : (int) (zzvnVar3.f29040f / f));
                    sb.append("x");
                    sb.append((zzvnVar3.f29036b != -2 || f == 0.0f) ? zzvnVar3.f29036b : (int) (zzvnVar3.f29037c / f));
                }
            }
            if (z8) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new zzdcb(zzvnVar, str, z, sb.toString(), f, i2, i, str2, this.f27098b.f27653o);
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdcb> mo13576a() {
        return zzdyq.m12993a(this.f27097a.mo13576a(), new zzdvu(this) { // from class: c.d.b.d.g.a.os

            /* renamed from: a */
            public final zzdca f14357a;

            {
                this.f14357a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return this.f14357a.m13660a((zzdha) obj);
            }
        }, zzbbz.f24769f);
    }
}
