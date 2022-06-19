package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.source.hls.C1797k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.source.hls.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/n.class */
public final /* synthetic */ class RunnableC1802n implements Runnable {

    /* renamed from: a */
    private final C1797k.AbstractC1798a f7181a;

    private RunnableC1802n(C1797k.AbstractC1798a abstractC1798a) {
        this.f7181a = abstractC1798a;
    }

    /* renamed from: a */
    public static Runnable m42191a(C1797k.AbstractC1798a abstractC1798a) {
        return new RunnableC1802n(abstractC1798a);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7181a.mo42193f();
    }
}
