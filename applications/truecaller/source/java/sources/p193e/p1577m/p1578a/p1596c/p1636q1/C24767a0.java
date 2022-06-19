package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.os.Handler;
import android.os.Message;
/* renamed from: e.m.a.c.q1.a0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/a0.class */
public final class C24767a0 {

    /* renamed from: a */
    public final Handler f69416a;

    public C24767a0(Handler handler) {
        this.f69416a = handler;
    }

    /* renamed from: a */
    public Message m4642a(int i, int i2, int i3) {
        return this.f69416a.obtainMessage(i, i2, i3);
    }

    /* renamed from: b */
    public Message m4641b(int i, int i2, int i3, Object obj) {
        return this.f69416a.obtainMessage(i, i2, i3, obj);
    }

    /* renamed from: c */
    public Message m4640c(int i, Object obj) {
        return this.f69416a.obtainMessage(i, obj);
    }

    /* renamed from: d */
    public boolean m4639d(int i) {
        return this.f69416a.sendEmptyMessage(i);
    }
}
