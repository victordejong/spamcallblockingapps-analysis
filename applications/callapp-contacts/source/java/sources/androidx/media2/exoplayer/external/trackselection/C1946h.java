package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.trackselection.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/h.class */
public final class C1946h {

    /* renamed from: a */
    public final int f7825a;

    /* renamed from: b */
    public final RendererConfiguration[] f7826b;

    /* renamed from: c */
    public final C1943f f7827c;

    /* renamed from: d */
    public final Object f7828d;

    public C1946h(RendererConfiguration[] rendererConfigurationArr, AbstractC1940e[] abstractC1940eArr, Object obj) {
        this.f7826b = rendererConfigurationArr;
        this.f7827c = new C1943f(abstractC1940eArr);
        this.f7828d = obj;
        this.f7825a = rendererConfigurationArr.length;
    }

    /* renamed from: a */
    public final boolean m41818a(int i) {
        return this.f7826b[i] != null;
    }

    /* renamed from: a */
    public final boolean m41817a(C1946h c1946h, int i) {
        return c1946h != null && C1996ac.m41658a(this.f7826b[i], c1946h.f7826b[i]) && C1996ac.m41658a(this.f7827c.f7821b[i], c1946h.f7827c.f7821b[i]);
    }
}
