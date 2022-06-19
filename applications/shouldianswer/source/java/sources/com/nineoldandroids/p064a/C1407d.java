package com.nineoldandroids.p064a;

import android.view.animation.Interpolator;
import com.google.android.flexbox.FlexItem;
import com.nineoldandroids.p064a.AbstractC1409f;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.nineoldandroids.a.d */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/d.class */
public class C1407d extends C1411g {

    /* renamed from: g */
    private float f3891g;

    /* renamed from: h */
    private float f3892h;

    /* renamed from: i */
    private float f3893i;

    /* renamed from: j */
    private boolean f3894j = true;

    public C1407d(AbstractC1409f.C1410a... c1410aArr) {
        super(c1410aArr);
    }

    /* renamed from: a */
    public C1407d clone() {
        ArrayList<AbstractC1409f> arrayList = this.f3904e;
        int size = this.f3904e.size();
        AbstractC1409f.C1410a[] c1410aArr = new AbstractC1409f.C1410a[size];
        for (int i = 0; i < size; i++) {
            c1410aArr[i] = (AbstractC1409f.C1410a) arrayList.get(i).clone();
        }
        return new C1407d(c1410aArr);
    }

    @Override // com.nineoldandroids.p064a.C1411g
    /* renamed from: a */
    public Object mo3726a(float f) {
        return Float.valueOf(m3739b(f));
    }

    /* renamed from: b */
    public float m3739b(float f) {
        if (this.f3900a == 2) {
            if (this.f3894j) {
                this.f3894j = false;
                this.f3891g = ((AbstractC1409f.C1410a) this.f3904e.get(0)).m3728f();
                this.f3892h = ((AbstractC1409f.C1410a) this.f3904e.get(1)).m3728f();
                this.f3893i = this.f3892h - this.f3891g;
            }
            float f2 = f;
            if (this.f3903d != null) {
                f2 = this.f3903d.getInterpolation(f);
            }
            return this.f3905f == null ? this.f3891g + (f2 * this.f3893i) : ((Number) this.f3905f.mo3673a(f2, Float.valueOf(this.f3891g), Float.valueOf(this.f3892h))).floatValue();
        } else if (f <= FlexItem.FLEX_GROW_DEFAULT) {
            AbstractC1409f.C1410a c1410a = (AbstractC1409f.C1410a) this.f3904e.get(0);
            AbstractC1409f.C1410a c1410a2 = (AbstractC1409f.C1410a) this.f3904e.get(1);
            float m3728f = c1410a.m3728f();
            float m3728f2 = c1410a2.m3728f();
            float c = c1410a.m3733c();
            float c2 = c1410a2.m3733c();
            Interpolator d = c1410a2.m3732d();
            float f3 = f;
            if (d != null) {
                f3 = d.getInterpolation(f);
            }
            float f4 = (f3 - c) / (c2 - c);
            return this.f3905f == null ? m3728f + (f4 * (m3728f2 - m3728f)) : ((Number) this.f3905f.mo3673a(f4, Float.valueOf(m3728f), Float.valueOf(m3728f2))).floatValue();
        } else if (f >= 1.0f) {
            AbstractC1409f.C1410a c1410a3 = (AbstractC1409f.C1410a) this.f3904e.get(this.f3900a - 2);
            AbstractC1409f.C1410a c1410a4 = (AbstractC1409f.C1410a) this.f3904e.get(this.f3900a - 1);
            float m3728f3 = c1410a3.m3728f();
            float m3728f4 = c1410a4.m3728f();
            float c3 = c1410a3.m3733c();
            float c4 = c1410a4.m3733c();
            Interpolator d2 = c1410a4.m3732d();
            float f5 = f;
            if (d2 != null) {
                f5 = d2.getInterpolation(f);
            }
            float f6 = (f5 - c3) / (c4 - c3);
            return this.f3905f == null ? m3728f3 + (f6 * (m3728f4 - m3728f3)) : ((Number) this.f3905f.mo3673a(f6, Float.valueOf(m3728f3), Float.valueOf(m3728f4))).floatValue();
        } else {
            AbstractC1409f.C1410a c1410a5 = (AbstractC1409f.C1410a) this.f3904e.get(0);
            int i = 1;
            while (i < this.f3900a) {
                AbstractC1409f.C1410a c1410a6 = (AbstractC1409f.C1410a) this.f3904e.get(i);
                if (f < c1410a6.m3733c()) {
                    Interpolator d3 = c1410a6.m3732d();
                    float f7 = f;
                    if (d3 != null) {
                        f7 = d3.getInterpolation(f);
                    }
                    float c5 = (f7 - c1410a5.m3733c()) / (c1410a6.m3733c() - c1410a5.m3733c());
                    float m3728f5 = c1410a5.m3728f();
                    float m3728f6 = c1410a6.m3728f();
                    return this.f3905f == null ? m3728f5 + (c5 * (m3728f6 - m3728f5)) : ((Number) this.f3905f.mo3673a(c5, Float.valueOf(m3728f5), Float.valueOf(m3728f6))).floatValue();
                }
                i++;
                c1410a5 = c1410a6;
            }
            return ((Number) this.f3904e.get(this.f3900a - 1).mo3730b()).floatValue();
        }
    }
}
