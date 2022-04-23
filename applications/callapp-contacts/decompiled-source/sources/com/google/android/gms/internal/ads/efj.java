package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efj.class */
final class efj implements Comparator<efq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public efj(efk efkVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(efq efqVar, efq efqVar2) {
        efq efqVar3 = efqVar;
        efq efqVar4 = efqVar2;
        int i = efqVar3.f27794c - efqVar4.f27794c;
        return i != 0 ? i : (int) (efqVar3.f27792a - efqVar4.f27792a);
    }
}
