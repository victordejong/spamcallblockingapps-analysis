package com.google.android.exoplayer2.source;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11588t;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.source.ae */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae.class */
public final class C11283ae implements AbstractC11312p, Loader.AbstractC11526a<C11286b> {

    /* renamed from: a */
    final AbstractC11318s.C11319a f37036a;

    /* renamed from: c */
    final Format f37038c;

    /* renamed from: d */
    final boolean f37039d;

    /* renamed from: e */
    boolean f37040e;

    /* renamed from: f */
    byte[] f37041f;

    /* renamed from: g */
    int f37042g;

    /* renamed from: h */
    private final C11570j f37043h;

    /* renamed from: i */
    private final AbstractC11567h.AbstractC11568a f37044i;

    /* renamed from: j */
    private final AbstractC11590v f37045j;

    /* renamed from: k */
    private final AbstractC11585r f37046k;

    /* renamed from: l */
    private final TrackGroupArray f37047l;

    /* renamed from: n */
    private final long f37049n;

    /* renamed from: m */
    private final ArrayList<C11285a> f37048m = new ArrayList<>();

    /* renamed from: b */
    final Loader f37037b = new Loader("Loader:SingleSampleMediaPeriod");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.ae$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae$a.class */
    public final class C11285a implements AbstractC11269aa {

        /* renamed from: a */
        int f37050a;

        /* renamed from: c */
        private boolean f37052c;

        private C11285a() {
            C11283ae.this = r4;
        }

