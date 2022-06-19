package androidx.work;

import androidx.work.C1133e;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends AbstractC1290j {
    @Override // androidx.work.AbstractC1290j
    /* renamed from: a */
    public C1133e mo17547a(List<C1133e> list) {
        C1133e.C1134a c1134a = new C1133e.C1134a();
        HashMap hashMap = new HashMap();
        for (C1133e c1133e : list) {
            hashMap.putAll(c1133e.m17923a());
        }
        c1134a.m17908a(hashMap);
        return c1134a.m17912a();
    }
}
