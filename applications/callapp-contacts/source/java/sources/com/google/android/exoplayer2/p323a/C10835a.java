package com.google.android.exoplayer2.p323a;

import android.os.Looper;
import android.util.SparseArray;
import android.view.Surface;
import com.facebook.ads.AdError;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.audio.AbstractC10893f;
import com.google.android.exoplayer2.audio.C10889d;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p323a.AbstractC10837b;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.source.C11311o;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11613m;
import com.google.android.exoplayer2.util.C11623r;
import com.google.android.exoplayer2.video.AbstractC11663l;
import com.google.common.base.C15386j;
import com.google.common.collect.AbstractC15549v;
import com.google.common.collect.AbstractC15556x;
import com.google.common.collect.C15403ab;
import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/a.class */
public final class C10835a implements AbstractC10842ac.AbstractC10843a, AbstractC10893f, AbstractC10955c, AbstractC11318s, AbstractC11534c.AbstractC11535a, AbstractC11663l {

    /* renamed from: a */
    public final C10836a f34866a;

    /* renamed from: b */
    public AbstractC10842ac f34867b;

    /* renamed from: c */
    private final AbstractC11603c f34868c;

    /* renamed from: d */
    private final AbstractC10864al.C10866a f34869d;

    /* renamed from: e */
    private final AbstractC10864al.C10867b f34870e = new AbstractC10864al.C10867b();

    /* renamed from: f */
    private final SparseArray<AbstractC10837b.C10838a> f34871f = new SparseArray<>();

    /* renamed from: g */
    private C11613m<AbstractC10837b, AbstractC10837b.C10839b> f34872g;

    /* renamed from: h */
    private boolean f34873h;

    /* renamed from: com.google.android.exoplayer2.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/a$a.class */
    public static final class C10836a {

        /* renamed from: a */
        public final AbstractC10864al.C10866a f34874a;

        /* renamed from: c */
        public AbstractC11315r.C11316a f34876c;

        /* renamed from: d */
        public AbstractC11315r.C11316a f34877d;

        /* renamed from: e */
        public AbstractC11315r.C11316a f34878e;

        /* renamed from: b */
        public AbstractC15549v<AbstractC11315r.C11316a> f34875b = AbstractC15549v.m8720g();

        /* renamed from: f */
        private AbstractC15556x<AbstractC11315r.C11316a, AbstractC10864al> f34879f = AbstractC15556x.m8704a();

        public C10836a(AbstractC10864al.C10866a c10866a) {
            this.f34874a = c10866a;
        }

        /* renamed from: a */
        public static AbstractC11315r.C11316a m22243a(AbstractC10842ac abstractC10842ac, AbstractC15549v<AbstractC11315r.C11316a> abstractC15549v, AbstractC11315r.C11316a c11316a, AbstractC10864al.C10866a c10866a) {
            AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
            int mo21112x = abstractC10842ac.mo21112x();
            Object mo20948a = mo21176K.m22178c() ? null : mo21176K.mo20948a(mo21112x);
            int m22170b = (abstractC10842ac.mo21184C() || mo21176K.m22178c()) ? -1 : mo21176K.mo20947a(mo21112x, c10866a, false).m22170b(C11158f.m21372b(abstractC10842ac.mo21186A()) - c10866a.f35002e);
            for (int i = 0; i < abstractC15549v.size(); i++) {
                AbstractC11315r.C11316a c11316a2 = abstractC15549v.get(i);
                if (m22240a(c11316a2, mo20948a, abstractC10842ac.mo21184C(), abstractC10842ac.mo21183D(), abstractC10842ac.mo21182E(), m22170b)) {
                    return c11316a2;
                }
            }
            if (!abstractC15549v.isEmpty() || c11316a == null || !m22240a(c11316a, mo20948a, abstractC10842ac.mo21184C(), abstractC10842ac.mo21183D(), abstractC10842ac.mo21182E(), m22170b)) {
                return null;
            }
            return c11316a;
        }

