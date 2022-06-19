package p073d8;

import java.lang.reflect.Type;
import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
import p233s6.AbstractC4314i;
import p234s7.AbstractC4321a;
import p234s7.C4322b;
import p293y2.C4996m;
/* renamed from: d8.b */
/* loaded from: classes2-dex2jar.jar:d8/b.class */
public abstract class AbstractC2487b<T extends AbstractC4314i> implements AbstractC4321a<T> {

    /* renamed from: a */
    public Class<? extends AbstractC4314i> f8733a;

    public AbstractC2487b(Class<? extends T> cls) {
        this.f8733a = cls;
    }

    @Override // p234s7.AbstractC4321a
    /* renamed from: a */
    public AbstractFutureC3655c<T> mo1100a(AbstractC3360m abstractC3360m) {
        String mo937f = abstractC3360m.mo937f();
        AbstractFutureC3655c<C3358l> mo1100a = new C4322b().mo1100a(abstractC3360m);
        return ((C3661g) mo1100a).m1910t(new C4996m(this, mo937f, 4));
    }

    /* renamed from: b */
    public Type m3514b() {
        return this.f8733a;
    }
}
