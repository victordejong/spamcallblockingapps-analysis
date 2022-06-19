package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.C0986h;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.q */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/q.class */
public class C4634q extends LinearLayoutManager {
    public C4634q(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo3114a(RecyclerView recyclerView, RecyclerView.C0945u c0945u, int i) {
        C0986h c0986h = new C0986h(recyclerView.getContext()) { // from class: com.google.android.material.datepicker.q.1
            @Override // androidx.recyclerview.widget.C0986h
            /* renamed from: a */
            protected float mo3113a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }
        };
        c0986h.m18838c(i);
        m18968a(c0986h);
    }
}