        /* renamed from: c */
        private void m20983c() {
            if (!this.f37052c) {
                C11283ae.this.f37036a.m20934a(C11620q.m19845g(C11283ae.this.f37038c.sampleMimeType), C11283ae.this.f37038c, 0L);
                this.f37052c = true;
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20864a(long j) {
            m20983c();
            if (j <= 0 || this.f37050a == 2) {
                return 0;
            }
            this.f37050a = 2;
            return 1;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20863a(C11258q c11258q, DecoderInputBuffer decoderInputBuffer, boolean z) {
            m20983c();
            int i = this.f37050a;
            if (i == 2) {
                decoderInputBuffer.m21919a(4);
                return -4;
            } else if (z || i == 0) {
                c11258q.f36928b = C11283ae.this.f37038c;
                this.f37050a = 1;
                return -5;
            } else if (!C11283ae.this.f37040e) {
                return -3;
            } else {
                if (C11283ae.this.f37041f != null) {
                    decoderInputBuffer.m21919a(1);
                    decoderInputBuffer.f35338e = 0L;
                    if (decoderInputBuffer.m21923f()) {
                        return -4;
                    }
                    decoderInputBuffer.m21925c(C11283ae.this.f37042g);
                    decoderInputBuffer.f35336c.put(C11283ae.this.f37041f, 0, C11283ae.this.f37042g);
                } else {
                    decoderInputBuffer.m21919a(4);
                }
                this.f37050a = 2;
                return -4;
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final boolean mo20865a() {
            return C11283ae.this.f37040e;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: b */
        public final void mo20862b() throws IOException {
            if (!C11283ae.this.f37039d) {
                C11283ae.this.f37037b.m20207a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ae$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae$b.class */
    static final class C11286b implements Loader.AbstractC11529d {

        /* renamed from: a */
        public final long f37053a = C11305l.m20965a();

        /* renamed from: b */
        public final C11570j f37054b;

        /* renamed from: c */
        final C11588t f37055c;

        /* renamed from: d */
        byte[] f37056d;

        public C11286b(C11570j c11570j, AbstractC11567h abstractC11567h) {
            this.f37054b = c11570j;
            this.f37055c = new C11588t(abstractC11567h);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11529d
        /* renamed from: a */
        public final void mo20188a() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11529d
        /* renamed from: b */
        public final void mo20187b() throws IOException {
            this.f37055c.f38620a = 0L;
            try {
                this.f37055c.mo20035a(this.f37054b);
                int i = 0;
                while (i != -1) {
                    int i2 = (int) this.f37055c.f38620a;
                    byte[] bArr = this.f37056d;
                    if (bArr == null) {
                        this.f37056d = new byte[1024];
                    } else if (i2 == bArr.length) {
                        this.f37056d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    C11588t c11588t = this.f37055c;
                    byte[] bArr2 = this.f37056d;
                    i = c11588t.mo20033a(bArr2, i2, bArr2.length - i2);
                }
            } finally {
                C11599af.m19980a((AbstractC11567h) this.f37055c);
            }
        }
    }

    public C11283ae(C11570j c11570j, AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11590v abstractC11590v, Format format, long j, AbstractC11585r abstractC11585r, AbstractC11318s.C11319a c11319a, boolean z) {
        this.f37043h = c11570j;
        this.f37044i = abstractC11568a;
        this.f37045j = abstractC11590v;
        this.f37038c = format;
        this.f37049n = j;
        this.f37046k = abstractC11585r;
        this.f37036a = c11319a;
        this.f37039d = z;
        this.f37047l = new TrackGroupArray(new TrackGroup(format));
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: D_ */
    public final void mo20908D_() {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20903a(long j, C10855ai c10855ai) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j) {
        for (int i = 0; i < abstractC11436cArr.length; i++) {
            if (abstractC11269aaArr[i] != null && (abstractC11436cArr[i] == null || !zArr[i])) {
                this.f37048m.remove(abstractC11269aaArr[i]);
                abstractC11269aaArr[i] = null;
            }
            if (abstractC11269aaArr[i] == null && abstractC11436cArr[i] != null) {
                C11285a c11285a = new C11285a();
                this.f37048m.add(c11285a);
                abstractC11269aaArr[i] = c11285a;
                zArr2[i] = true;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    public final /* synthetic */ Loader.C11527b mo20196a(C11286b c11286b, long j, long j2, IOException iOException, int i) {
        Loader.C11527b c11527b;
        C11286b c11286b2 = c11286b;
        C11588t c11588t = c11286b2.f37055c;
        C11305l c11305l = new C11305l(c11286b2.f37053a, c11286b2.f37054b, c11588t.f38621b, c11588t.f38622c, j, j2, c11588t.f38620a);
        long mo20037a = this.f37046k.mo20037a(new AbstractC11585r.C11586a(c11305l, new C11311o(1, -1, this.f37038c, 0, null, 0L, C11158f.m21374a(this.f37049n)), iOException, i));
        int i2 = (mo20037a > (-9223372036854775807L) ? 1 : (mo20037a == (-9223372036854775807L) ? 0 : -1));
        boolean z = i2 == 0 || i >= this.f37046k.mo20038a(1);
        if (!this.f37039d || !z) {
            c11527b = i2 != 0 ? Loader.m20201a(false, mo20037a) : Loader.f38356d;
        } else {
            C11617n.m19862a("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f37040e = true;
            c11527b = Loader.f38355c;
        }
        this.f37036a.m20930a(c11305l, 1, this.f37038c, 0L, this.f37049n, iOException, !c11527b.m20194a());
        return c11527b;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20902a(long j, boolean z) {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
        abstractC11313a.mo20915a((AbstractC11312p) this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    public final /* synthetic */ void mo20197a(C11286b c11286b, long j, long j2) {
        C11286b c11286b2 = c11286b;
        this.f37042g = (int) c11286b2.f37055c.f38620a;
        this.f37041f = (byte[]) C11593a.m20020b(c11286b2.f37056d);
        this.f37040e = true;
        C11588t c11588t = c11286b2.f37055c;
        this.f37036a.m20921b(new C11305l(c11286b2.f37053a, c11286b2.f37054b, c11588t.f38621b, c11588t.f38622c, j, j2, this.f37042g), this.f37038c, 0L, this.f37049n);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC11526a
    /* renamed from: a */
    public final /* synthetic */ void mo20195a(C11286b c11286b, long j, long j2, boolean z) {
        C11286b c11286b2 = c11286b;
        C11588t c11588t = c11286b2.f37055c;
        this.f37036a.m20929a(new C11305l(c11286b2.f37053a, c11286b2.f37054b, c11588t.f38621b, c11588t.f38622c, j, j2, c11588t.f38620a), 0L, this.f37049n);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final long mo20891b(long j) {
        for (int i = 0; i < this.f37048m.size(); i++) {
            C11285a c11285a = this.f37048m.get(i);
            if (c11285a.f37050a == 2) {
                c11285a.f37050a = 1;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final TrackGroupArray mo20893b() {
        return this.f37047l;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: c */
    public final long mo20888c() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        if (this.f37040e || this.f37037b.m20200b() || this.f37037b.m20208a()) {
            return false;
        }
        AbstractC11567h createDataSource = this.f37044i.createDataSource();
        AbstractC11590v abstractC11590v = this.f37045j;
        if (abstractC11590v != null) {
            createDataSource.mo20034a(abstractC11590v);
        }
        C11286b c11286b = new C11286b(this.f37043h, createDataSource);
        this.f37036a.m20928a(new C11305l(c11286b.f37053a, this.f37043h, this.f37037b.m20206a(c11286b, this, this.f37046k.mo20038a(1))), this.f37038c, 0L, this.f37049n);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        return this.f37040e ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        return (this.f37040e || this.f37037b.m20200b()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        return this.f37037b.m20200b();
    }
}
