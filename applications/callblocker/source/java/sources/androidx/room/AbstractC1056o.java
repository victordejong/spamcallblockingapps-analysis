package androidx.room;

import androidx.p042i.p043a.AbstractC0757f;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.o */
/* loaded from: classes-dex2jar.jar:androidx/room/o.class */
public abstract class AbstractC1056o {

    /* renamed from: a */
    private final AtomicBoolean f3590a = new AtomicBoolean(false);

    /* renamed from: b */
    private final AbstractC1044i f3591b;

    /* renamed from: c */
    private volatile AbstractC0757f f3592c;

    public AbstractC1056o(AbstractC1044i abstractC1044i) {
        this.f3591b = abstractC1044i;
    }

    /* renamed from: a */
    private AbstractC0757f m18240a(boolean z) {
        AbstractC0757f m18237d;
        if (z) {
            if (this.f3592c == null) {
                this.f3592c = m18237d();
            }
            m18237d = this.f3592c;
        } else {
            m18237d = m18237d();
        }
        return m18237d;
    }

    /* renamed from: d */
    private AbstractC0757f m18237d() {
        return this.f3591b.m18296a(mo17781a());
    }

    /* renamed from: a */
    protected abstract String mo17781a();

    /* renamed from: a */
    public void m18241a(AbstractC0757f abstractC0757f) {
        if (abstractC0757f == this.f3592c) {
            this.f3590a.set(false);
        }
    }

    /* renamed from: b */
    protected void m18239b() {
        this.f3591b.m18293e();
    }

    /* renamed from: c */
    public AbstractC0757f m18238c() {
        m18239b();
        return m18240a(this.f3590a.compareAndSet(false, true));
    }
}
