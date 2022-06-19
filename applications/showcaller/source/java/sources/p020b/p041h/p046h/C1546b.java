package p020b.p041h.p046h;

import android.os.Handler;
import android.os.Looper;
/* renamed from: b.h.h.b */
/* loaded from: classes-dex2jar.jar:b/h/h/b.class */
class C1546b {
    /* renamed from: a */
    public static Handler m29764a() {
        return Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
    }
}
