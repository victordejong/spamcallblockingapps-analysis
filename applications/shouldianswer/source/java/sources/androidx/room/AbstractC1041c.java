package androidx.room;

import androidx.p042i.p043a.AbstractC0786f;
/* renamed from: androidx.room.c */
/* loaded from: classes-dex2jar.jar:androidx/room/c.class */
public abstract class AbstractC1041c<T> extends AbstractC1075p {
    public AbstractC1041c(AbstractC1063j abstractC1063j) {
        super(abstractC1063j);
    }

    /* renamed from: a */
    protected abstract void mo954a(AbstractC0786f abstractC0786f, T t);

    /* renamed from: a */
    public final void m4482a(T t) {
        AbstractC0786f c = m4393c();
        try {
            mo954a(c, t);
            c.mo5353b();
        } finally {
            m4396a(c);
        }
    }

    /* renamed from: a */
    public final void m4481a(T[] tArr) {
        AbstractC0786f c = m4393c();
        try {
            for (T t : tArr) {
                mo954a(c, t);
                c.mo5353b();
            }
        } finally {
            m4396a(c);
        }
    }
}
