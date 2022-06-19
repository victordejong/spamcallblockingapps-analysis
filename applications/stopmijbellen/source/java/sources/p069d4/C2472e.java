package p069d4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Objects;
/* renamed from: d4.e */
/* loaded from: classes-dex2jar.jar:d4/e.class */
public class C2472e {

    /* renamed from: c */
    public static C2472e f8709c;

    /* renamed from: a */
    public final Object f8710a = new Object();

    /* renamed from: b */
    public final Handler f8711b = new Handler(Looper.getMainLooper(), new C2473a());

    /* renamed from: d4.e$a */
    /* loaded from: classes-dex2jar.jar:d4/e$a.class */
    public class C2473a implements Handler.Callback {
        public C2473a() {
            C2472e.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C2472e c2472e = C2472e.this;
            C2474b c2474b = (C2474b) message.obj;
            synchronized (c2472e.f8710a) {
                if (c2474b == null) {
                    Objects.requireNonNull(c2474b);
                    throw null;
                }
            }
            return true;
        }
    }

    /* renamed from: d4.e$b */
    /* loaded from: classes-dex2jar.jar:d4/e$b.class */
    public static class C2474b {
    }
}
