package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ro3.class */
public final class ro3 {

    /* renamed from: a */
    private static final Comparator<qo3> f29076a = no3.f27245d;

    /* renamed from: b */
    private static final Comparator<qo3> f29077b = oo3.f27662d;

    /* renamed from: f */
    private int f29081f;

    /* renamed from: g */
    private int f29082g;

    /* renamed from: h */
    private int f29083h;

    /* renamed from: d */
    private final qo3[] f29079d = new qo3[5];

    /* renamed from: c */
    private final ArrayList<qo3> f29078c = new ArrayList<>();

    /* renamed from: e */
    private int f29080e = -1;

    public ro3(int i) {
    }

    /* renamed from: a */
    public final void m11338a() {
        this.f29078c.clear();
        this.f29080e = -1;
        this.f29081f = 0;
        this.f29082g = 0;
    }

    /* renamed from: b */
    public final void m11337b(int i, float f) {
        qo3 qo3Var;
        if (this.f29080e != 1) {
            Collections.sort(this.f29078c, f29076a);
            this.f29080e = 1;
        }
        int i2 = this.f29083h;
        if (i2 > 0) {
            qo3[] qo3VarArr = this.f29079d;
            int i3 = i2 - 1;
            this.f29083h = i3;
            qo3Var = qo3VarArr[i3];
        } else {
            qo3Var = new qo3(null);
        }
        int i4 = this.f29081f;
        this.f29081f = i4 + 1;
        qo3Var.f28590a = i4;
        qo3Var.f28591b = i;
        qo3Var.f28592c = f;
        this.f29078c.add(qo3Var);
        this.f29082g += i;
        while (true) {
            int i5 = this.f29082g;
            if (i5 > 2000) {
                int i6 = i5 - 2000;
                qo3 qo3Var2 = this.f29078c.get(0);
                int i7 = qo3Var2.f28591b;
                if (i7 <= i6) {
                    this.f29082g -= i7;
                    this.f29078c.remove(0);
                    int i8 = this.f29083h;
                    if (i8 < 5) {
                        qo3[] qo3VarArr2 = this.f29079d;
                        this.f29083h = i8 + 1;
                        qo3VarArr2[i8] = qo3Var2;
                    }
                } else {
                    qo3Var2.f28591b = i7 - i6;
                    this.f29082g -= i6;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public final float m11336c(float f) {
        if (this.f29080e != 0) {
            Collections.sort(this.f29078c, f29077b);
            this.f29080e = 0;
        }
        float f2 = this.f29082g;
        int i = 0;
        for (int i2 = 0; i2 < this.f29078c.size(); i2++) {
            qo3 qo3Var = this.f29078c.get(i2);
            i += qo3Var.f28591b;
            if (i >= f2 * 0.5f) {
                return qo3Var.f28592c;
            }
        }
        if (this.f29078c.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<qo3> arrayList = this.f29078c;
        return arrayList.get(arrayList.size() - 1).f28592c;
    }
}
