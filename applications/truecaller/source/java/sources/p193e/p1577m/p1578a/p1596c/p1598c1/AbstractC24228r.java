package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
/* renamed from: e.m.a.c.c1.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/r.class */
public abstract class AbstractC24228r implements AbstractC24213l {

    /* renamed from: b */
    public AbstractC24213l.C24214a f67067b;

    /* renamed from: c */
    public AbstractC24213l.C24214a f67068c;

    /* renamed from: d */
    public AbstractC24213l.C24214a f67069d;

    /* renamed from: e */
    public AbstractC24213l.C24214a f67070e;

    /* renamed from: f */
    public ByteBuffer f67071f;

    /* renamed from: g */
    public ByteBuffer f67072g;

    /* renamed from: h */
    public boolean f67073h;

    public AbstractC24228r() {
        ByteBuffer byteBuffer = AbstractC24213l.f67021a;
        this.f67071f = byteBuffer;
        this.f67072g = byteBuffer;
        AbstractC24213l.C24214a c24214a = AbstractC24213l.C24214a.f67022e;
        this.f67069d = c24214a;
        this.f67070e = c24214a;
        this.f67067b = c24214a;
        this.f67068c = c24214a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: a */
    public final AbstractC24213l.C24214a mo5436a(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b {
        this.f67069d = c24214a;
        this.f67070e = mo5400g(c24214a);
        return mo5402b() ? this.f67070e : AbstractC24213l.C24214a.f67022e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: b */
    public boolean mo5402b() {
        return this.f67070e != AbstractC24213l.C24214a.f67022e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: c */
    public boolean mo5435c() {
        return this.f67073h && this.f67072g == AbstractC24213l.f67021a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: e */
    public final void mo5434e() {
        this.f67073h = true;
        mo5398i();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    /* renamed from: f */
    public ByteBuffer mo5433f() {
        ByteBuffer byteBuffer = this.f67072g;
        this.f67072g = AbstractC24213l.f67021a;
        return byteBuffer;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    public final void flush() {
        this.f67072g = AbstractC24213l.f67021a;
        this.f67073h = false;
        this.f67067b = this.f67069d;
        this.f67068c = this.f67070e;
        mo5399h();
    }

    /* renamed from: g */
    public abstract AbstractC24213l.C24214a mo5400g(AbstractC24213l.C24214a c24214a) throws AbstractC24213l.C24215b;

    /* renamed from: h */
    public void mo5399h() {
    }

    /* renamed from: i */
    public void mo5398i() {
    }

    /* renamed from: j */
    public void mo5397j() {
    }

    /* renamed from: k */
    public final ByteBuffer m5432k(int i) {
        if (this.f67071f.capacity() < i) {
            this.f67071f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f67071f.clear();
        }
        ByteBuffer byteBuffer = this.f67071f;
        this.f67072g = byteBuffer;
        return byteBuffer;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l
    public final void reset() {
        flush();
        this.f67071f = AbstractC24213l.f67021a;
        AbstractC24213l.C24214a c24214a = AbstractC24213l.C24214a.f67022e;
        this.f67069d = c24214a;
        this.f67070e = c24214a;
        this.f67067b = c24214a;
        this.f67068c = c24214a;
        mo5397j();
    }
}
