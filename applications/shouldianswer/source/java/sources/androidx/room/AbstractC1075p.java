package androidx.room;

import androidx.p042i.p043a.AbstractC0786f;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.p */
/* loaded from: classes-dex2jar.jar:androidx/room/p.class */
public abstract class AbstractC1075p {

    /* renamed from: a */
    private final AtomicBoolean f3380a = new AtomicBoolean(false);

    /* renamed from: b */
    private final AbstractC1063j f3381b;

    /* renamed from: c */
    private volatile AbstractC0786f f3382c;

    public AbstractC1075p(AbstractC1063j abstractC1063j) {
        this.f3381b = abstractC1063j;
    }

    /* renamed from: a */
    private AbstractC0786f m4395a(boolean z) {
        AbstractC0786f abstractC0786f;
        if (z) {
            if (this.f3382c == null) {
                this.f3382c = m4392d();
            }
            abstractC0786f = this.f3382c;
        } else {
            abstractC0786f = m4392d();
        }
        return abstractC0786f;
    }

    /* renamed from: d */
    private AbstractC0786f m4392d() {
        return this.f3381b.m4445a(mo952a());
    }

    /* renamed from: a */
    protected abstract String mo952a();

    /* renamed from: a */
    public void m4396a(AbstractC0786f abstractC0786f) {
        if (abstractC0786f == this.f3382c) {
            this.f3380a.set(false);
        }
    }

    /* renamed from: b */
    protected void m4394b() {
        this.f3381b.m4442e();
    }

    /* renamed from: c */
    public AbstractC0786f m4393c() {
        m4394b();
        return m4395a(this.f3380a.compareAndSet(false, true));
    }
}
