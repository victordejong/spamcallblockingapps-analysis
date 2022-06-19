package com.google.protobuf;

import com.google.protobuf.C1886h;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.protobuf.b0 */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/b0.class */
public final class C1863b0 extends C1865c0<C1886h.AbstractC1887a<Object>, Object> {
    public C1863b0(int i) {
        super(i, null);
    }

    @Override // com.google.protobuf.C1865c0
    /* renamed from: g */
    public void mo4340g() {
        if (!this.f7044d) {
            for (int i = 0; i < m4343d(); i++) {
                Map.Entry<C1886h.AbstractC1887a<Object>, Object> m4344c = m4344c(i);
                if (m4344c.getKey().mo4274z()) {
                    m4344c.setValue(Collections.unmodifiableList((List) m4344c.getValue()));
                }
            }
            for (Map.Entry<C1886h.AbstractC1887a<Object>, Object> entry : m4342e()) {
                if (entry.getKey().mo4274z()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo4340g();
    }

    @Override // com.google.protobuf.C1865c0, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((C1886h.AbstractC1887a) obj, obj2);
    }
}
