package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.C11322u;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.common.collect.AbstractC15456ah;
import com.google.common.collect.AbstractC15457ai;
import com.google.common.collect.C15524i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource.class */
public final class MergingMediaSource extends AbstractC11293d<Integer> {

    /* renamed from: a */
    private static final MediaItem f36950a;

    /* renamed from: b */
    private final boolean f36951b;

    /* renamed from: c */
    private final boolean f36952c;

    /* renamed from: d */
    private final AbstractC11315r[] f36953d;

    /* renamed from: e */
    private final AbstractC10864al[] f36954e;

    /* renamed from: f */
    private final ArrayList<AbstractC11315r> f36955f;

    /* renamed from: g */
    private final AbstractC11297f f36956g;

    /* renamed from: h */
    private final Map<Object, Long> f36957h;

    /* renamed from: i */
    private final AbstractC15456ah<Object, C11291c> f36958i;

    /* renamed from: j */
    private int f36959j;

    /* renamed from: k */
    private long[][] f36960k;

    /* renamed from: l */
    private IllegalMergeException f36961l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException.class */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a */
        public final int f36962a;

        public IllegalMergeException(int i) {
            this.f36962a = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.MergingMediaSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$a.class */
    static final class C11263a extends AbstractC11302j {

        /* renamed from: c */
        private final long[] f36963c;

        /* renamed from: d */
        private final long[] f36964d;

        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        public C11263a(AbstractC10864al abstractC10864al, Map<Object, Long> map) {
            super(abstractC10864al);
            int mo20949a = abstractC10864al.mo20949a();
            this.f36964d = new long[abstractC10864al.mo20949a()];
            AbstractC10864al.C10867b c10867b = new AbstractC10864al.C10867b();
            for (int i = 0; i < mo20949a; i++) {
                this.f36964d[i] = abstractC10864al.mo20853a(i, c10867b, 0L).f35021q;
            }
            int mo20946b = abstractC10864al.mo20946b();
            this.f36963c = new long[mo20946b];
            AbstractC10864al.C10866a c10866a = new AbstractC10864al.C10866a();
            for (int i2 = 0; i2 < mo20946b; i2++) {
                abstractC10864al.mo20947a(i2, c10866a, true);
                char longValue = ((Long) C11593a.m20020b(map.get(c10866a.f34999b))).longValue();
                this.f36963c[i2] = ((longValue > Long.MIN_VALUE ? 1 : (longValue == Long.MIN_VALUE ? 0 : -1)) == 0 ? c10866a.f35001d : longValue) == 1 ? 1 : 0;
                if (c10866a.f35001d != -9223372036854775807L) {
                    long[] jArr = this.f36964d;
                    int i3 = c10866a.f35000c;
                    jArr[i3] = jArr[i3] - (c10866a.f35001d - this.f36963c[i2]);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
            super.mo20947a(i, c10866a, z);
            c10866a.f35001d = this.f36963c[i];
            return c10866a;
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
            super.mo20853a(i, c10867b, j);
            c10867b.f35021q = this.f36964d[i];
            c10867b.f35020p = (c10867b.f35021q == -9223372036854775807L || c10867b.f35020p == -9223372036854775807L) ? c10867b.f35020p : Math.min(c10867b.f35020p, c10867b.f35021q);
            return c10867b;
        }
    }

    static {
        MediaItem.C10830a c10830a = new MediaItem.C10830a();
        c10830a.f34818a = "MergingMediaSource";
        f36950a = c10830a.m22318a();
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [long[], long[][]] */
    public MergingMediaSource(boolean z, boolean z2, AbstractC11297f abstractC11297f, AbstractC11315r... abstractC11315rArr) {
        this.f36951b = z;
        this.f36952c = z2;
        this.f36953d = abstractC11315rArr;
        this.f36956g = abstractC11297f;
        this.f36955f = new ArrayList<>(Arrays.asList(abstractC11315rArr));
        this.f36959j = -1;
        this.f36954e = new AbstractC10864al[abstractC11315rArr.length];
        this.f36960k = new long[0];
        this.f36957h = new HashMap();
        C15524i.m8781a(8, "expectedKeys");
        this.f36958i = new AbstractC15457ai.AbstractC15462c<Object>() { // from class: com.google.common.collect.ai.1
            @Override // com.google.common.collect.AbstractC15457ai.AbstractC15462c
            /* renamed from: a */
            final <K, V> Map<K, Collection<V>> mo8841a() {
                return C15526k.m8777a(r4);
            }
        }.m8840b().mo8839a();
    }

    public MergingMediaSource(boolean z, boolean z2, AbstractC11315r... abstractC11315rArr) {
        this(z, z2, new C11298g(), abstractC11315rArr);
    }

    public MergingMediaSource(boolean z, AbstractC11315r... abstractC11315rArr) {
        this(z, false, abstractC11315rArr);
    }

    public MergingMediaSource(AbstractC11315r... abstractC11315rArr) {
        this(false, abstractC11315rArr);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final AbstractC11312p mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        int length = this.f36953d.length;
        AbstractC11312p[] abstractC11312pArr = new AbstractC11312p[length];
        int mo20945c = this.f36954e[0].mo20945c(c11316a.f37148a);
        for (int i = 0; i < length; i++) {
            abstractC11312pArr[i] = this.f36953d[i].mo20859a(c11316a.mo20936a(this.f36954e[i].mo20948a(mo20945c)), abstractC11533b, j - this.f36960k[mo20945c][i]);
        }
        C11322u c11322u = new C11322u(this.f36956g, this.f36960k[mo20945c], abstractC11312pArr);
        C11291c c11291c = c11322u;
        if (this.f36952c) {
            c11291c = new C11291c(c11322u, true, 0L, ((Long) C11593a.m20020b(this.f36957h.get(c11316a.f37148a))).longValue());
            this.f36958i.mo8689a(c11316a.f37148a, c11291c);
        }
        return c11291c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    protected final /* synthetic */ AbstractC11315r.C11316a mo20958a(Integer num, AbstractC11315r.C11316a c11316a) {
        if (num.intValue() == 0) {
            return c11316a;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        AbstractC11312p abstractC11312p2 = abstractC11312p;
        if (this.f36952c) {
            C11291c c11291c = (C11291c) abstractC11312p;
            Iterator<Map.Entry<Object, C11291c>> it2 = this.f36958i.mo8675l().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Object, C11291c> next = it2.next();
                if (next.getValue().equals(c11291c)) {
                    this.f36958i.mo8684c(next.getKey(), next.getValue());
                    break;
                }
            }
            abstractC11312p2 = c11291c.f37074a;
        }
        C11322u c11322u = (C11322u) abstractC11312p2;
        int i = 0;
        while (true) {
            AbstractC11315r[] abstractC11315rArr = this.f36953d;
            if (i < abstractC11315rArr.length) {
                abstractC11315rArr[i].mo20860a(c11322u.f37159a[i] instanceof C11322u.C11323a ? ((C11322u.C11323a) c11322u.f37159a[i]).f37167a : c11322u.f37159a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    public final void mo20858a(AbstractC11590v abstractC11590v) {
        super.mo20858a(abstractC11590v);
        for (int i = 0; i < this.f36953d.length; i++) {
            m20977a((MergingMediaSource) Integer.valueOf(i), this.f36953d[i]);
        }
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    protected final /* synthetic */ void mo20957a(Integer num, AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
        AbstractC10864al[] abstractC10864alArr;
        Integer num2 = num;
        if (this.f36961l == null) {
            if (this.f36959j == -1) {
                this.f36959j = abstractC10864al.mo20946b();
            } else if (abstractC10864al.mo20946b() != this.f36959j) {
                this.f36961l = new IllegalMergeException(0);
                return;
            }
            if (this.f36960k.length == 0) {
                this.f36960k = new long[this.f36959j][this.f36954e.length];
            }
            this.f36955f.remove(abstractC11315r);
            this.f36954e[num2.intValue()] = abstractC10864al;
            if (!this.f36955f.isEmpty()) {
                return;
            }
            if (this.f36951b) {
                AbstractC10864al.C10866a c10866a = new AbstractC10864al.C10866a();
                for (int i = 0; i < this.f36959j; i++) {
                    long j = -this.f36954e[0].mo20947a(i, c10866a, false).f35002e;
                    int i2 = 1;
                    while (true) {
                        AbstractC10864al[] abstractC10864alArr2 = this.f36954e;
                        if (i2 < abstractC10864alArr2.length) {
                            this.f36960k[i][i2] = j - (-abstractC10864alArr2[i2].mo20947a(i, c10866a, false).f35002e);
                            i2++;
                        }
                    }
                }
            }
            AbstractC10864al abstractC10864al2 = this.f36954e[0];
            C11263a c11263a = abstractC10864al2;
            if (this.f36952c) {
                AbstractC10864al.C10866a c10866a2 = new AbstractC10864al.C10866a();
                for (int i3 = 0; i3 < this.f36959j; i3++) {
                    char c = 0;
                    int i4 = 0;
                    while (true) {
                        abstractC10864alArr = this.f36954e;
                        if (i4 >= abstractC10864alArr.length) {
                            break;
                        }
                        long j2 = abstractC10864alArr[i4].mo20947a(i3, c10866a2, false).f35001d;
                        char c2 = c;
                        if (j2 != -9223372036854775807L) {
                            ?? r0 = j2 + this.f36960k[i3][i4];
                            if (c != Long.MIN_VALUE) {
                                c2 = c;
                                if (r0 >= c) {
                                }
                            }
                            c2 = r0;
                        }
                        i4++;
                        c = c2;
                    }
                    Object mo20948a = abstractC10864alArr[0].mo20948a(i3);
                    this.f36957h.put(mo20948a, Long.valueOf(c));
                    for (C11291c c11291c : this.f36958i.mo8690a(mo20948a)) {
                        c11291c.m20982a(0L, c);
                    }
                }
                c11263a = new C11263a(abstractC10864al2, this.f36957h);
            }
            m21013a(c11263a);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    public final void mo20857c() {
        super.mo20857c();
        Arrays.fill(this.f36954e, (Object) null);
        this.f36959j = -1;
        this.f36961l = null;
        this.f36955f.clear();
        Collections.addAll(this.f36955f, this.f36953d);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        AbstractC11315r[] abstractC11315rArr = this.f36953d;
        return abstractC11315rArr.length > 0 ? abstractC11315rArr[0].mo20856e() : f36950a;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public final void mo20855f() throws IOException {
        IllegalMergeException illegalMergeException = this.f36961l;
        if (illegalMergeException == null) {
            super.mo20855f();
            return;
        }
        throw illegalMergeException;
    }
}
