package androidx.room;

import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.room.b */
/* loaded from: classes-dex2jar.jar:androidx/room/b.class */
public abstract class AbstractC0998b<T> extends AbstractC1027n {
    public AbstractC0998b(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    /* renamed from: g */
    protected abstract void mo30257g(AbstractC1780f abstractC1780f, T t);

    /* renamed from: h */
    public final void m31264h(T t) {
        AbstractC1780f m31219a = m31219a();
        try {
            mo30257g(m31219a, t);
            m31219a.mo28896j0();
        } finally {
            m31215f(m31219a);
        }
    }
}
