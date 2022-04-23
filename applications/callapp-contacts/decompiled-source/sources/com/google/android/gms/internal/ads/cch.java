package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cch.class */
public final class cch implements chb<cci> {

    /* renamed from: a  reason: collision with root package name */
    final cpo f25579a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25580b;

    /* renamed from: c  reason: collision with root package name */
    final yd f25581c;

    /* renamed from: d  reason: collision with root package name */
    private final chb<che> f25582d;

    public cch(cds<che> cdsVar, cpo cpoVar, Context context, yd ydVar) {
        this.f25582d = cdsVar;
        this.f25579a = cpoVar;
        this.f25580b = context;
        this.f25581c = ydVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cci> a() {
        return daj.a(this.f25582d.a(), new cxu(this) { // from class: com.google.android.gms.internal.ads.cck

            /* renamed from: a  reason: collision with root package name */
            private final cch f25591a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25591a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                boolean z;
                String str;
                float f;
                int i;
                int i2;
                String str2;
                zzvt[] zzvtVarArr;
                DisplayMetrics displayMetrics;
                cch cchVar = this.f25591a;
                zzvt zzvtVar = cchVar.f25579a.e;
                if (zzvtVar.zzcis != null) {
                    zzvt[] zzvtVarArr2 = zzvtVar.zzcis;
                    int length = zzvtVarArr2.length;
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
                        zzvt zzvtVar2 = zzvtVarArr2[i3];
                        boolean z5 = z2;
                        String str4 = str3;
                        if (!zzvtVar2.zzcit) {
                            z5 = z2;
                            str4 = str3;
                            if (!z2) {
                                str4 = zzvtVar2.zzadd;
                                z5 = true;
                            }
                        }
                        boolean z6 = z3;
                        boolean z7 = z4;
                        if (zzvtVar2.zzcit) {
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
                    str = zzvtVar.zzadd;
                    z = zzvtVar.zzcit;
                }
                Resources resources = cchVar.f25580b.getResources();
                if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    str2 = null;
                    f = BitmapDescriptorFactory.HUE_RED;
                    i = 0;
                    i2 = 0;
                } else {
                    f = displayMetrics.density;
                    i = displayMetrics.widthPixels;
                    i2 = displayMetrics.heightPixels;
                    str2 = cchVar.f25581c.d().zzzm();
                }
                StringBuilder sb = new StringBuilder();
                if (zzvtVar.zzcis != null) {
                    boolean z8 = false;
                    for (zzvt zzvtVar3 : zzvtVar.zzcis) {
                        if (zzvtVar3.zzcit) {
                            z8 = true;
                        } else {
                            if (sb.length() != 0) {
                                sb.append("|");
                            }
                            sb.append((zzvtVar3.width != -1 || f == BitmapDescriptorFactory.HUE_RED) ? zzvtVar3.width : (int) (zzvtVar3.widthPixels / f));
                            sb.append("x");
                            sb.append((zzvtVar3.height != -2 || f == BitmapDescriptorFactory.HUE_RED) ? zzvtVar3.height : (int) (zzvtVar3.heightPixels / f));
                        }
                    }
                    if (z8) {
                        if (sb.length() != 0) {
                            sb.insert(0, "|");
                        }
                        sb.insert(0, "320x50");
                    }
                }
                return new cci(zzvtVar, str, z, sb.toString(), f, i, i2, str2, cchVar.f25579a.p);
            }
        }, zd.f);
    }
}
