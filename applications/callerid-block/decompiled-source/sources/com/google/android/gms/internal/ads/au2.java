package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/au2.class */
final class au2 implements Comparator<gu2> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public au2(cu2 cu2Var) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(gu2 gu2Var, gu2 gu2Var2) {
        gu2 gu2Var3 = gu2Var;
        gu2 gu2Var4 = gu2Var2;
        int i = gu2Var3.f6724c - gu2Var4.f6724c;
        return i != 0 ? i : (int) (gu2Var3.f6722a - gu2Var4.f6722a);
    }
}
