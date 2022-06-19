package com.google.android.exoplayer2.source;

import android.content.Context;
import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.C11020f;
import com.google.android.exoplayer2.source.C11332x;
import com.google.android.exoplayer2.source.ads.AbstractC11280b;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.C11579n;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.source.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/h.class */
public final class C11299h implements AbstractC11321t {

    /* renamed from: a */
    private final AbstractC11567h.AbstractC11568a f37094a;

    /* renamed from: b */
    private final SparseArray<AbstractC11321t> f37095b;

    /* renamed from: c */
    private final int[] f37096c;

    /* renamed from: d */
    private AbstractC11300a f37097d;

    /* renamed from: e */
    private AbstractC11280b.AbstractC11281a f37098e;

    /* renamed from: f */
    private AbstractC11585r f37099f;

    /* renamed from: g */
    private long f37100g;

    /* renamed from: h */
    private long f37101h;

    /* renamed from: i */
    private long f37102i;

    /* renamed from: j */
    private float f37103j;

    /* renamed from: k */
    private float f37104k;

    /* renamed from: com.google.android.exoplayer2.source.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/h$a.class */
    public interface AbstractC11300a {
        /* renamed from: a */
        AbstractC11280b m20970a();
    }

    public C11299h(Context context) {
        this(new C11579n(context));
    }

    public C11299h(Context context, AbstractC11133l abstractC11133l) {
        this(new C11579n(context), abstractC11133l);
    }

    public C11299h(AbstractC11567h.AbstractC11568a abstractC11568a) {
        this(abstractC11568a, new C11020f());
    }

    public C11299h(AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11133l abstractC11133l) {
        this.f37094a = abstractC11568a;
        SparseArray<AbstractC11321t> m20971a = m20971a(abstractC11568a, abstractC11133l);
        this.f37095b = m20971a;
        this.f37096c = new int[m20971a.size()];
        for (int i = 0; i < this.f37095b.size(); i++) {
            this.f37096c[i] = this.f37095b.keyAt(i);
        }
        this.f37100g = -9223372036854775807L;
        this.f37101h = -9223372036854775807L;
        this.f37102i = -9223372036854775807L;
        this.f37103j = -3.4028235E38f;
        this.f37104k = -3.4028235E38f;
    }

    /* renamed from: a */
    private static SparseArray<AbstractC11321t> m20971a(AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11133l abstractC11133l) {
        SparseArray<AbstractC11321t> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (AbstractC11321t) Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(AbstractC11321t.class).getConstructor(AbstractC11567h.AbstractC11568a.class).newInstance(abstractC11568a));
        } catch (Exception e) {
        }
        try {
            sparseArray.put(1, (AbstractC11321t) Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(AbstractC11321t.class).getConstructor(AbstractC11567h.AbstractC11568a.class).newInstance(abstractC11568a));
        } catch (Exception e2) {
        }
        try {
            sparseArray.put(2, (AbstractC11321t) Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(AbstractC11321t.class).getConstructor(AbstractC11567h.AbstractC11568a.class).newInstance(abstractC11568a));
        } catch (Exception e3) {
        }
        sparseArray.put(3, new C11332x.C11334a(abstractC11568a, abstractC11133l));
        return sparseArray;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
        if (r14.f37102i != (-9223372036854775807L)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0254, code lost:
        if (r19.f34815e.f34847d != false) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02ad  */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11321t
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.source.AbstractC11315r mo20850a(com.google.android.exoplayer2.MediaItem r15) {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11299h.mo20850a(com.google.android.exoplayer2.MediaItem):com.google.android.exoplayer2.source.r");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11321t
    /* renamed from: a */
    public final int[] mo20852a() {
        int[] iArr = this.f37096c;
        return Arrays.copyOf(iArr, iArr.length);
    }
}
