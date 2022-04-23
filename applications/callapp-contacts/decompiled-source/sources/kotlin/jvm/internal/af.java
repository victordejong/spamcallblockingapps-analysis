package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<Object> f36784a;

    public af(int i) {
        this.f36784a = new ArrayList<>(i);
    }

    public final void a(Object obj) {
        if (obj != null) {
            if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                if (objArr.length > 0) {
                    ArrayList<Object> arrayList = this.f36784a;
                    arrayList.ensureCapacity(arrayList.size() + objArr.length);
                    Collections.addAll(this.f36784a, objArr);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
        }
    }

    public final Object[] a(Object[] objArr) {
        return this.f36784a.toArray(objArr);
    }

    public final void b(Object obj) {
        this.f36784a.add(obj);
    }
}
