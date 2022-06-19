package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eav.class */
public final class eav implements eau {

    /* renamed from: a */
    final eau[] f48536a;

    /* renamed from: b */
    final ArrayList<eau> f48537b;

    /* renamed from: d */
    eat f48539d;

    /* renamed from: e */
    dwe f48540e;

    /* renamed from: f */
    Object f48541f;

    /* renamed from: h */
    zznh f48543h;

    /* renamed from: c */
    final dwf f48538c = new dwf();

    /* renamed from: g */
    int f48542g = -1;

    public eav(eau... eauVarArr) {
        this.f48536a = eauVarArr;
        this.f48537b = new ArrayList<>(Arrays.asList(eauVarArr));
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final eas mo15362a(int i, ebz ebzVar) {
        int length = this.f48536a.length;
        eas[] easVarArr = new eas[length];
        for (int i2 = 0; i2 < length; i2++) {
            easVarArr[i2] = this.f48536a[i2].mo15362a(i, ebzVar);
        }
        return new eaw(easVarArr);
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15363a() throws IOException {
        zznh zznhVar = this.f48543h;
        if (zznhVar == null) {
            for (eau eauVar : this.f48536a) {
                eauVar.mo15363a();
            }
            return;
        }
        throw zznhVar;
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15361a(dvl dvlVar, eat eatVar) {
        this.f48539d = eatVar;
        int i = 0;
        while (true) {
            eau[] eauVarArr = this.f48536a;
            if (i < eauVarArr.length) {
                eauVarArr[i].mo15361a(dvlVar, new eax(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15360a(eas easVar) {
        eaw eawVar = (eaw) easVar;
        int i = 0;
        while (true) {
            eau[] eauVarArr = this.f48536a;
            if (i < eauVarArr.length) {
                eauVarArr[i].mo15360a(eawVar.f48544a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: b */
    public final void mo15359b() {
        for (eau eauVar : this.f48536a) {
            eauVar.mo15359b();
        }
    }
}
