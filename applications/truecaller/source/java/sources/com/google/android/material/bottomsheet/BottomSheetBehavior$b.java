package com.google.android.material.bottomsheet;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$b.class */
public class BottomSheetBehavior$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f6648a;

    /* renamed from: b */
    public final /* synthetic */ int f6649b;

    /* renamed from: c */
    public final /* synthetic */ BottomSheetBehavior f6650c;

    public BottomSheetBehavior$b(BottomSheetBehavior bottomSheetBehavior, View view, int i) {
        this.f6650c = bottomSheetBehavior;
        this.f6648a = view;
        this.f6649b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6650c.O(this.f6648a, this.f6649b);
    }
}
