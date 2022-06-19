package com.google.android.material.bottomsheet;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetBehavior$a.class */
public class BottomSheetBehavior$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f6646a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup.LayoutParams f6647b;

    public BottomSheetBehavior$a(BottomSheetBehavior bottomSheetBehavior, View view, ViewGroup.LayoutParams layoutParams) {
        this.f6646a = view;
        this.f6647b = layoutParams;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6646a.setLayoutParams(this.f6647b);
    }
}