        /* renamed from: a */
        private void m22239a(AbstractC15556x.C15557a<AbstractC11315r.C11316a, AbstractC10864al> c15557a, AbstractC11315r.C11316a c11316a, AbstractC10864al abstractC10864al) {
            if (c11316a == null) {
                return;
            }
            if (abstractC10864al.mo20945c(c11316a.f37148a) != -1) {
                c15557a.m8693a(c11316a, abstractC10864al);
                return;
            }
            AbstractC10864al abstractC10864al2 = this.f34879f.get(c11316a);
            if (abstractC10864al2 == null) {
                return;
            }
            c15557a.m8693a(c11316a, abstractC10864al2);
        }

        /* renamed from: a */
        private static boolean m22240a(AbstractC11315r.C11316a c11316a, Object obj, boolean z, int i, int i2, int i3) {
            if (!c11316a.f37148a.equals(obj)) {
                return false;
            }
            if (z && c11316a.f37149b == i && c11316a.f37150c == i2) {
                return true;
            }
            return !z && c11316a.f37149b == -1 && c11316a.f37152e == i3;
        }

        /* renamed from: a */
        public final AbstractC10864al m22241a(AbstractC11315r.C11316a c11316a) {
            return this.f34879f.get(c11316a);
        }

        /* renamed from: a */
        public final void m22242a(AbstractC10864al abstractC10864al) {
            AbstractC15556x.C15557a<AbstractC11315r.C11316a, AbstractC10864al> m8702b = AbstractC15556x.m8702b();
            if (this.f34875b.isEmpty()) {
                m22239a(m8702b, this.f34877d, abstractC10864al);
                if (!C15386j.m8951a(this.f34878e, this.f34877d)) {
                    m22239a(m8702b, this.f34878e, abstractC10864al);
                }
                if (!C15386j.m8951a(this.f34876c, this.f34877d) && !C15386j.m8951a(this.f34876c, this.f34878e)) {
                    m22239a(m8702b, this.f34876c, abstractC10864al);
                }
            } else {
                for (int i = 0; i < this.f34875b.size(); i++) {
                    m22239a(m8702b, this.f34875b.get(i), abstractC10864al);
                }
                if (!this.f34875b.contains(this.f34876c)) {
                    m22239a(m8702b, this.f34876c, abstractC10864al);
                }
            }
            this.f34879f = m8702b.m8695a();
        }
    }

