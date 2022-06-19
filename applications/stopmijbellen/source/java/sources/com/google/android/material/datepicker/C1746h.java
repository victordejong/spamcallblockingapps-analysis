package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;
import p152l0.C3427b;
/* renamed from: com.google.android.material.datepicker.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/h.class */
public class C1746h extends RecyclerView.AbstractC0572l {

    /* renamed from: a */
    public final Calendar f6557a = C1730a0.m4638e();

    /* renamed from: b */
    public final Calendar f6558b = C1730a0.m4638e();

    /* renamed from: c */
    public final /* synthetic */ C1740g f6559c;

    public C1746h(C1740g c1740g) {
        this.f6559c = c1740g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0572l
    /* renamed from: d */
    public void mo4619d(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0592x c0592x) {
        if (!(recyclerView.getAdapter() instanceof C1734c0) || !(recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            return;
        }
        C1734c0 c1734c0 = (C1734c0) recyclerView.getAdapter();
        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        for (C3427b<Long, Long> c3427b : this.f6559c.f6543c.m4627o()) {
            Long l = c3427b.f11485a;
            if (l != null && c3427b.f11486b != null) {
                this.f6557a.setTimeInMillis(l.longValue());
                this.f6558b.setTimeInMillis(c3427b.f11486b.longValue());
                int m4634g = c1734c0.m4634g(this.f6557a.get(1));
                int m4634g2 = c1734c0.m4634g(this.f6558b.get(1));
                View mo7781s = gridLayoutManager.mo7781s(m4634g);
                View mo7781s2 = gridLayoutManager.mo7781s(m4634g2);
                int i = gridLayoutManager.f2095F;
                int i2 = m4634g / i;
                int i3 = m4634g2 / i;
                for (int i4 = i2; i4 <= i3; i4++) {
                    View mo7781s3 = gridLayoutManager.mo7781s(gridLayoutManager.f2095F * i4);
                    if (mo7781s3 != null) {
                        int top = mo7781s3.getTop();
                        int i5 = this.f6559c.f6547g.f6529d.f6518a.top;
                        int bottom = mo7781s3.getBottom();
                        int i6 = this.f6559c.f6547g.f6529d.f6518a.bottom;
                        canvas.drawRect(i4 == i2 ? (mo7781s.getWidth() / 2) + mo7781s.getLeft() : 0, top + i5, i4 == i3 ? (mo7781s2.getWidth() / 2) + mo7781s2.getLeft() : recyclerView.getWidth(), bottom - i6, this.f6559c.f6547g.f6533h);
                    }
                }
            }
        }
    }
}
