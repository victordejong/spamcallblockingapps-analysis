package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cch.class */
public final class cch implements chb<cci> {

    /* renamed from: a */
    final cpo f45501a;

    /* renamed from: b */
    final Context f45502b;

    /* renamed from: c */
    final C13064yd f45503c;

    /* renamed from: d */
    private final chb<che> f45504d;

    public cch(cds<che> cdsVar, cpo cpoVar, Context context, C13064yd c13064yd) {
        this.f45504d = cdsVar;
        this.f45501a = cpoVar;
        this.f45502b = context;
        this.f45503c = c13064yd;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cci> mo17449a() {
        return daj.m16942a(this.f45504d.mo17449a(), new cxu(this) { // from class: com.google.android.gms.internal.ads.cck

            /* renamed from: a */
            private final cch f45518a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45518a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                boolean z;
                String str;
                float f;
                int i;
                int i2;
                String str2;
                zzvt[] zzvtVarArr;
                DisplayMetrics displayMetrics;
                cch cchVar = this.f45518a;
                zzvt zzvtVar = cchVar.f45501a.f46325e;
                if (zzvtVar.zzcis != null) {
                    zzvt[] zzvtVarArr2 = zzvtVar.zzcis;
                    int length = zzvtVarArr2.length;
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
                        zzvt zzvtVar2 = zzvtVarArr2[i3];
                        boolean z6 = z2;
                        String str4 = str3;
                        if (!zzvtVar2.zzcit) {
                            z6 = z2;
                            str4 = str3;
                            if (!z2) {
                                str4 = zzvtVar2.zzadd;
                                z6 = true;
                            }
                        }
                        boolean z7 = z3;
                        boolean z8 = z5;
                        if (zzvtVar2.zzcit) {
                            z7 = z3;
                            z8 = z5;
                            if (!z3) {
                                z7 = true;
                                z8 = true;
                            }
                        }
                        if (z6) {
                            str = str4;
                            z = z8;
                            if (z7) {
                                break;
                            }
                        }
                        i3++;
                        z2 = z6;
                        z3 = z7;
                        str3 = str4;
                        z4 = z8;
                    }
                } else {
                    str = zzvtVar.zzadd;
                    z = zzvtVar.zzcit;
                }
                Resources resources = cchVar.f45502b.getResources();
                if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    str2 = null;
                    f = 0.0f;
                    i = 0;
                    i2 = 0;
                } else {
                    f = displayMetrics.density;
                    i = displayMetrics.widthPixels;
                    i2 = displayMetrics.heightPixels;
                    str2 = cchVar.f45503c.m13975d().zzzm();
                }
                StringBuilder sb = new StringBuilder();
                if (zzvtVar.zzcis != null) {
                    boolean z9 = false;
                    for (zzvt zzvtVar3 : zzvtVar.zzcis) {
                        if (zzvtVar3.zzcit) {
                            z9 = true;
                        } else {
                            if (sb.length() != 0) {
                                sb.append("|");
                            }
                            sb.append((zzvtVar3.width != -1 || f == BitmapDescriptorFactory.HUE_RED) ? zzvtVar3.width : (int) (zzvtVar3.widthPixels / f));
                            sb.append("x");
                            sb.append((zzvtVar3.height != -2 || f == BitmapDescriptorFactory.HUE_RED) ? zzvtVar3.height : (int) (zzvtVar3.heightPixels / f));
                        }
                    }
                    if (z9) {
                        if (sb.length() != 0) {
                            sb.insert(0, "|");
                        }
                        sb.insert(0, "320x50");
                    }
                }
                return new cci(zzvtVar, str, z, sb.toString(), f, i, i2, str2, cchVar.f45501a.f46336p);
            }
        }, C13091zd.f50123f);
    }
}
