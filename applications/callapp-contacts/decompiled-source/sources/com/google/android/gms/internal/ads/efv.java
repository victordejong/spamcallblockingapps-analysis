package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efv.class */
public final class efv implements Comparator<efi> {
    public efv(efs efsVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(efi efiVar, efi efiVar2) {
        efi efiVar3 = efiVar;
        efi efiVar4 = efiVar2;
        if (efiVar3.f27779b < efiVar4.f27779b) {
            return -1;
        }
        if (efiVar3.f27779b > efiVar4.f27779b) {
            return 1;
        }
        if (efiVar3.f27778a < efiVar4.f27778a) {
            return -1;
        }
        if (efiVar3.f27778a > efiVar4.f27778a) {
            return 1;
        }
        float f = (efiVar3.f27781d - efiVar3.f27779b) * (efiVar3.f27780c - efiVar3.f27778a);
        float f2 = (efiVar4.f27781d - efiVar4.f27779b) * (efiVar4.f27780c - efiVar4.f27778a);
        if (f > f2) {
            return -1;
        }
        return f < f2 ? 1 : 0;
    }
}
