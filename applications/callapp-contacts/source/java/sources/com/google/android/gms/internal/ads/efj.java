package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efj.class */
public final class efj implements Comparator<efq> {
    public efj(efk efkVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(efq efqVar, efq efqVar2) {
        efq efqVar3 = efqVar;
        efq efqVar4 = efqVar2;
        int i = efqVar3.f48975c - efqVar4.f48975c;
        return i != 0 ? i : (int) (efqVar3.f48973a - efqVar4.f48973a);
    }
}
