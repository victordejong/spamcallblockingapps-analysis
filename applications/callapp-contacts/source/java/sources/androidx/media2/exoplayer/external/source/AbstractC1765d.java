package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.HashMap;
/* renamed from: androidx.media2.exoplayer.external.source.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d.class */
public abstract class AbstractC1765d<T> extends AbstractC1762b {

    /* renamed from: a */
    private final HashMap<T, C1767b> f6979a = new HashMap<>();

    /* renamed from: b */
    private Handler f6980b;

    /* renamed from: c */
    private AbstractC1990w f6981c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d$a.class */
    public final class C1766a implements AbstractC1845u {

        /* renamed from: b */
        private final T f6983b;

        /* renamed from: c */
        private AbstractC1845u.C1846a f6984c;

        public C1766a(T t) {
            AbstractC1765d.this = r5;
            this.f6984c = r5.m42284a((AbstractC1842t.C1843a) null);
            this.f6983b = t;
        }

        /* renamed from: a */
        private AbstractC1845u.C1849c m42274a(AbstractC1845u.C1849c c1849c) {
            long mo42280a = AbstractC1765d.this.mo42280a(c1849c.f7378f);
            long mo42280a2 = AbstractC1765d.this.mo42280a(c1849c.f7379g);
            return (mo42280a == c1849c.f7378f && mo42280a2 == c1849c.f7379g) ? c1849c : new AbstractC1845u.C1849c(c1849c.f7373a, c1849c.f7374b, c1849c.f7375c, c1849c.f7376d, c1849c.f7377e, mo42280a, mo42280a2);
        }

