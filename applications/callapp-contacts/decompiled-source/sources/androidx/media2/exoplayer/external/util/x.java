package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/x.class */
final class x implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f4186a;

    public x(Handler handler) {
        this.f4186a = handler;
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final Looper a() {
        return this.f4186a.getLooper();
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final Message a(int i) {
        return this.f4186a.obtainMessage(1, i, 0);
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final Message a(int i, int i2, int i3, Object obj) {
        return this.f4186a.obtainMessage(i, i2, i3, obj);
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final Message a(int i, Object obj) {
        return this.f4186a.obtainMessage(i, obj);
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final boolean a(long j) {
        return this.f4186a.sendEmptyMessageAtTime(2, j);
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final void b() {
        this.f4186a.removeMessages(2);
    }

    @Override // androidx.media2.exoplayer.external.util.i
    public final boolean b(int i) {
        return this.f4186a.sendEmptyMessage(i);
    }
}
