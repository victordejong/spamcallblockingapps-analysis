package p193e.p1545k.p1546a.p1556c.p1564g0;

import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.HashMap;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/i.class */
public abstract class AbstractC23663i extends AbstractC23636b implements Serializable {

    /* renamed from: a */
    public final transient AbstractC23652e0 f65617a;

    /* renamed from: b */
    public final transient C23678p f65618b;

    public AbstractC23663i(AbstractC23652e0 abstractC23652e0, C23678p c23678p) {
        this.f65617a = abstractC23652e0;
        this.f65618b = c23678p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.annotation.Annotation] */
    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: c */
    public final <A extends Annotation> A mo6387c(Class<A> cls) {
        C23678p c23678p = this.f65618b;
        if (c23678p == null) {
            return null;
        }
        HashMap<Class<?>, Annotation> hashMap = c23678p.f65647a;
        return hashMap == null ? null : hashMap.get(cls);
    }

    /* renamed from: f */
    public final void m6386f(boolean z) {
        Member mo6375i = mo6375i();
        if (mo6375i != null) {
            C23914g.m5762e(mo6375i, z);
        }
    }

    /* renamed from: g */
    public abstract Class<?> mo6376g();

    /* renamed from: h */
    public String mo6384h() {
        return mo6376g().getName() + StringConstant.HASH + getName();
    }

    /* renamed from: i */
    public abstract Member mo6375i();

    /* renamed from: j */
    public abstract Object mo6374j(Object obj) throws UnsupportedOperationException, IllegalArgumentException;

    /* renamed from: k */
    public final boolean m6385k(Class<?> cls) {
        C23678p c23678p = this.f65618b;
        boolean z = false;
        if (c23678p == null) {
            return false;
        }
        HashMap<Class<?>, Annotation> hashMap = c23678p.f65647a;
        if (hashMap != null) {
            z = hashMap.containsKey(cls);
        }
        return z;
    }

    /* renamed from: l */
    public abstract AbstractC23636b mo6373l(C23678p c23678p);
}
