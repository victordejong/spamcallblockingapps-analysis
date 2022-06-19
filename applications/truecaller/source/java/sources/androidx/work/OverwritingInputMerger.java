package androidx.work;

import java.util.HashMap;
import java.util.List;
import p1727n3.p1834m0.AbstractC26835k;
import p1727n3.p1834m0.C26829f;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends AbstractC26835k {
    @Override // p1727n3.p1834m0.AbstractC26835k
    /* renamed from: a */
    public C26829f mo1297a(List<C26829f> list) {
        C26829f.C26830a c26830a = new C26829f.C26830a();
        HashMap hashMap = new HashMap();
        for (C26829f c26829f : list) {
            hashMap.putAll(c26829f.m1303d());
        }
        c26830a.m1298b(hashMap);
        return c26830a.m1299a();
    }
}
