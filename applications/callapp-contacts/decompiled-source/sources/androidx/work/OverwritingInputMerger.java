package androidx.work;

import androidx.work.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends i {
    @Override // androidx.work.i
    public final d a(List<d> list) {
        d.a aVar = new d.a();
        HashMap hashMap = new HashMap();
        for (d dVar : list) {
            hashMap.putAll(Collections.unmodifiableMap(dVar.f5978b));
        }
        aVar.a(hashMap);
        return aVar.a();
    }
}