    public C10835a(AbstractC11603c abstractC11603c) {
        this.f34868c = (AbstractC11603c) C11593a.m20020b(abstractC11603c);
        this.f34872g = new C11613m<>(C11599af.m19936c(), abstractC11603c, _$$Lambda$nugrN4gUgxZMGEMKGuuRSjJR39g.INSTANCE, _$$Lambda$a$frR0oeVoxOVQZPyIzp0c_vP6ZtE.INSTANCE);
        AbstractC10864al.C10866a c10866a = new AbstractC10864al.C10866a();
        this.f34869d = c10866a;
        this.f34866a = new C10836a(c10866a);
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    @RequiresNonNull({"player"})
    /* renamed from: a */
    private AbstractC10837b.C10838a m22277a(AbstractC10864al abstractC10864al, int i, AbstractC11315r.C11316a c11316a) {
        if (abstractC10864al.m22178c()) {
            c11316a = null;
        }
        long mo19910a = this.f34868c.mo19910a();
        boolean z = abstractC10864al.equals(this.f34867b.mo21176K()) && i == this.f34867b.mo21111y();
        char c = 0;
        if (c11316a != null && c11316a.m20944a()) {
            if (z && this.f34867b.mo21183D() == c11316a.f37149b && this.f34867b.mo21182E() == c11316a.f37150c) {
                c = this.f34867b.mo21186A();
            }
        } else if (z) {
            c = this.f34867b.mo21181F();
        } else if (!abstractC10864al.m22178c()) {
            c = C11158f.m21374a(abstractC10864al.mo20853a(i, this.f34870e, 0L).f35020p);
        }
        return new AbstractC10837b.C10838a(mo19910a, abstractC10864al, i, c11316a, c, this.f34867b.mo21176K(), this.f34867b.mo21111y(), this.f34866a.f34876c, this.f34867b.mo21186A(), this.f34867b.mo21185B());
    }

    /* renamed from: a */
    private AbstractC10837b.C10838a m22274a(AbstractC11315r.C11316a c11316a) {
        C11593a.m20020b(this.f34867b);
        AbstractC10864al m22241a = c11316a == null ? null : this.f34866a.m22241a(c11316a);
        if (c11316a == null || m22241a == null) {
            int mo21111y = this.f34867b.mo21111y();
            AbstractC10864al mo21176K = this.f34867b.mo21176K();
            if (!(mo21111y < mo21176K.mo20949a())) {
                mo21176K = AbstractC10864al.f34997b;
            }
            return m22277a(mo21176K, mo21111y, (AbstractC11315r.C11316a) null);
        }
        return m22277a(m22241a, m22241a.mo22180a(c11316a.f37148a, this.f34869d).f35000c, c11316a);
    }

    /* renamed from: a */
    public static /* synthetic */ void m22308a(AbstractC10837b.C10838a c10838a, float f, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22307a(AbstractC10837b.C10838a c10838a, int i, int i2, int i3, float f, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22306a(AbstractC10837b.C10838a c10838a, int i, int i2, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22305a(AbstractC10837b.C10838a c10838a, int i, long j, long j2, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22304a(AbstractC10837b.C10838a c10838a, int i, long j, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22303a(AbstractC10837b.C10838a c10838a, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    private void m22302a(AbstractC10837b.C10838a c10838a, int i, C11613m.AbstractC11614a<AbstractC10837b> abstractC11614a) {
        this.f34871f.put(i, c10838a);
        this.f34872g.m19866b(i, abstractC11614a);
    }

    /* renamed from: a */
    public static /* synthetic */ void m22301a(AbstractC10837b.C10838a c10838a, long j, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22300a(AbstractC10837b.C10838a c10838a, long j, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22299a(AbstractC10837b.C10838a c10838a, Surface surface, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22298a(AbstractC10837b.C10838a c10838a, ExoPlaybackException exoPlaybackException, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22297a(AbstractC10837b.C10838a c10838a, Format format, C10935e c10935e, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22296a(AbstractC10837b.C10838a c10838a, MediaItem mediaItem, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22295a(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22294a(AbstractC10837b.C10838a c10838a, C10840aa c10840aa, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22293a(AbstractC10837b.C10838a c10838a, C10889d c10889d, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22292a(AbstractC10837b.C10838a c10838a, C10934d c10934d, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22291a(AbstractC10837b.C10838a c10838a, Metadata metadata, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22290a(AbstractC10837b.C10838a c10838a, TrackGroupArray trackGroupArray, C11443g c11443g, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22289a(AbstractC10837b.C10838a c10838a, C11305l c11305l, C11311o c11311o, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22288a(AbstractC10837b.C10838a c10838a, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22287a(AbstractC10837b.C10838a c10838a, C11311o c11311o, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22286a(AbstractC10837b.C10838a c10838a, Exception exc, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22285a(AbstractC10837b.C10838a c10838a, String str, long j, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22284a(AbstractC10837b.C10838a c10838a, String str, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22283a(AbstractC10837b.C10838a c10838a, List list, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22282a(AbstractC10837b.C10838a c10838a, boolean z, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22281a(AbstractC10837b.C10838a c10838a, boolean z, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m22280a(AbstractC10837b abstractC10837b, AbstractC10837b.C10839b c10839b) {
    }

    /* renamed from: a */
    public /* synthetic */ void m22278a(AbstractC10842ac abstractC10842ac, AbstractC10837b abstractC10837b, AbstractC10837b.C10839b c10839b) {
        SparseArray<AbstractC10837b.C10838a> sparseArray = this.f34871f;
        c10839b.f34890a.clear();
        for (int i = 0; i < c10839b.f38708b.size(); i++) {
            int mo19837b = c10839b.mo19837b(i);
            c10839b.f34890a.append(mo19837b, (AbstractC10837b.C10838a) C11593a.m20020b(sparseArray.get(mo19837b)));
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m22272b(AbstractC10837b.C10838a c10838a, int i, long j, long j2, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22271b(AbstractC10837b.C10838a c10838a, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22270b(AbstractC10837b.C10838a c10838a, Format format, C10935e c10935e, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22269b(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22268b(AbstractC10837b.C10838a c10838a, C10934d c10934d, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22267b(AbstractC10837b.C10838a c10838a, C11305l c11305l, C11311o c11311o, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22266b(AbstractC10837b.C10838a c10838a, Exception exc, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22265b(AbstractC10837b.C10838a c10838a, String str, long j, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22264b(AbstractC10837b.C10838a c10838a, String str, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22263b(AbstractC10837b.C10838a c10838a, boolean z, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: b */
    public static /* synthetic */ void m22262b(AbstractC10837b.C10838a c10838a, boolean z, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: c */
    public static /* synthetic */ void m22261c(AbstractC10837b.C10838a c10838a, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: c */
    public static /* synthetic */ void m22260c(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: c */
    public static /* synthetic */ void m22259c(AbstractC10837b.C10838a c10838a, C10934d c10934d, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: c */
    public static /* synthetic */ void m22258c(AbstractC10837b.C10838a c10838a, C11305l c11305l, C11311o c11311o, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: c */
    public static /* synthetic */ void m22257c(AbstractC10837b.C10838a c10838a, boolean z, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: d */
    private AbstractC10837b.C10838a m22256d() {
        return m22274a(this.f34866a.f34876c);
    }

    /* renamed from: d */
    public static /* synthetic */ void m22255d(AbstractC10837b.C10838a c10838a, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: d */
    public static /* synthetic */ void m22254d(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: d */
    public static /* synthetic */ void m22253d(AbstractC10837b.C10838a c10838a, C10934d c10934d, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: d */
    public static /* synthetic */ void m22252d(AbstractC10837b.C10838a c10838a, boolean z, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: e */
    private AbstractC10837b.C10838a m22251e() {
        return m22274a(this.f34866a.f34877d);
    }

    /* renamed from: e */
    public static /* synthetic */ void m22250e(AbstractC10837b.C10838a c10838a, int i, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: e */
    public static /* synthetic */ void m22249e(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: f */
    private AbstractC10837b.C10838a m22248f() {
        return m22274a(this.f34866a.f34878e);
    }

    /* renamed from: f */
    private AbstractC10837b.C10838a m22247f(int i, AbstractC11315r.C11316a c11316a) {
        C11593a.m20020b(this.f34867b);
        boolean z = true;
        if (c11316a != null) {
            if (this.f34866a.m22241a(c11316a) == null) {
                z = false;
            }
            return z ? m22274a(c11316a) : m22277a(AbstractC10864al.f34997b, i, c11316a);
        }
        AbstractC10864al mo21176K = this.f34867b.mo21176K();
        if (!(i < mo21176K.mo20949a())) {
            mo21176K = AbstractC10864al.f34997b;
        }
        return m22277a(mo21176K, i, (AbstractC11315r.C11316a) null);
    }

    /* renamed from: f */
    public static /* synthetic */ void m22246f(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: g */
    public static /* synthetic */ void m22245g(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: h */
    public static /* synthetic */ void m22244h(AbstractC10837b.C10838a c10838a, AbstractC10837b abstractC10837b) {
    }

    /* renamed from: a */
    public final void m22311a() {
        final AbstractC10837b.C10838a m22256d = m22256d();
        this.f34871f.put(1036, m22256d);
        C11613m<AbstractC10837b, AbstractC10837b.C10839b> c11613m = this.f34872g;
        c11613m.f38686b.mo19884a(1, 1036, 0, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$tolDqLVeuOWuz54dYTBbISK2LVQ
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22244h(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        }).sendToTarget();
    }

    /* renamed from: a */
    public final void m22310a(final float f) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1019, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$iAdqiQA4Sf3IM_WosW5WgWigb9A
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22308a(AbstractC10837b.C10838a.this, f, (AbstractC10837b) obj);
            }
        });
    }

    /* renamed from: a */
    public final void m22309a(final int i, final int i2) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1029, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$vd0Kqfbwls9de9ARi_4cZfyxbcc
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22306a(AbstractC10837b.C10838a.this, i, i2, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19667a(final int i, final int i2, final int i3, final float f) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1028, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$wQBhgLIJro8ZdIK12Nh3qFW4QFc
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22307a(AbstractC10837b.C10838a.this, i, i2, i3, f, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19666a(final int i, final long j) {
        final AbstractC10837b.C10838a m22251e = m22251e();
        m22302a(m22251e, 1023, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$P14E2FuHzNVqWsCPktQWCbddx8E
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22304a(AbstractC10837b.C10838a.this, i, j, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: a */
    public final void mo22066a(final int i, final long j, final long j2) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1012, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$d7W1H1qxUFaO6gd_BJ18jonlpQ0
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22272b(AbstractC10837b.C10838a.this, i, j, j2, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: a */
    public final void mo19606a(int i, AbstractC11315r.C11316a c11316a) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1030, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$0zIm_npBHWkR3V50j8W3QRq7i5Q
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22249e(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11318s
    /* renamed from: a */
    public final void mo19605a(int i, AbstractC11315r.C11316a c11316a, final C11305l c11305l, final C11311o c11311o) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1000, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ZLtekCfxyxhL1UPVwDnzly2_RqY
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22258c(AbstractC10837b.C10838a.this, c11305l, c11311o, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11318s
    /* renamed from: a */
    public final void mo19604a(int i, AbstractC11315r.C11316a c11316a, final C11305l c11305l, final C11311o c11311o, final IOException iOException, final boolean z) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1003, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$8MgCfb27LMHkoq3j_wJ4qTunkn4
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22288a(AbstractC10837b.C10838a.this, c11305l, c11311o, iOException, z, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11318s
    /* renamed from: a */
    public final void mo19603a(int i, AbstractC11315r.C11316a c11316a, final C11311o c11311o) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1004, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$iro95wRVN_SvQ_RaaFOZrUFl1jg
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22287a(AbstractC10837b.C10838a.this, c11311o, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: a */
    public final void mo19602a(int i, AbstractC11315r.C11316a c11316a, final Exception exc) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1032, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$mbXtZ6NDkl3Za1ru6_oKDUYwDpM
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22286a(AbstractC10837b.C10838a.this, exc, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: a */
    public final void mo22065a(final long j) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1011, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$1GsbzsjmtCxUXRkd87bcmhiPB3Y
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22300a(AbstractC10837b.C10838a.this, j, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19665a(final long j, final int i) {
        final AbstractC10837b.C10838a m22251e = m22251e();
        m22302a(m22251e, 1026, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$8jUUZmm2DtYS_wa_c5moRw3lphg
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22301a(AbstractC10837b.C10838a.this, j, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19664a(final Surface surface) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1027, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$taabKT2eJ8WWOjs7_m3L4ADuWWY
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22299a(AbstractC10837b.C10838a.this, surface, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20311a(final ExoPlaybackException exoPlaybackException) {
        AbstractC10837b.C10838a m22274a = exoPlaybackException.f34773g != null ? m22274a(new AbstractC11315r.C11316a(exoPlaybackException.f34773g)) : m22256d();
        final AbstractC10837b.C10838a c10838a = m22274a;
        m22302a(m22274a, 11, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$coO4LtZg9YbqVOqecCJtgQmdBbY
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22298a(AbstractC10837b.C10838a.this, exoPlaybackException, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19663a(final Format format, final C10935e c10935e) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1022, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$v5940N5MCHJ757_fQtkQqJVbK9A
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22297a(AbstractC10837b.C10838a.this, format, c10935e, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20310a(final MediaItem mediaItem, final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$kVBmXFYs2kVMF82iOxweduayui0
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22296a(AbstractC10837b.C10838a.this, mediaItem, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20309a(final C10840aa c10840aa) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 13, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$QZH_5RbzpFXbvXG9W0W_ERjYxfE
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22294a(AbstractC10837b.C10838a.this, c10840aa, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public /* synthetic */ void mo20308a(AbstractC10842ac.C10844b c10844b) {
        AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10844b);
    }

    /* renamed from: a */
    public final void m22279a(final AbstractC10842ac abstractC10842ac, Looper looper) {
        C11593a.m20019b(this.f34867b == null || this.f34866a.f34875b.isEmpty());
        this.f34867b = (AbstractC10842ac) C11593a.m20020b(abstractC10842ac);
        C11613m<AbstractC10837b, AbstractC10837b.C10839b> c11613m = this.f34872g;
        this.f34872g = new C11613m<>(c11613m.f38689e, looper, c11613m.f38685a, c11613m.f38687c, new C11613m.AbstractC11615b() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$jtOsbChicVO6JDSFVk09oUd53xA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11615b
            public final void invoke(Object obj, C11623r c11623r) {
                C10835a.this.m22278a(abstractC10842ac, (AbstractC10837b) obj, (AbstractC10837b.C10839b) c11623r);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20307a(AbstractC10864al abstractC10864al, final int i) {
        C10836a c10836a = this.f34866a;
        AbstractC10842ac abstractC10842ac = (AbstractC10842ac) C11593a.m20020b(this.f34867b);
        c10836a.f34876c = C10836a.m22243a(abstractC10842ac, c10836a.f34875b, c10836a.f34877d, c10836a.f34874a);
        c10836a.m22242a(abstractC10842ac.mo21176K());
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 0, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$EjUjn0MYLrqSRC7Vj4dtQzHmqeA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22250e(AbstractC10837b.C10838a.this, i, (AbstractC10837b) obj);
            }
        });
    }

    /* renamed from: a */
    public final void m22276a(final C10889d c10889d) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1016, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$wRqyB9b8YczY3iw0kdRuklIg23c
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22293a(AbstractC10837b.C10838a.this, c10889d, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19662a(final C10934d c10934d) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1020, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$L2RL1_HcWV4VwA1QZQnG_MM3Fdo
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22268b(AbstractC10837b.C10838a.this, c10934d, (AbstractC10837b) obj);
            }
        });
    }

    /* renamed from: a */
    public final void m22275a(final Metadata metadata) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 1007, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$a2PfBlDdoMUEDdx2kkVi3n9BxoY
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22291a(AbstractC10837b.C10838a.this, metadata, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20306a(final TrackGroupArray trackGroupArray, final C11443g c11443g) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 2, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ehuuyKZGhNNG46R7BaiI6eU8Aew
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22290a(AbstractC10837b.C10838a.this, trackGroupArray, c11443g, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: a */
    public final void mo22064a(final Exception exc) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1018, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$YeNv7p_Ht_KM4ncXGGhHVu2q5Lw
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22266b(AbstractC10837b.C10838a.this, exc, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19661a(final String str) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1024, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$aPK7_0CKlE4H6xuM9SjSRckphgY
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22284a(AbstractC10837b.C10838a.this, str, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: a */
    public final void mo19660a(final String str, long j, final long j2) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1021, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$dkx80oLOHUB8H6eUBp545G198TU
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22285a(AbstractC10837b.C10838a.this, str, j2, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: a */
    public final void mo20305a(final boolean z) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 8, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$pTdXKpe0s0FlGssV_oLRw6EFUk4
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22262b(AbstractC10837b.C10838a.this, z, (AbstractC10837b) obj);
            }
        });
    }

    /* renamed from: b */
    public final void m22273b() {
        if (!this.f34873h) {
            final AbstractC10837b.C10838a m22256d = m22256d();
            this.f34873h = true;
            m22302a(m22256d, -1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$cKmvA13zuSaJj8mPyZFWY7xsvMI
                @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
                public final void invoke(Object obj) {
                    C10835a.m22245g(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public final void mo20304b(final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 5, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$KfzQW7R0kfwrESQgmw_D0rHPrnQ
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22255d(AbstractC10837b.C10838a.this, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11534c.AbstractC11535a
    /* renamed from: b */
    public final void mo20185b(final int i, final long j, final long j2) {
        AbstractC11315r.C11316a c11316a;
        Object obj;
        C10836a c10836a = this.f34866a;
        if (c10836a.f34875b.isEmpty()) {
            c11316a = null;
        } else {
            AbstractC15549v<AbstractC11315r.C11316a> abstractC15549v = c10836a.f34875b;
            if (abstractC15549v instanceof List) {
                AbstractC15549v<AbstractC11315r.C11316a> abstractC15549v2 = abstractC15549v;
                if (abstractC15549v2.isEmpty()) {
                    throw new NoSuchElementException();
                }
                obj = abstractC15549v2.get(abstractC15549v2.size() - 1);
            } else {
                obj = C15403ab.m8912b(abstractC15549v.iterator());
            }
            c11316a = (AbstractC11315r.C11316a) obj;
        }
        final AbstractC10837b.C10838a m22274a = m22274a(c11316a);
        m22302a(m22274a, 1006, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$sA7gT1502m_RV_yg0LaX2s_5n1U
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj2) {
                C10835a.m22305a(AbstractC10837b.C10838a.this, i, j, j2, (AbstractC10837b) obj2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: b */
    public final void mo19601b(int i, AbstractC11315r.C11316a c11316a) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1031, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$Ys2yAAFf1uUBewdZcSE6i71R7bU
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22254d(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11318s
    /* renamed from: b */
    public final void mo19600b(int i, AbstractC11315r.C11316a c11316a, final C11305l c11305l, final C11311o c11311o) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1001, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$_6R8Mq3YGYlMaQVQ5ZytKgp3IUE
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22267b(AbstractC10837b.C10838a.this, c11305l, c11311o, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: b */
    public final void mo22063b(final Format format, final C10935e c10935e) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1010, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$NhqbY4PURfB22Clq1P9ltGtwjmA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22270b(AbstractC10837b.C10838a.this, format, c10935e, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.AbstractC11663l
    /* renamed from: b */
    public final void mo19659b(final C10934d c10934d) {
        final AbstractC10837b.C10838a m22251e = m22251e();
        m22302a(m22251e, 1025, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$jX7s11aeFHiKqIRGNV_UeSxl9go
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22292a(AbstractC10837b.C10838a.this, c10934d, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: b */
    public final void mo22062b(final String str) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1013, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$1Mrd1xsp_zVhR9N_jlpQkeEJoZ0
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22264b(AbstractC10837b.C10838a.this, str, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: b */
    public final void mo22061b(final String str, long j, final long j2) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1009, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ckM6xtKyHlwiCQdNcs6mHEP5oCU
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22265b(AbstractC10837b.C10838a.this, str, j2, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public final void mo20303b(final boolean z) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 4, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ZhiVBZuPylGwrgjAkk8T7KDh5dM
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22257c(AbstractC10837b.C10838a.this, z, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public final void mo20302b(final boolean z, final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, -1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$M4D0RQhs1gd2V7qQ3bjtdT1IfB8
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22263b(AbstractC10837b.C10838a.this, z, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: c */
    public final void mo19599c(int i, AbstractC11315r.C11316a c11316a) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1033, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$BrV9Qq4zIIs2HWn8ozmae13MzJU
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22260c(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11318s
    /* renamed from: c */
    public final void mo19598c(int i, AbstractC11315r.C11316a c11316a, final C11305l c11305l, final C11311o c11311o) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$K5zQS_pTn_fq8zxym09qHukNCaA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22289a(AbstractC10837b.C10838a.this, c11305l, c11311o, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: c */
    public final void mo22060c(final C10934d c10934d) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1008, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$VyKw1Nm8PKwnzJ_AHxgPFGYMIL0
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22253d(AbstractC10837b.C10838a.this, c10934d, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public final void mo20301c(final List<Metadata> list) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 3, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$Dj93FcofXhMygkae0WVWoeDrD1w
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22283a(AbstractC10837b.C10838a.this, list, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public final void mo20300c(final boolean z) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 10, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$6Mu1G1CyOCbV_FmsaLZFrzdMcrU
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22281a(AbstractC10837b.C10838a.this, z, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public final void mo20299c(final boolean z, final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 6, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$tQ4jNxFtLNhrGdI__aZQXfpcnWs
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22282a(AbstractC10837b.C10838a.this, z, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: d */
    public final void mo20298d(final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 7, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$3LKLU2w8WPaPkkD0v_DIMvutPdo
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22261c(AbstractC10837b.C10838a.this, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: d */
    public final void mo19597d(int i, AbstractC11315r.C11316a c11316a) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1034, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$_NZ__OVTwvuZkULoQfMj2nCeHrA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22269b(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: d */
    public final void mo22059d(final C10934d c10934d) {
        final AbstractC10837b.C10838a m22251e = m22251e();
        m22302a(m22251e, 1014, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$xnVlRxXRDLM5A2ZMy_OsHvtGB_o
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22259c(AbstractC10837b.C10838a.this, c10934d, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC10893f
    /* renamed from: d */
    public final void mo22058d(final boolean z) {
        final AbstractC10837b.C10838a m22248f = m22248f();
        m22302a(m22248f, 1017, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$pJefUOL7g_BbaprQeaLm9t7dWY8
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22252d(AbstractC10837b.C10838a.this, z, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: e */
    public final void mo20297e(final int i) {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 9, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$E7BIUV2f0CdY6o15bvkYiRcApIA
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22271b(AbstractC10837b.C10838a.this, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10955c
    /* renamed from: e */
    public final void mo19596e(int i, AbstractC11315r.C11316a c11316a) {
        final AbstractC10837b.C10838a m22247f = m22247f(i, c11316a);
        m22302a(m22247f, 1035, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$6jzbncxT0WlUeEEUEreNJcBYN4A
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22295a(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: f */
    public final void mo20296f(final int i) {
        if (i == 1) {
            this.f34873h = false;
        }
        C10836a c10836a = this.f34866a;
        c10836a.f34876c = C10836a.m22243a((AbstractC10842ac) C11593a.m20020b(this.f34867b), c10836a.f34875b, c10836a.f34877d, c10836a.f34874a);
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, 12, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$i340sWouQ1ITC9vTLDAGYFXXTTc
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22303a(AbstractC10837b.C10838a.this, i, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: p_ */
    public final void mo20295p_() {
        final AbstractC10837b.C10838a m22256d = m22256d();
        m22302a(m22256d, -1, new C11613m.AbstractC11614a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$BTWeHlincaMRD_iTGFZEdVoClq0
            @Override // com.google.android.exoplayer2.util.C11613m.AbstractC11614a
            public final void invoke(Object obj) {
                C10835a.m22246f(AbstractC10837b.C10838a.this, (AbstractC10837b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: q_ */
    public /* synthetic */ void mo20294q_() {
        AbstractC10842ac.AbstractC10843a._CC.$default$q_(this);
    }
}
