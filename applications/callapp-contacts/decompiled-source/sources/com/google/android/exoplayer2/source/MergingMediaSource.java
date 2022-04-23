package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.u;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.upstream.v;
import com.google.common.collect.ah;
import com.google.common.collect.ai;
import com.google.common.collect.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource.class */
public final class MergingMediaSource extends d<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private static final MediaItem f21524a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f21525b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f21526c;

    /* renamed from: d  reason: collision with root package name */
    private final r[] f21527d;
    private final al[] e;
    private final ArrayList<r> f;
    private final f g;
    private final Map<Object, Long> h;
    private final ah<Object, c> i;
    private int j;
    private long[][] k;
    private IllegalMergeException l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException.class */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f21528a;

        public IllegalMergeException(int i) {
            this.f21528a = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/MergingMediaSource$a.class */
    static final class a extends j {

        /* renamed from: c  reason: collision with root package name */
        private final long[] f21529c;

        /* renamed from: d  reason: collision with root package name */
        private final long[] f21530d;

        public a(al alVar, Map<Object, Long> map) {
            super(alVar);
            int a2 = alVar.a();
            this.f21530d = new long[alVar.a()];
            al.b bVar = new al.b();
            for (int i = 0; i < a2; i++) {
                this.f21530d[i] = alVar.a(i, bVar, 0L).q;
            }
            int b2 = alVar.b();
            this.f21529c = new long[b2];
            al.a aVar = new al.a();
            for (int i2 = 0; i2 < b2; i2++) {
                alVar.a(i2, aVar, true);
                long longValue = ((Long) com.google.android.exoplayer2.util.a.b(map.get(aVar.f20676b))).longValue();
                this.f21529c[i2] = longValue == Long.MIN_VALUE ? aVar.f20678d : longValue;
                if (aVar.f20678d != -9223372036854775807L) {
                    long[] jArr = this.f21530d;
                    int i3 = aVar.f20677c;
                    jArr[i3] = jArr[i3] - (aVar.f20678d - this.f21529c[i2]);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.a a(int i, al.a aVar, boolean z) {
            super.a(i, aVar, z);
            aVar.f20678d = this.f21529c[i];
            return aVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.b a(int i, al.b bVar, long j) {
            super.a(i, bVar, j);
            bVar.q = this.f21530d[i];
            bVar.p = (bVar.q == -9223372036854775807L || bVar.p == -9223372036854775807L) ? bVar.p : Math.min(bVar.p, bVar.q);
            return bVar;
        }
    }

    static {
        MediaItem.a aVar = new MediaItem.a();
        aVar.f20614a = "MergingMediaSource";
        f21524a = aVar.a();
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [long[], long[][]] */
    public MergingMediaSource(boolean z, boolean z2, f fVar, r... rVarArr) {
        this.f21525b = z;
        this.f21526c = z2;
        this.f21527d = rVarArr;
        this.g = fVar;
        this.f = new ArrayList<>(Arrays.asList(rVarArr));
        this.j = -1;
        this.e = new al[rVarArr.length];
        this.k = new long[0];
        this.h = new HashMap();
        i.a(8, "expectedKeys");
        this.i = new ai.c<Object>() { // from class: com.google.common.collect.ai.1
            @Override // com.google.common.collect.ai.c
            final <K, V> Map<K, Collection<V>> a() {
                return k.a(r4);
            }
        }.b().a();
    }

    public MergingMediaSource(boolean z, boolean z2, r... rVarArr) {
        this(z, z2, new g(), rVarArr);
    }

    public MergingMediaSource(boolean z, r... rVarArr) {
        this(z, false, rVarArr);
    }

    public MergingMediaSource(r... rVarArr) {
        this(false, rVarArr);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final p a(r.a aVar, b bVar, long j) {
        int length = this.f21527d.length;
        p[] pVarArr = new p[length];
        int c2 = this.e[0].c(aVar.f21637a);
        for (int i = 0; i < length; i++) {
            pVarArr[i] = this.f21527d[i].a(aVar.a(this.e[i].a(c2)), bVar, j - this.k[c2][i]);
        }
        u uVar = new u(this.g, this.k[c2], pVarArr);
        c cVar = uVar;
        if (this.f21526c) {
            cVar = new c(uVar, true, 0L, ((Long) com.google.android.exoplayer2.util.a.b(this.h.get(aVar.f21637a))).longValue());
            this.i.a(aVar.f21637a, cVar);
        }
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.d
    protected final /* synthetic */ r.a a(Integer num, r.a aVar) {
        if (num.intValue() == 0) {
            return aVar;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        p pVar2 = pVar;
        if (this.f21526c) {
            c cVar = (c) pVar;
            Iterator<Map.Entry<Object, c>> it2 = this.i.l().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Object, c> next = it2.next();
                if (next.getValue().equals(cVar)) {
                    this.i.c(next.getKey(), next.getValue());
                    break;
                }
            }
            pVar2 = cVar.f21591a;
        }
        u uVar = (u) pVar2;
        int i = 0;
        while (true) {
            r[] rVarArr = this.f21527d;
            if (i < rVarArr.length) {
                rVarArr[i].a(uVar.f21647a[i] instanceof u.a ? ((u.a) uVar.f21647a[i]).f21651a : uVar.f21647a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void a(v vVar) {
        super.a(vVar);
        for (int i = 0; i < this.f21527d.length; i++) {
            a((MergingMediaSource) Integer.valueOf(i), this.f21527d[i]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [com.google.android.exoplayer2.source.c] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.source.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void a(java.lang.Integer r8, com.google.android.exoplayer2.source.r r9, com.google.android.exoplayer2.al r10) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.MergingMediaSource.a(java.lang.Object, com.google.android.exoplayer2.source.r, com.google.android.exoplayer2.al):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void c() {
        super.c();
        Arrays.fill(this.e, (Object) null);
        this.j = -1;
        this.l = null;
        this.f.clear();
        Collections.addAll(this.f, this.f21527d);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        r[] rVarArr = this.f21527d;
        return rVarArr.length > 0 ? rVarArr[0].e() : f21524a;
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.r
    public final void f() throws IOException {
        IllegalMergeException illegalMergeException = this.l;
        if (illegalMergeException == null) {
            super.f();
            return;
        }
        throw illegalMergeException;
    }
}
