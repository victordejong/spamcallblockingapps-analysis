package androidx.work;

import androidx.work.C0680b;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p186o1.AbstractC3822f;
/* loaded from: classes-dex2jar.jar:androidx/work/OverwritingInputMerger.class */
public final class OverwritingInputMerger extends AbstractC3822f {
    @Override // p186o1.AbstractC3822f
    /* renamed from: a */
    public C0680b mo1775a(List<C0680b> list) {
        C0680b.C0681a c0681a = new C0680b.C0681a();
        HashMap hashMap = new HashMap();
        for (C0680b c0680b : list) {
            hashMap.putAll(Collections.unmodifiableMap(c0680b.f2640a));
        }
        c0681a.m7481b(hashMap);
        return c0681a.m7482a();
    }
}
