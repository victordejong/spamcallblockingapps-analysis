package com.appnext.base.moments.operations.imp;

import com.appnext.base.moments.p011a.p012a.C0484b;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/operations/imp/acap$CollectedDataModelByDateComparator.class */
public class acap$CollectedDataModelByDateComparator implements Comparator<C0484b> {
    @Override // java.util.Comparator
    public /* synthetic */ int compare(C0484b c0484b, C0484b c0484b2) {
        return c0484b.m42547W().getTime() > c0484b2.m42547W().getTime() ? 1 : 0;
    }
}
