package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.os.Handler;
import android.os.Message;
/* renamed from: n3.y.b.a.x0.t */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/t.class */
public final class C27441t {

    /* renamed from: a */
    public final Handler f77220a;

    public C27441t(Handler handler) {
        this.f77220a = handler;
    }

    /* renamed from: a */
    public Message m302a(int i, Object obj) {
        return this.f77220a.obtainMessage(i, obj);
    }

    /* renamed from: b */
    public boolean m301b(int i) {
        return this.f77220a.sendEmptyMessage(i);
    }
}
