package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvi.class */
public final class bvi implements cah<bvj> {

    /* renamed from: a */
    private final cah<cak> f12332a;

    /* renamed from: b */
    private final chh f12333b;

    /* renamed from: c */
    private final Context f12334c;

    /* renamed from: d */
    private final C3542ug f12335d;

    public bvi(bwz<cak> bwzVar, chh chhVar, Context context, C3542ug c3542ug) {
        this.f12332a = bwzVar;
        this.f12333b = chhVar;
        this.f12334c = context;
        this.f12335d = c3542ug;
    }

    /* renamed from: a */
    public final /* synthetic */ bvj m11593a(cak cakVar) {
        String str;
        boolean z;
        dyd[] dydVarArr;
        dyd dydVar = this.f12333b.f13041e;
        String str2 = null;
        boolean z2 = false;
        if (dydVar.f16096g != null) {
            boolean z3 = false;
            boolean z4 = false;
            dyd[] dydVarArr2 = dydVar.f16096g;
            int length = dydVarArr2.length;
            int i = 0;
            while (true) {
                str = str2;
                z = z2;
                if (i >= length) {
                    break;
                }
                dyd dydVar2 = dydVarArr2[i];
                boolean z5 = z3;
                String str3 = str2;
                if (!dydVar2.f16098i) {
                    z5 = z3;
                    str3 = str2;
                    if (!z3) {
                        str3 = dydVar2.f16090a;
                        z5 = true;
                    }
                }
                boolean z6 = z2;
                boolean z7 = z4;
                if (dydVar2.f16098i) {
                    z6 = z2;
                    z7 = z4;
                    if (!z4) {
                        z6 = true;
                        z7 = true;
                    }
                }
                if (z5) {
                    str = str3;
                    z = z6;
                    if (z7) {
                        break;
                    }
                }
                i++;
                z3 = z5;
                str2 = str3;
                z2 = z6;
                z4 = z7;
            }
        } else {
            str = dydVar.f16090a;
            z = dydVar.f16098i;
        }
        Resources resources = this.f12334c.getResources();
        float f = 0.0f;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        if (resources != null) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            f = 0.0f;
            i2 = 0;
            i3 = 0;
            str4 = null;
            if (displayMetrics != null) {
                f = displayMetrics.density;
                i2 = displayMetrics.widthPixels;
                i3 = displayMetrics.heightPixels;
                str4 = this.f12335d.m7084h().mo7013n();
            }
        }
        StringBuilder sb = new StringBuilder();
        if (dydVar.f16096g != null) {
            boolean z8 = false;
            for (dyd dydVar3 : dydVar.f16096g) {
                if (dydVar3.f16098i) {
                    z8 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    sb.append((dydVar3.f16094e != -1 || f == 0.0f) ? dydVar3.f16094e : (int) (dydVar3.f16095f / f));
                    sb.append("x");
                    sb.append((dydVar3.f16091b != -2 || f == 0.0f) ? dydVar3.f16091b : (int) (dydVar3.f16092c / f));
                }
            }
            if (z8) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new bvj(dydVar, str, z, sb.toString(), f, i2, i3, str4, this.f12333b.f13051o);
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bvj> mo11479a() {
        return crg.m10783a(this.f12332a.mo11479a(), new coe(this) { // from class: com.google.android.gms.internal.ads.bvl

            /* renamed from: a */
            private final bvi f12349a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12349a = this;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                return this.f12349a.m11593a((cak) obj);
            }
        }, C3650yg.f17647f);
    }
}
