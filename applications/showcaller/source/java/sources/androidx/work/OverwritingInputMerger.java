package androidx.work;

import androidx.work.C1238d;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends AbstractC1243h {
    @Override // androidx.work.AbstractC1243h
    /* renamed from: b */
    public C1238d mo30537b(List<C1238d> list) {
        C1238d.C1239a c1239a = new C1238d.C1239a();
        HashMap hashMap = new HashMap();
        for (C1238d c1238d : list) {
            hashMap.putAll(c1238d.m30551h());
        }
        c1239a.m30544d(hashMap);
        return c1239a.m30547a();
    }
}
