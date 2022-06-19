package androidx.room;

import androidx.p042i.p043a.AbstractC0757f;
/* renamed from: androidx.room.b */
/* loaded from: classes-dex2jar.jar:androidx/room/b.class */
public abstract class AbstractC1012b<T> extends AbstractC1056o {
    public AbstractC1012b(AbstractC1044i abstractC1044i) {
        super(abstractC1044i);
    }

    /* renamed from: a */
    protected abstract void mo17779a(AbstractC0757f abstractC0757f, T t);

    /* renamed from: a */
    public final void m18353a(T t) {
        AbstractC0757f c = m18238c();
        try {
            mo17779a(c, t);
            c.mo19504b();
        } finally {
            m18241a(c);
        }
    }
}
