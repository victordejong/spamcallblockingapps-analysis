package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eav.class */
public final class eav implements eau {

    /* renamed from: a  reason: collision with root package name */
    final eau[] f27542a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<eau> f27543b;

    /* renamed from: d  reason: collision with root package name */
    eat f27545d;
    dwe e;
    Object f;
    zznh h;

    /* renamed from: c  reason: collision with root package name */
    final dwf f27544c = new dwf();
    int g = -1;

    public eav(eau... eauVarArr) {
        this.f27542a = eauVarArr;
        this.f27543b = new ArrayList<>(Arrays.asList(eauVarArr));
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final eas a(int i, ebz ebzVar) {
        int length = this.f27542a.length;
        eas[] easVarArr = new eas[length];
        for (int i2 = 0; i2 < length; i2++) {
            easVarArr[i2] = this.f27542a[i2].a(i, ebzVar);
        }
        return new eaw(easVarArr);
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a() throws IOException {
        zznh zznhVar = this.h;
        if (zznhVar == null) {
            for (eau eauVar : this.f27542a) {
                eauVar.a();
            }
            return;
        }
        throw zznhVar;
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a(dvl dvlVar, eat eatVar) {
        this.f27545d = eatVar;
        int i = 0;
        while (true) {
            eau[] eauVarArr = this.f27542a;
            if (i < eauVarArr.length) {
                eauVarArr[i].a(dvlVar, new eax(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a(eas easVar) {
        eaw eawVar = (eaw) easVar;
        int i = 0;
        while (true) {
            eau[] eauVarArr = this.f27542a;
            if (i < eauVarArr.length) {
                eauVarArr[i].a(eawVar.f27546a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void b() {
        for (eau eauVar : this.f27542a) {
            eauVar.b();
        }
    }
}
