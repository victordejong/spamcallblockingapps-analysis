package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;
import p020b.p070r.p071a.AbstractC1780f;
/* renamed from: androidx.room.n */
/* loaded from: classes-dex2jar.jar:androidx/room/n.class */
public abstract class AbstractC1027n {

    /* renamed from: a */
    private final AtomicBoolean f4527a = new AtomicBoolean(false);

    /* renamed from: b */
    private final RoomDatabase f4528b;

    /* renamed from: c */
    private volatile AbstractC1780f f4529c;

    public AbstractC1027n(RoomDatabase roomDatabase) {
        this.f4528b = roomDatabase;
    }

    /* renamed from: c */
    private AbstractC1780f m31217c() {
        return this.f4528b.m31292d(mo30258d());
    }

    /* renamed from: e */
    private AbstractC1780f m31216e(boolean z) {
        AbstractC1780f abstractC1780f;
        if (z) {
            if (this.f4529c == null) {
                this.f4529c = m31217c();
            }
            abstractC1780f = this.f4529c;
        } else {
            abstractC1780f = m31217c();
        }
        return abstractC1780f;
    }

    /* renamed from: a */
    public AbstractC1780f m31219a() {
        m31218b();
        return m31216e(this.f4527a.compareAndSet(false, true));
    }

    /* renamed from: b */
    protected void m31218b() {
        this.f4528b.m31295a();
    }

    /* renamed from: d */
    protected abstract String mo30258d();

    /* renamed from: f */
    public void m31215f(AbstractC1780f abstractC1780f) {
        if (abstractC1780f == this.f4529c) {
            this.f4527a.set(false);
        }
    }
}
