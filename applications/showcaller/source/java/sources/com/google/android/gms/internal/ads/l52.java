package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l52.class */
public final class l52 implements wa2<m52> {

    /* renamed from: a */
    private final wa2<cb2> f25953a;

    /* renamed from: b */
    private final xj2 f25954b;

    /* renamed from: c */
    private final Context f25955c;

    /* renamed from: d */
    private final ph0 f25956d;

    public l52(c72<cb2> c72Var, xj2 xj2Var, Context context, ph0 ph0Var) {
        this.f25953a = c72Var;
        this.f25954b = xj2Var;
        this.f25955c = context;
        this.f25956d = ph0Var;
    }

    /* renamed from: a */
    public final /* synthetic */ m52 m13689a(cb2 cb2Var) {
        boolean z;
        String str;
        float f;
        String str2;
        int i;
        int i2;
        DisplayMetrics displayMetrics;
        zzbdl zzbdlVar = this.f25954b.f32078e;
        zzbdl[] zzbdlVarArr = zzbdlVar.f33688j;
        if (zzbdlVarArr != null) {
            int length = zzbdlVarArr.length;
            String str3 = null;
            int i3 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                boolean z5 = z4;
                str = str3;
                z = z5;
                if (i3 >= length) {
                    break;
                }
                zzbdl zzbdlVar2 = zzbdlVarArr[i3];
                boolean z6 = zzbdlVar2.f33690l;
                boolean z7 = z2;
                String str4 = str3;
                if (!z6) {
                    z7 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzbdlVar2.f33682d;
                        z7 = true;
                    }
                }
                boolean z8 = z3;
                boolean z9 = z5;
                if (z6) {
                    if (!z3) {
                        z8 = true;
                        z9 = true;
                    } else {
                        z8 = true;
                        z9 = z5;
                    }
                }
                if (z7) {
                    str = str4;
                    z = z9;
                    if (z8) {
                        break;
                    }
                }
                i3++;
                z2 = z7;
                z3 = z8;
                str3 = str4;
                z4 = z9;
            }
        } else {
            str = zzbdlVar.f33682d;
            z = zzbdlVar.f33690l;
        }
        Resources resources = this.f25955c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        } else {
            f = displayMetrics.density;
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
            str2 = this.f25956d.m12230p().mo17950q();
        }
        StringBuilder sb = new StringBuilder();
        zzbdl[] zzbdlVarArr2 = zzbdlVar.f33688j;
        if (zzbdlVarArr2 != null) {
            boolean z10 = false;
            for (zzbdl zzbdlVar3 : zzbdlVarArr2) {
                if (zzbdlVar3.f33690l) {
                    z10 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i4 = zzbdlVar3.f33686h;
                    int i5 = i4;
                    if (i4 == -1) {
                        i5 = f != 0.0f ? (int) (zzbdlVar3.f33687i / f) : -1;
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = zzbdlVar3.f33683e;
                    int i7 = i6;
                    if (i6 == -2) {
                        i7 = f != 0.0f ? (int) (zzbdlVar3.f33684f / f) : -2;
                    }
                    sb.append(i7);
                }
            }
            if (z10) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new m52(zzbdlVar, str, z, sb.toString(), f, i, i2, str2, this.f25954b.f32089p);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<m52> zza() {
        return k03.m13994j(this.f25953a.zza(), new nu2(this) { // from class: com.google.android.gms.internal.ads.k52

            /* renamed from: a */
            private final l52 f25069a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25069a = this;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                return this.f25069a.m13689a((cb2) obj);
            }
        }, qi0.f28500f);
    }
}