        /* renamed from: d */
        private boolean m42273d(int i, AbstractC1842t.C1843a c1843a) {
            AbstractC1842t.C1843a c1843a2;
            if (c1843a != null) {
                AbstractC1842t.C1843a mo42101a = AbstractC1765d.this.mo42101a((AbstractC1765d) this.f6983b, c1843a);
                c1843a2 = mo42101a;
                if (mo42101a == null) {
                    return false;
                }
            } else {
                c1843a2 = null;
            }
            int mo42264a = AbstractC1765d.this.mo42264a((AbstractC1765d) this.f6983b, i);
            if (this.f6984c.f7361a != mo42264a || !C1996ac.m41658a(this.f6984c.f7362b, c1843a2)) {
                this.f6984c = AbstractC1765d.this.m42286a(mo42264a, c1843a2);
                return true;
            }
            return true;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: a */
        public final void mo42062a(int i, AbstractC1842t.C1843a c1843a) {
            if (!m42273d(i, c1843a) || !AbstractC1765d.this.mo42099b((AbstractC1842t.C1843a) C1993a.m41690a(this.f6984c.f7362b))) {
                return;
            }
            this.f6984c.m42054a();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: a */
        public final void mo42061a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42049a(c1848b, m42274a(c1849c));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: a */
        public final void mo42060a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c, IOException iOException, boolean z) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42048a(c1848b, m42274a(c1849c), iOException, z);
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: a */
        public final void mo42059a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1849c c1849c) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42047a(m42274a(c1849c));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: b */
        public final void mo42058b(int i, AbstractC1842t.C1843a c1843a) {
            if (!m42273d(i, c1843a) || !AbstractC1765d.this.mo42099b((AbstractC1842t.C1843a) C1993a.m41690a(this.f6984c.f7362b))) {
                return;
            }
            this.f6984c.m42040b();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: b */
        public final void mo42057b(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42039b(c1848b, m42274a(c1849c));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: c */
        public final void mo42056c(int i, AbstractC1842t.C1843a c1843a) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42036c();
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: c */
        public final void mo42055c(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
            if (m42273d(i, c1843a)) {
                this.f6984c.m42035c(c1848b, m42274a(c1849c));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d$b.class */
    public static final class C1767b {

        /* renamed from: a */
        public final AbstractC1842t f6985a;

        /* renamed from: b */
        public final AbstractC1842t.AbstractC1844b f6986b;

        /* renamed from: c */
        public final AbstractC1845u f6987c;

        public C1767b(AbstractC1842t abstractC1842t, AbstractC1842t.AbstractC1844b abstractC1844b, AbstractC1845u abstractC1845u) {
            this.f6985a = abstractC1842t;
            this.f6986b = abstractC1844b;
            this.f6987c = abstractC1845u;
        }
    }

    /* renamed from: a */
    protected int mo42264a(T t, int i) {
        return i;
    }

    /* renamed from: a */
    protected long mo42280a(long j) {
        return j;
    }

    /* renamed from: a */
    protected AbstractC1842t.C1843a mo42101a(T t, AbstractC1842t.C1843a c1843a) {
        return c1843a;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    protected void mo42272a() {
        for (C1767b c1767b : this.f6979a.values()) {
            c1767b.f6985a.mo42071a(c1767b.f6986b);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public void mo42102a(AbstractC1990w abstractC1990w) {
        this.f6981c = abstractC1990w;
        this.f6980b = new Handler();
    }

    /* renamed from: a */
    public final void m42279a(T t) {
        C1767b c1767b = (C1767b) C1993a.m41690a(this.f6979a.get(t));
        c1767b.f6985a.mo42071a(c1767b.f6986b);
    }

    /* renamed from: a */
    public final void m42278a(T t, AbstractC1842t abstractC1842t) {
        C1993a.m41688a(!this.f6979a.containsKey(t));
        AbstractC1842t.AbstractC1844b abstractC1844b = new AbstractC1842t.AbstractC1844b(this, t) { // from class: androidx.media2.exoplayer.external.source.e

            /* renamed from: a */
            private final AbstractC1765d f6988a;

            /* renamed from: b */
            private final Object f6989b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6988a = this;
                this.f6989b = t;
            }

            @Override // androidx.media2.exoplayer.external.source.AbstractC1842t.AbstractC1844b
            /* renamed from: a */
            public final void mo41802a(AbstractC1842t abstractC1842t2, AbstractC1383al abstractC1383al) {
                this.f6988a.m42276b(this.f6989b, abstractC1842t2, abstractC1383al);
            }
        };
        C1766a c1766a = new C1766a(t);
        this.f6979a.put(t, new C1767b(abstractC1842t, abstractC1844b, c1766a));
        abstractC1842t.mo42074a((Handler) C1993a.m41690a(this.f6980b), c1766a);
        abstractC1842t.mo42070a(abstractC1844b, this.f6981c);
        if (!m42283d()) {
            abstractC1842t.mo42068b(abstractC1844b);
        }
    }

    /* renamed from: a */
    protected abstract void mo42100a(T t, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al);

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: b */
    public void mo42261b() {
        for (C1767b c1767b : this.f6979a.values()) {
            c1767b.f6985a.mo42068b(c1767b.f6986b);
        }
    }

    /* renamed from: b */
    public final void m42277b(T t) {
        C1767b c1767b = (C1767b) C1993a.m41690a(this.f6979a.get(t));
        c1767b.f6985a.mo42068b(c1767b.f6986b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final /* synthetic */ void m42276b(Object obj, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        mo42100a((AbstractC1765d<T>) obj, abstractC1842t, abstractC1383al);
    }

    /* renamed from: b */
    protected boolean mo42099b(AbstractC1842t.C1843a c1843a) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public void mo42097c() {
        for (C1767b c1767b : this.f6979a.values()) {
            c1767b.f6985a.mo42067c(c1767b.f6986b);
            c1767b.f6985a.mo42069a(c1767b.f6987c);
        }
        this.f6979a.clear();
    }

    /* renamed from: c */
    public final void m42275c(T t) {
        C1767b c1767b = (C1767b) C1993a.m41690a(this.f6979a.remove(t));
        c1767b.f6985a.mo42067c(c1767b.f6986b);
        c1767b.f6985a.mo42069a(c1767b.f6987c);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public void mo42065f() throws IOException {
        for (C1767b c1767b : this.f6979a.values()) {
            c1767b.f6985a.mo42065f();
        }
    }
}
