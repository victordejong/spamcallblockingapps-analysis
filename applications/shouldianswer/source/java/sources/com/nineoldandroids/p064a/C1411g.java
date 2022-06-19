package com.nineoldandroids.p064a;

import android.view.animation.Interpolator;
import com.google.android.flexbox.FlexItem;
import com.nineoldandroids.p064a.AbstractC1409f;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.nineoldandroids.a.g */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/g.class */
public class C1411g {

    /* renamed from: a */
    int f3900a;

    /* renamed from: c */
    AbstractC1409f f3902c;

    /* renamed from: d */
    Interpolator f3903d;

    /* renamed from: f */
    AbstractC1431k f3905f;

    /* renamed from: e */
    ArrayList<AbstractC1409f> f3904e = new ArrayList<>();

    /* renamed from: b */
    AbstractC1409f f3901b = this.f3904e.get(0);

    public C1411g(AbstractC1409f... abstractC1409fArr) {
        this.f3900a = abstractC1409fArr.length;
        this.f3904e.addAll(Arrays.asList(abstractC1409fArr));
        this.f3902c = this.f3904e.get(this.f3900a - 1);
        this.f3903d = this.f3902c.m3732d();
    }

    /* renamed from: a */
    public static C1411g m3724a(float... fArr) {
        int length = fArr.length;
        AbstractC1409f.C1410a[] c1410aArr = new AbstractC1409f.C1410a[Math.max(length, 2)];
        if (length == 1) {
            c1410aArr[0] = (AbstractC1409f.C1410a) AbstractC1409f.m3736a((float) FlexItem.FLEX_GROW_DEFAULT);
            c1410aArr[1] = (AbstractC1409f.C1410a) AbstractC1409f.m3735a(1.0f, fArr[0]);
        } else {
            c1410aArr[0] = (AbstractC1409f.C1410a) AbstractC1409f.m3735a(FlexItem.FLEX_GROW_DEFAULT, fArr[0]);
            for (int i = 1; i < length; i++) {
                c1410aArr[i] = (AbstractC1409f.C1410a) AbstractC1409f.m3735a(i / (length - 1), fArr[i]);
            }
        }
        return new C1407d(c1410aArr);
    }

    /* renamed from: a */
    public Object mo3726a(float f) {
        int i = this.f3900a;
        if (i == 2) {
            Interpolator interpolator = this.f3903d;
            float f2 = f;
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f);
            }
            return this.f3905f.mo3673a(f2, this.f3901b.mo3730b(), this.f3902c.mo3730b());
        }
        int i2 = 1;
        if (f <= FlexItem.FLEX_GROW_DEFAULT) {
            AbstractC1409f abstractC1409f = this.f3904e.get(1);
            Interpolator m3732d = abstractC1409f.m3732d();
            float f3 = f;
            if (m3732d != null) {
                f3 = m3732d.getInterpolation(f);
            }
            float m3733c = this.f3901b.m3733c();
            return this.f3905f.mo3673a((f3 - m3733c) / (abstractC1409f.m3733c() - m3733c), this.f3901b.mo3730b(), abstractC1409f.mo3730b());
        } else if (f >= 1.0f) {
            AbstractC1409f abstractC1409f2 = this.f3904e.get(i - 2);
            Interpolator m3732d2 = this.f3902c.m3732d();
            float f4 = f;
            if (m3732d2 != null) {
                f4 = m3732d2.getInterpolation(f);
            }
            float m3733c2 = abstractC1409f2.m3733c();
            return this.f3905f.mo3673a((f4 - m3733c2) / (this.f3902c.m3733c() - m3733c2), abstractC1409f2.mo3730b(), this.f3902c.mo3730b());
        } else {
            AbstractC1409f abstractC1409f3 = this.f3901b;
            while (true) {
                AbstractC1409f abstractC1409f4 = abstractC1409f3;
                if (i2 >= this.f3900a) {
                    return this.f3902c.mo3730b();
                }
                AbstractC1409f abstractC1409f5 = this.f3904e.get(i2);
                if (f < abstractC1409f5.m3733c()) {
                    Interpolator m3732d3 = abstractC1409f5.m3732d();
                    float f5 = f;
                    if (m3732d3 != null) {
                        f5 = m3732d3.getInterpolation(f);
                    }
                    float m3733c3 = abstractC1409f4.m3733c();
                    return this.f3905f.mo3673a((f5 - m3733c3) / (abstractC1409f5.m3733c() - m3733c3), abstractC1409f4.mo3730b(), abstractC1409f5.mo3730b());
                }
                i2++;
                abstractC1409f3 = abstractC1409f5;
            }
        }
    }

    /* renamed from: a */
    public void m3725a(AbstractC1431k abstractC1431k) {
        this.f3905f = abstractC1431k;
    }

    /* renamed from: b */
    public C1411g clone() {
        ArrayList<AbstractC1409f> arrayList = this.f3904e;
        int size = arrayList.size();
        AbstractC1409f[] abstractC1409fArr = new AbstractC1409f[size];
        for (int i = 0; i < size; i++) {
            abstractC1409fArr[i] = arrayList.get(i).clone();
        }
        return new C1411g(abstractC1409fArr);
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.f3900a; i++) {
            str = str + this.f3904e.get(i).mo3730b() + "  ";
        }
        return str;
    }
}
