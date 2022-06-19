package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: androidx.media2.exoplayer.external.util.x */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/x.class */
final class C2028x implements AbstractC2008i {

    /* renamed from: a */
    private final Handler f8157a;

    public C2028x(Handler handler) {
        this.f8157a = handler;
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: a */
    public final Looper mo41491a() {
        return this.f8157a.getLooper();
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: a */
    public final Message mo41490a(int i) {
        return this.f8157a.obtainMessage(1, i, 0);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: a */
    public final Message mo41489a(int i, int i2, int i3, Object obj) {
        return this.f8157a.obtainMessage(i, i2, i3, obj);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: a */
    public final Message mo41488a(int i, Object obj) {
        return this.f8157a.obtainMessage(i, obj);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: a */
    public final boolean mo41487a(long j) {
        return this.f8157a.sendEmptyMessageAtTime(2, j);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: b */
    public final void mo41486b() {
        this.f8157a.removeMessages(2);
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2008i
    /* renamed from: b */
    public final boolean mo41485b(int i) {
        return this.f8157a.sendEmptyMessage(i);
    }
}
