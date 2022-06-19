package com.google.protobuf;

import com.google.protobuf.C1911q;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.protobuf.t */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/t.class */
public class C1915t implements AbstractC1914s {
    @Override // com.google.protobuf.AbstractC1914s
    /* renamed from: a */
    public Object mo4246a(Object obj, Object obj2) {
        C1913r c1913r = (C1913r) obj;
        C1913r c1913r2 = (C1913r) obj2;
        C1913r c1913r3 = c1913r;
        if (!c1913r2.isEmpty()) {
            C1913r c1913r4 = c1913r;
            if (!c1913r.f7112a) {
                c1913r4 = c1913r.m4247c();
            }
            c1913r4.m4248b();
            c1913r3 = c1913r4;
            if (!c1913r2.isEmpty()) {
                c1913r4.putAll(c1913r2);
                c1913r3 = c1913r4;
            }
        }
        return c1913r3;
    }

    @Override // com.google.protobuf.AbstractC1914s
    /* renamed from: b */
    public int mo4245b(int i, Object obj, Object obj2) {
        C1913r c1913r = (C1913r) obj;
        C1911q c1911q = (C1911q) obj2;
        int i2 = 0;
        int i3 = 0;
        if (!c1913r.isEmpty()) {
            Iterator it2 = c1913r.entrySet().iterator();
            while (true) {
                i2 = i3;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                Object key = entry.getKey();
                Object value = entry.getValue();
                Objects.requireNonNull(c1911q);
                i3 += CodedOutputStream.m4438Z(C1911q.m4251a(c1911q.f7104a, key, value)) + CodedOutputStream.m4429i0(i);
            }
        }
        return i2;
    }

    @Override // com.google.protobuf.AbstractC1914s
    /* renamed from: c */
    public Object mo4244c(Object obj) {
        ((C1913r) obj).f7112a = false;
        return obj;
    }

    @Override // com.google.protobuf.AbstractC1914s
    /* renamed from: d */
    public C1911q.C1912a<?, ?> mo4243d(Object obj) {
        return ((C1911q) obj).f7104a;
    }

    @Override // com.google.protobuf.AbstractC1914s
    /* renamed from: e */
    public Map<?, ?> mo4242e(Object obj) {
        return (C1913r) obj;
    }
}
