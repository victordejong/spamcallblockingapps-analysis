package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/m.class */
class m extends LinearLayoutManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView recyclerView, RecyclerView.s sVar, int i) {
        g gVar = new g(recyclerView.getContext()) { // from class: com.google.android.material.datepicker.m.1
            @Override // androidx.recyclerview.widget.g
            public final float a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }
        };
        gVar.setTargetPosition(i);
        a(gVar);
    }
}
