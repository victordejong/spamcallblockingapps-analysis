package com.allinone.callerid.customview;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FlowLayoutManager.class */
public class FlowLayoutManager extends RecyclerView.AbstractC0921o {

    /* renamed from: s */
    private static final String f8578s = "FlowLayoutManager";

    /* renamed from: C */
    private int f8581C;

    /* renamed from: D */
    private Context f8582D;

    /* renamed from: t */
    private int f8583t;

    /* renamed from: u */
    private int f8584u;

    /* renamed from: v */
    private int f8585v;

    /* renamed from: w */
    private int f8586w;

    /* renamed from: x */
    private int f8587x;

    /* renamed from: y */
    private int f8588y;

    /* renamed from: z */
    private int f8589z = 0;

    /* renamed from: A */
    private int f8579A = 0;

    /* renamed from: B */
    private C2437b f8580B = new C2437b();

    /* renamed from: com.allinone.callerid.customview.FlowLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FlowLayoutManager$a.class */
    public static class C2436a {

        /* renamed from: a */
        int f8590a;

        /* renamed from: b */
        View f8591b;

        public C2436a(int i, View view) {
            this.f8590a = i;
            this.f8591b = view;
        }
    }

    /* renamed from: com.allinone.callerid.customview.FlowLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FlowLayoutManager$b.class */
    public class C2437b {

        /* renamed from: a */
        float f8592a;

        /* renamed from: b */
        float f8593b;

        /* renamed from: c */
        List<C2436a> f8594c = new ArrayList();

        public C2437b() {
            FlowLayoutManager.this = r5;
        }

        /* renamed from: a */
        public void m27386a(C2436a c2436a) {
            this.f8594c.add(c2436a);
        }

        /* renamed from: b */
        public void m27385b() {
            this.f8592a = 0.0f;
            this.f8593b = 0.0f;
            this.f8594c.clear();
        }

        /* renamed from: c */
        public void m27384c(float f) {
            this.f8592a = f;
        }

        /* renamed from: d */
        public void m27383d(float f) {
            this.f8593b = f;
        }
    }

    public FlowLayoutManager(Context context) {
        this.f8582D = context;
    }

    /* renamed from: N1 */
    private void m27389N1() {
        List<C2436a> list = this.f8580B.f8594c;
        for (int i = 0; i < list.size(); i++) {
            View view = list.get(i).f8591b;
            if (list.get(i).f8590a < this.f8580B.f8593b) {
                int m31845Q = m31845Q(view);
                C2437b c2437b = this.f8580B;
                int m31843R = (int) (c2437b.f8592a + ((c2437b.f8593b - m31843R(view)) / 2.0f));
                int m31841T = m31841T(view);
                C2437b c2437b2 = this.f8580B;
                m31778z0(view, m31845Q, m31843R, m31841T, (int) (c2437b2.f8592a + ((c2437b2.f8593b - m31843R(view)) / 2.0f) + m31843R(view)));
            }
        }
        this.f8580B.m27385b();
    }

    /* renamed from: O1 */
    private int m27388O1() {
        return (this.f8584u - m31825d0()) - m31819g0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D */
    public RecyclerView.LayoutParams mo27390D() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: X0 */
    public void mo27380X0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (c0938y.m31700e()) {
            return;
        }
        m31785w(c0932u);
        this.f8583t = m31800o0();
        this.f8584u = m31837W();
        this.f8579A = 0;
        this.f8585v = m31823e0();
        this.f8587x = m31821f0();
        int m31819g0 = m31819g0();
        this.f8586w = m31819g0;
        this.f8588y = (this.f8583t - this.f8585v) - this.f8587x;
        this.f8580B.m27385b();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i7 >= m31835Y()) {
                this.f8579A = Math.max(this.f8579A, m27388O1());
                return;
            }
            View m31737o = c0932u.m31737o(i7);
            m31826d(m31737o);
            if (8 == m31737o.getVisibility()) {
                i3 = i6;
                i2 = m31819g0;
                i = i9;
            } else {
                m31875A0(m31737o, 0, 0);
                int m31842S = m31842S(m31737o);
                int m31843R = m31843R(m31737o);
                String str = f8578s;
                Log.d(str, "childHeight:" + m31843R);
                int i10 = this.f8581C;
                Log.d(str, "topMargin:" + i10);
                int i11 = m31842S + i10 + i10;
                int i12 = m31843R + i10 + i10;
                int i13 = i6 + i11;
                if (i13 <= this.f8588y) {
                    int i14 = this.f8585v + i6 + i10;
                    int i15 = i10 + m31819g0;
                    m31778z0(m31737o, i14, i15, i14 + m31842S, i15 + m31843R);
                    i5 = Math.max(i9, i12);
                    this.f8580B.m27386a(new C2436a(i12, m31737o));
                    this.f8580B.m27384c(m31819g0);
                    this.f8580B.m27383d(i5);
                    i4 = i13;
                } else {
                    m27389N1();
                    m31819g0 += i9;
                    this.f8579A += i9;
                    int i16 = m31819g0 + i10;
                    int i17 = i10 + this.f8585v;
                    m31778z0(m31737o, i17, i16, i17 + m31842S, i16 + m31843R);
                    this.f8580B.m27386a(new C2436a(i12, m31737o));
                    this.f8580B.m27384c(m31819g0);
                    this.f8580B.m27383d(i12);
                    i4 = i11;
                    i5 = i12;
                }
                i3 = i4;
                i2 = m31819g0;
                i = i5;
                if (i7 == m31835Y() - 1) {
                    m27389N1();
                    this.f8579A += i5;
                    i = i5;
                    i2 = m31819g0;
                    i3 = i4;
                }
            }
            i7++;
            i6 = i3;
            m31819g0 = i2;
            i8 = i;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: Z0 */
    public void mo22277Z0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i, int i2) {
        Log.d("TAG", "onMeasure");
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            this.f8583t = size;
        } else {
            this.f8583t = this.f8582D.getResources().getDisplayMetrics().widthPixels;
        }
        if (mode2 == 1073741824) {
            this.f8584u = size2;
            Log.d("TAG", "规则的");
        } else {
            Log.d("TAG", "不规则的");
            this.f8584u = Math.min(this.f8579A + m31819g0() + m31825d0(), ((Activity) this.f8582D).findViewById(16908290).getHeight());
        }
        m31869C1(this.f8583t, this.f8584u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: l */
    public boolean mo27381l() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: y1 */
    public int mo27387y1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        int i2;
        Log.d("TAG", "totalHeight:" + this.f8579A);
        int i3 = this.f8589z;
        if (i3 + i < 0) {
            i2 = -i3;
        } else {
            i2 = i;
            if (i3 + i > this.f8579A - m27388O1()) {
                i2 = (this.f8579A - m27388O1()) - this.f8589z;
            }
        }
        this.f8589z += i2;
        mo31693D0(-i2);
        return i2;
    }
}
