package com.cocosw.bottomsheet;

import com.cocosw.bottomsheet.C1604j;
import java.util.Comparator;
/* renamed from: com.cocosw.bottomsheet.k */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/k.class */
public class C1607k implements Comparator<C1604j.C1606b> {
    public C1607k(C1604j c1604j) {
    }

    @Override // java.util.Comparator
    public int compare(C1604j.C1606b c1606b, C1604j.C1606b c1606b2) {
        int i = c1606b.f5970a;
        int i2 = c1606b2.f5970a;
        return i == i2 ? 0 : i < i2 ? -1 : 1;
    }
}
