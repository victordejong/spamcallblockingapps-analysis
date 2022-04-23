package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final int f3988a;

    /* renamed from: b  reason: collision with root package name */
    public final RendererConfiguration[] f3989b;

    /* renamed from: c  reason: collision with root package name */
    public final f f3990c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f3991d;

    public h(RendererConfiguration[] rendererConfigurationArr, e[] eVarArr, Object obj) {
        this.f3989b = rendererConfigurationArr;
        this.f3990c = new f(eVarArr);
        this.f3991d = obj;
        this.f3988a = rendererConfigurationArr.length;
    }

    public final boolean a(int i) {
        return this.f3989b[i] != null;
    }

    public final boolean a(h hVar, int i) {
        return hVar != null && ac.a(this.f3989b[i], hVar.f3989b[i]) && ac.a(this.f3990c.f3984b[i], hVar.f3990c.f3984b[i]);
    }
}
