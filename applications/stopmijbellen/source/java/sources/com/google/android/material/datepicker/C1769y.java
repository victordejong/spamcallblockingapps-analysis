package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.C0641p;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.google.android.material.datepicker.y */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/y.class */
public class C1769y extends LinearLayoutManager {

    /* renamed from: com.google.android.material.datepicker.y$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/y$a.class */
    public class C1770a extends C0641p {
        public C1770a(C1769y c1769y, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.C0641p
        /* renamed from: f */
        public float mo4590f(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public C1769y(Context context, int i, boolean z) {
        super(i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: G0 */
    public void mo4591G0(RecyclerView recyclerView, RecyclerView.C0592x c0592x, int i) {
        C1770a c1770a = new C1770a(this, recyclerView.getContext());
        c1770a.f2296a = i;
        m7806H0(c1770a);
    }
}
