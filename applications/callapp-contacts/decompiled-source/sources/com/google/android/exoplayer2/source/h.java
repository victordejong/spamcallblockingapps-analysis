package com.google.android.exoplayer2.source;

import android.content.Context;
import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.source.ads.b;
import com.google.android.exoplayer2.source.x;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.n;
import com.google.android.exoplayer2.upstream.r;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/h.class */
public final class h implements t {

    /* renamed from: a  reason: collision with root package name */
    private final h.a f21609a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<t> f21610b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f21611c;

    /* renamed from: d  reason: collision with root package name */
    private a f21612d;
    private b.a e;
    private r f;
    private long g;
    private long h;
    private long i;
    private float j;
    private float k;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/h$a.class */
    public interface a {
        b a();
    }

    public h(Context context) {
        this(new n(context));
    }

    public h(Context context, l lVar) {
        this(new n(context), lVar);
    }

    public h(h.a aVar) {
        this(aVar, new f());
    }

    public h(h.a aVar, l lVar) {
        this.f21609a = aVar;
        SparseArray<t> a2 = a(aVar, lVar);
        this.f21610b = a2;
        this.f21611c = new int[a2.size()];
        for (int i = 0; i < this.f21610b.size(); i++) {
            this.f21611c[i] = this.f21610b.keyAt(i);
        }
        this.g = -9223372036854775807L;
        this.h = -9223372036854775807L;
        this.i = -9223372036854775807L;
        this.j = -3.4028235E38f;
        this.k = -3.4028235E38f;
    }

    private static SparseArray<t> a(h.a aVar, l lVar) {
        SparseArray<t> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (t) Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(t.class).getConstructor(h.a.class).newInstance(aVar));
        } catch (Exception e) {
        }
        try {
            sparseArray.put(1, (t) Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(t.class).getConstructor(h.a.class).newInstance(aVar));
        } catch (Exception e2) {
        }
        try {
            sparseArray.put(2, (t) Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(t.class).getConstructor(h.a.class).newInstance(aVar));
        } catch (Exception e3) {
        }
        sparseArray.put(3, new x.a(aVar, lVar));
        return sparseArray;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
        if (r14.i != (-9223372036854775807L)) goto L_0x00b8;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02ad  */
    @Override // com.google.android.exoplayer2.source.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.source.r a(com.google.android.exoplayer2.MediaItem r15) {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.h.a(com.google.android.exoplayer2.MediaItem):com.google.android.exoplayer2.source.r");
    }

    @Override // com.google.android.exoplayer2.source.t
    public final int[] a() {
        int[] iArr = this.f21611c;
        return Arrays.copyOf(iArr, iArr.length);
    }
}
