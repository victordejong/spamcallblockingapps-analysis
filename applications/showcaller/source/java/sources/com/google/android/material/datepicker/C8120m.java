package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.C0972g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/m.class */
public class C8120m extends LinearLayoutManager {

    /* renamed from: com.google.android.material.datepicker.m$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/m$a.class */
    class C8121a extends C0972g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8121a(Context context) {
            super(context);
            C8120m.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0972g
        /* renamed from: v */
        protected float mo4859v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public C8120m(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J1 */
    public void mo4860J1(RecyclerView recyclerView, RecyclerView.C0938y c0938y, int i) {
        C8121a c8121a = new C8121a(recyclerView.getContext());
        c8121a.m31712p(i);
        m31856K1(c8121a);
    }
}
