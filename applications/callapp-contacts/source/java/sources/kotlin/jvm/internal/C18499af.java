package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collections;
/* renamed from: kotlin.jvm.internal.af */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/af.class */
public final class C18499af {

    /* renamed from: a */
    public final ArrayList<Object> f63593a;

    public C18499af(int i) {
        this.f63593a = new ArrayList<>(i);
    }

    /* renamed from: a */
    public final void m3880a(Object obj) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof Object[])) {
            throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
        }
        Object[] objArr = (Object[]) obj;
        if (objArr.length <= 0) {
            return;
        }
        ArrayList<Object> arrayList = this.f63593a;
        arrayList.ensureCapacity(arrayList.size() + objArr.length);
        Collections.addAll(this.f63593a, objArr);
    }

    /* renamed from: a */
    public final Object[] m3879a(Object[] objArr) {
        return this.f63593a.toArray(objArr);
    }

    /* renamed from: b */
    public final void m3878b(Object obj) {
        this.f63593a.add(obj);
    }
}
