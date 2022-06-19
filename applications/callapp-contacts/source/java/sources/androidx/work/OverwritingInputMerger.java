package androidx.work;

import androidx.work.C2992d;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends AbstractC2998i {
    @Override // androidx.work.AbstractC2998i
    /* renamed from: a */
    public final C2992d mo39492a(List<C2992d> list) {
        C2992d.C2993a c2993a = new C2992d.C2993a();
        HashMap hashMap = new HashMap();
        for (C2992d c2992d : list) {
            hashMap.putAll(Collections.unmodifiableMap(c2992d.f11151b));
        }
        c2993a.m39494a(hashMap);
        return c2993a.m39502a();
    }
}
