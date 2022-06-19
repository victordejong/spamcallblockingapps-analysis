package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duq.class */
public final class duq implements Comparator<duw> {
    public duq(dur durVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(duw duwVar, duw duwVar2) {
        duw duwVar3 = duwVar;
        duw duwVar4 = duwVar2;
        int i = duwVar3.f15833c - duwVar4.f15833c;
        if (i == 0) {
            i = (int) (duwVar3.f15831a - duwVar4.f15831a);
        }
        return i;
    }
}
