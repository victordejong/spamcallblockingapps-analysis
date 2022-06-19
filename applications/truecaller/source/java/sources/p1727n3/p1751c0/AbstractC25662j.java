package p1727n3.p1751c0;

import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: n3.c0.j */
/* loaded from: classes-dex2jar.jar:n3/c0/j.class */
public abstract class AbstractC25662j<T> extends AbstractC25646c0 {
    public AbstractC25662j(AbstractC25677q abstractC25677q) {
        super(abstractC25677q);
    }

    /* renamed from: a */
    public final int m3081a(T t) {
        AbstractC26154f acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.m2673A();
        } finally {
            release(acquire);
        }
    }

    public abstract void bind(AbstractC26154f abstractC26154f, T t);
}
