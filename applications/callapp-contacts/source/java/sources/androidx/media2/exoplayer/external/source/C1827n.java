package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.C1536e;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1983q;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
@Deprecated
/* renamed from: androidx.media2.exoplayer.external.source.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n.class */
public final class C1827n extends AbstractC1765d<Void> {

    /* renamed from: a */
    private final C1749ai f7320a;

    @Deprecated
    /* renamed from: androidx.media2.exoplayer.external.source.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$a.class */
    public interface AbstractC1829a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: androidx.media2.exoplayer.external.source.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$b.class */
    public static final class C1830b extends AbstractC1825l {

        /* renamed from: a */
        private final AbstractC1829a f7321a;

        public C1830b(AbstractC1829a abstractC1829a) {
            this.f7321a = (AbstractC1829a) C1993a.m41690a(abstractC1829a);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1825l, androidx.media2.exoplayer.external.source.AbstractC1845u
        /* renamed from: a */
        public final void mo42060a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c, IOException iOException, boolean z) {
        }
    }

    @Deprecated
    /* renamed from: androidx.media2.exoplayer.external.source.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$c.class */
    public static final class C1831c implements AbstractC1728ad {

        /* renamed from: a */
        private final AbstractC1968f.AbstractC1969a f7322a;

        /* renamed from: b */
        private AbstractC1602j f7323b;

        /* renamed from: c */
        private String f7324c;

        /* renamed from: d */
        private Object f7325d;

        /* renamed from: e */
        private AbstractC1986t f7326e = new C1983q();

        /* renamed from: f */
        private int f7327f = 1048576;

        /* renamed from: g */
        private boolean f7328g;

        public C1831c(AbstractC1968f.AbstractC1969a abstractC1969a) {
            this.f7322a = abstractC1969a;
        }

        /* renamed from: a */
        public final C1831c m42114a(AbstractC1602j abstractC1602j) {
            C1993a.m41686b(!this.f7328g);
            this.f7323b = abstractC1602j;
            return this;
        }

        /* renamed from: a */
        public final C1831c m42113a(Object obj) {
            C1993a.m41686b(!this.f7328g);
            this.f7325d = obj;
            return this;
        }

        /* renamed from: a */
        public final C1827n mo42112b(Uri uri) {
            this.f7328g = true;
            if (this.f7323b == null) {
                this.f7323b = new C1536e();
            }
            return new C1827n(uri, this.f7322a, this.f7323b, this.f7326e, this.f7324c, this.f7327f, this.f7325d);
        }
    }

    @Deprecated
    public C1827n(Uri uri, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j, Handler handler, AbstractC1829a abstractC1829a) {
        this(uri, abstractC1969a, abstractC1602j, handler, abstractC1829a, null);
    }

    @Deprecated
    public C1827n(Uri uri, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j, Handler handler, AbstractC1829a abstractC1829a, String str) {
        this(uri, abstractC1969a, abstractC1602j, handler, abstractC1829a, str, 1048576);
    }

    @Deprecated
    public C1827n(Uri uri, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j, Handler handler, AbstractC1829a abstractC1829a, String str, int i) {
        this(uri, abstractC1969a, abstractC1602j, new C1983q(), str, i, (Object) null);
        if (abstractC1829a == null || handler == null) {
            return;
        }
        mo42074a(handler, new C1830b(abstractC1829a));
    }

    private C1827n(Uri uri, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j, AbstractC1986t abstractC1986t, String str, int i, Object obj) {
        this.f7320a = new C1749ai(uri, abstractC1969a, abstractC1602j, AbstractC1468k.f5584e, abstractC1986t, str, i, obj);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        return this.f7320a.mo42072a(c1843a, abstractC1963b, j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        this.f7320a.mo42073a(abstractC1840s);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        super.mo42102a(abstractC1990w);
        m42278a((C1827n) null, this.f7320a);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ void mo42100a(Void r4, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        m42285a(abstractC1383al);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f7320a.f6889a;
    }
}
