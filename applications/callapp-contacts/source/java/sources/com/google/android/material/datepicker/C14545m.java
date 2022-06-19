package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.C2690g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/m.class */
public class C14545m extends LinearLayoutManager {
    public C14545m(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo10800a(RecyclerView recyclerView, RecyclerView.C2654s c2654s, int i) {
        C2690g c2690g = new C2690g(recyclerView.getContext()) { // from class: com.google.android.material.datepicker.m.1
            @Override // androidx.recyclerview.widget.C2690g
            /* renamed from: a */
            public final float mo10799a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }
        };
        c2690g.setTargetPosition(i);
        m40378a(c2690g);
    }
}
