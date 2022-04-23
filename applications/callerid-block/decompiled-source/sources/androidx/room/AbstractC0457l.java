package androidx.room;

import d.r.a.f;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.l */
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
public abstract class AbstractC0457l {

    /* renamed from: a */
    private final AtomicBoolean f2505a = new AtomicBoolean(false);

    /* renamed from: b */
    private final RoomDatabase f2506b;

    /* renamed from: c */
    private volatile f f2507c;

    public AbstractC0457l(RoomDatabase roomDatabase) {
        this.f2506b = roomDatabase;
    }

    /* renamed from: c */
    private f m12252c() {
        return this.f2506b.m12318d(m12251d());
    }

    /* renamed from: e */
    private f m12250e(boolean z) {
        f fVar;
        if (z) {
            if (this.f2507c == null) {
                this.f2507c = m12252c();
            }
            fVar = this.f2507c;
        } else {
            fVar = m12252c();
        }
        return fVar;
    }

    /* renamed from: a */
    public f m12254a() {
        m12253b();
        return m12250e(this.f2505a.compareAndSet(false, true));
    }

    /* renamed from: b */
    protected void m12253b() {
        this.f2506b.m12321a();
    }

    /* renamed from: d */
    protected abstract String m12251d();

    /* renamed from: f */
    public void m12249f(f fVar) {
        if (fVar == this.f2507c) {
            this.f2505a.set(false);
        }
    }
}
