package io.reactivex.internal.util;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/LinkedArrayList.class */
public class LinkedArrayList {

    /* renamed from: a */
    final int f19423a;

    /* renamed from: b */
    Object[] f19424b;

    /* renamed from: c */
    volatile int f19425c;

    /* renamed from: a */
    public Object[] m3427a() {
        return this.f19424b;
    }

    public String toString() {
        int i = this.f19423a;
        int i2 = this.f19425c;
        ArrayList arrayList = new ArrayList(i2 + 1);
        Object[] a = m3427a();
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i3 < i2) {
                arrayList.add(a[i4]);
                i3++;
                int i5 = i4 + 1;
                i3 = i3;
                i4 = i5;
                if (i5 == i) {
                    break;
                }
            }
            return arrayList.toString();
            a = a[i];
        }
    }
}
