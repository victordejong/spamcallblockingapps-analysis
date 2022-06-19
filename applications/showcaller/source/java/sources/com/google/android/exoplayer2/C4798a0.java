package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.audio.AbstractC4830l;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.mediacodec.AbstractC5116f;
import com.google.android.exoplayer2.metadata.AbstractC5125e;
import com.google.android.exoplayer2.metadata.C5129f;
import com.google.android.exoplayer2.text.AbstractC5326j;
import com.google.android.exoplayer2.text.C5327k;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.video.AbstractC5569q;
import com.google.android.exoplayer2.video.MediaCodecVideoRenderer;
import com.google.android.exoplayer2.video.p261r.C5572b;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a0.class */
public class C4798a0 implements AbstractC5544v0 {

    /* renamed from: a */
    private final Context f14478a;

    /* renamed from: b */
    private AbstractC5040k<C5049o> f14479b;

    /* renamed from: e */
    private boolean f14482e;

    /* renamed from: f */
    private boolean f14483f;

    /* renamed from: c */
    private int f14480c = 0;

    /* renamed from: d */
    private long f14481d = 5000;

    /* renamed from: g */
    private AbstractC5116f f14484g = AbstractC5116f.f16084a;

    public C4798a0(Context context) {
        this.f14478a = context;
    }

    @Override // com.google.android.exoplayer2.AbstractC5544v0
    /* renamed from: a */
    public AbstractC5187r0[] mo18628a(Handler handler, AbstractC5569q abstractC5569q, AbstractC4830l abstractC4830l, AbstractC5326j abstractC5326j, AbstractC5125e abstractC5125e, AbstractC5040k<C5049o> abstractC5040k) {
        if (abstractC5040k == null) {
            abstractC5040k = this.f14479b;
        }
        ArrayList<AbstractC5187r0> arrayList = new ArrayList<>();
        m21723h(this.f14478a, this.f14480c, this.f14484g, abstractC5040k, this.f14482e, this.f14483f, handler, abstractC5569q, this.f14481d, arrayList);
        m21728c(this.f14478a, this.f14480c, this.f14484g, abstractC5040k, this.f14482e, this.f14483f, m21729b(), handler, abstractC4830l, arrayList);
        m21724g(this.f14478a, abstractC5326j, handler.getLooper(), this.f14480c, arrayList);
        m21726e(this.f14478a, abstractC5125e, handler.getLooper(), this.f14480c, arrayList);
        m21727d(this.f14478a, this.f14480c, arrayList);
        m21725f(this.f14478a, handler, this.f14480c, arrayList);
        return (AbstractC5187r0[]) arrayList.toArray(new AbstractC5187r0[0]);
    }

    /* renamed from: b */
    protected AudioProcessor[] m21729b() {
        return new AudioProcessor[0];
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:36|8|9|(2:41|10)|34|17|18|39|19|20|(3:42|26|30)) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:(2:41|10)|34|17|18|39|19|20|(3:42|26|30)) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f2, code lost:
        r17 = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m21728c(android.content.Context r16, int r17, com.google.android.exoplayer2.mediacodec.AbstractC5116f r18, com.google.android.exoplayer2.drm.AbstractC5040k<com.google.android.exoplayer2.drm.C5049o> r19, boolean r20, boolean r21, com.google.android.exoplayer2.audio.AudioProcessor[] r22, android.os.Handler r23, com.google.android.exoplayer2.audio.AbstractC4830l r24, java.util.ArrayList<com.google.android.exoplayer2.AbstractC5187r0> r25) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C4798a0.m21728c(android.content.Context, int, com.google.android.exoplayer2.mediacodec.f, com.google.android.exoplayer2.drm.k, boolean, boolean, com.google.android.exoplayer2.audio.AudioProcessor[], android.os.Handler, com.google.android.exoplayer2.audio.l, java.util.ArrayList):void");
    }

    /* renamed from: d */
    protected void m21727d(Context context, int i, ArrayList<AbstractC5187r0> arrayList) {
        arrayList.add(new C5572b());
    }

    /* renamed from: e */
    protected void m21726e(Context context, AbstractC5125e abstractC5125e, Looper looper, int i, ArrayList<AbstractC5187r0> arrayList) {
        arrayList.add(new C5129f(abstractC5125e, looper));
    }

    /* renamed from: f */
    protected void m21725f(Context context, Handler handler, int i, ArrayList<AbstractC5187r0> arrayList) {
    }

    /* renamed from: g */
    protected void m21724g(Context context, AbstractC5326j abstractC5326j, Looper looper, int i, ArrayList<AbstractC5187r0> arrayList) {
        arrayList.add(new C5327k(abstractC5326j, looper));
    }

    /* renamed from: h */
    protected void m21723h(Context context, int i, AbstractC5116f abstractC5116f, AbstractC5040k<C5049o> abstractC5040k, boolean z, boolean z2, Handler handler, AbstractC5569q abstractC5569q, long j, ArrayList<AbstractC5187r0> arrayList) {
        int i2;
        arrayList.add(new MediaCodecVideoRenderer(context, abstractC5116f, j, abstractC5040k, z, z2, handler, abstractC5569q, 50));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        int i3 = size;
        if (i == 2) {
            i3 = size - 1;
        }
        try {
            try {
                i2 = i3 + 1;
                try {
                    arrayList.add(i3, (AbstractC5187r0) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC5569q.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC5569q, 50));
                    C5526o.m18743e("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException e) {
                    i3 = i2;
                    i2 = i3;
                    arrayList.add(i2, (AbstractC5187r0) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC5569q.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC5569q, 50));
                    C5526o.m18743e("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
                }
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        } catch (ClassNotFoundException e3) {
        }
        try {
            arrayList.add(i2, (AbstractC5187r0) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, AbstractC5569q.class, Integer.TYPE).newInstance(Long.valueOf(j), handler, abstractC5569q, 50));
            C5526o.m18743e("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
        } catch (ClassNotFoundException e4) {
        } catch (Exception e5) {
            throw new RuntimeException("Error instantiating AV1 extension", e5);
        }
    }
}
