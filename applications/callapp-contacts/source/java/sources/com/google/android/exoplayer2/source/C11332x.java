package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.AbstractC10958d;
import com.google.android.exoplayer2.drm.AbstractC10960e;
import com.google.android.exoplayer2.drm.C10954b;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.C11020f;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.C11326w;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11583p;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.source.x */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/x.class */
public final class C11332x extends AbstractC11266a implements C11326w.AbstractC11328b {

    /* renamed from: a */
    private final MediaItem f37235a;

    /* renamed from: b */
    private final MediaItem.C10832c f37236b;

    /* renamed from: c */
    private final AbstractC11567h.AbstractC11568a f37237c;

    /* renamed from: d */
    private final AbstractC11133l f37238d;

    /* renamed from: e */
    private final AbstractC10958d f37239e;

    /* renamed from: f */
    private final AbstractC11585r f37240f;

    /* renamed from: g */
    private final int f37241g;

    /* renamed from: h */
    private boolean f37242h = true;

    /* renamed from: i */
    private long f37243i = -9223372036854775807L;

    /* renamed from: j */
    private boolean f37244j;

    /* renamed from: k */
    private boolean f37245k;

    /* renamed from: l */
    private AbstractC11590v f37246l;

    /* renamed from: com.google.android.exoplayer2.source.x$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/x$a.class */
    public static final class C11334a implements AbstractC11321t {

        /* renamed from: a */
        private final AbstractC11567h.AbstractC11568a f37248a;

        /* renamed from: b */
        private AbstractC11133l f37249b;

        /* renamed from: c */
        private AbstractC10960e f37250c;

        /* renamed from: d */
        private AbstractC11585r f37251d;

        /* renamed from: e */
        private int f37252e;

        /* renamed from: f */
        private String f37253f;

        /* renamed from: g */
        private Object f37254g;

        public C11334a(AbstractC11567h.AbstractC11568a abstractC11568a) {
            this(abstractC11568a, new C11020f());
        }

        public C11334a(AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11133l abstractC11133l) {
            this.f37248a = abstractC11568a;
            this.f37249b = abstractC11133l;
            this.f37250c = new C10954b();
            this.f37251d = new C11583p();
            this.f37252e = 1048576;
        }

        /* renamed from: b */
        public C11332x mo20850a(MediaItem mediaItem) {
            MediaItem mediaItem2;
            C11593a.m20020b(mediaItem.f34812b);
            boolean z = true;
            boolean z2 = mediaItem.f34812b.f34856h == null && this.f37254g != null;
            if (mediaItem.f34812b.f34854f != null || this.f37253f == null) {
                z = false;
            }
            if (z2 && z) {
                MediaItem.C10830a m22319a = mediaItem.m22319a();
                m22319a.f34831n = this.f37254g;
                m22319a.f34829l = this.f37253f;
                mediaItem2 = m22319a.m22318a();
            } else if (z2) {
                MediaItem.C10830a m22319a2 = mediaItem.m22319a();
                m22319a2.f34831n = this.f37254g;
                mediaItem2 = m22319a2.m22318a();
            } else {
                mediaItem2 = mediaItem;
                if (z) {
                    MediaItem.C10830a m22319a3 = mediaItem.m22319a();
                    m22319a3.f34829l = this.f37253f;
                    mediaItem2 = m22319a3.m22318a();
                }
            }
            return new C11332x(mediaItem2, this.f37248a, this.f37249b, this.f37250c.mo21846a(mediaItem2), this.f37251d, this.f37252e);
        }

        @Deprecated
        /* renamed from: a */
        public final C11332x m20851a(Uri uri) {
            MediaItem.C10830a c10830a = new MediaItem.C10830a();
            c10830a.f34819b = uri;
            return mo20850a(c10830a.m22318a());
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11321t
        /* renamed from: a */
        public final int[] mo20852a() {
            return new int[]{3};
        }
    }

    C11332x(MediaItem mediaItem, AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11133l abstractC11133l, AbstractC10958d abstractC10958d, AbstractC11585r abstractC11585r, int i) {
        this.f37236b = (MediaItem.C10832c) C11593a.m20020b(mediaItem.f34812b);
        this.f37235a = mediaItem;
        this.f37237c = abstractC11568a;
        this.f37238d = abstractC11133l;
        this.f37239e = abstractC10958d;
        this.f37240f = abstractC11585r;
        this.f37241g = i;
    }

    /* renamed from: g */
    private void m20854g() {
        C11274ad c11274ad = new C11274ad(this.f37243i, this.f37244j, false, this.f37245k, (Object) null, this.f37235a);
        AbstractC11302j abstractC11302j = c11274ad;
        if (this.f37242h) {
            abstractC11302j = new AbstractC11302j(c11274ad) { // from class: com.google.android.exoplayer2.source.x.1
                @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
                /* renamed from: a */
                public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
                    super.mo20853a(i, c10867b, j);
                    c10867b.f35017m = true;
                    return c10867b;
                }
            };
        }
        m21013a(abstractC11302j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final AbstractC11312p mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        AbstractC11567h createDataSource = this.f37237c.createDataSource();
        AbstractC11590v abstractC11590v = this.f37246l;
        if (abstractC11590v != null) {
            createDataSource.mo20034a(abstractC11590v);
        }
        return new C11326w(this.f37236b.f34849a, createDataSource, this.f37238d, this.f37239e, m21010b(c11316a), this.f37240f, m21012a(c11316a), this, abstractC11533b, this.f37236b.f34854f, this.f37241g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.exoplayer2.source.C11326w.AbstractC11328b
    /* renamed from: a */
    public final void mo20861a(long j, boolean z, boolean z2) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.f37243i;
        }
        if (!this.f37242h && this.f37243i == c && this.f37244j == z && this.f37245k == z2) {
            return;
        }
        this.f37243i = c;
        this.f37244j = z;
        this.f37245k = z2;
        this.f37242h = false;
        m20854g();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        C11337z[] c11337zArr;
        C11326w c11326w = (C11326w) abstractC11312p;
        if (c11326w.f37193f) {
            for (C11337z c11337z : c11326w.f37192e) {
                c11337z.m20813e();
                c11337z.m20811f();
            }
        }
        c11326w.f37189b.m20205a(c11326w);
        c11326w.f37190c.removeCallbacksAndMessages(null);
        c11326w.f37191d = null;
        c11326w.f37195h = true;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    protected final void mo20858a(AbstractC11590v abstractC11590v) {
        this.f37246l = abstractC11590v;
        this.f37239e.mo21850a();
        m20854g();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    protected final void mo20857c() {
        this.f37239e.mo21847b();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        return this.f37235a;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public final void mo20855f() {
    }
}
