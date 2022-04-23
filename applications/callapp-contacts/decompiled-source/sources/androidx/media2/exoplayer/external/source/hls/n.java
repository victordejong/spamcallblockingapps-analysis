package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.source.hls.k;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/n.class */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k.a f3675a;

    private n(k.a aVar) {
        this.f3675a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(k.a aVar) {
        return new n(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3675a.f();
    }
}
