package androidx.room;

import androidx.p042i.p043a.AbstractC0786f;
/* renamed from: androidx.room.b */
/* loaded from: classes-dex2jar.jar:androidx/room/b.class */
public abstract class AbstractC1031b<T> extends AbstractC1075p {
    public AbstractC1031b(AbstractC1063j abstractC1063j) {
        super(abstractC1063j);
    }

    /* renamed from: a */
    public final int m4501a(T t) {
        AbstractC0786f c = m4393c();
        try {
            mo975a(c, t);
            return c.mo5354a();
        } finally {
            m4396a(c);
        }
    }

    @Override // androidx.room.AbstractC1075p
    /* renamed from: a */
    protected abstract String mo952a();

    /* renamed from: a */
    protected abstract void mo975a(AbstractC0786f abstractC0786f, T t);
}
