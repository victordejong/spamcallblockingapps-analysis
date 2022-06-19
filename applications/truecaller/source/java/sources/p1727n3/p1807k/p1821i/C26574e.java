package p1727n3.p1807k.p1821i;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
/* renamed from: n3.k.i.e */
/* loaded from: classes-dex2jar.jar:n3/k/i/e.class */
public final class C26574e {

    /* renamed from: a */
    public final AbstractC26575a f74449a;

    /* renamed from: n3.k.i.e$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/e$a.class */
    public interface AbstractC26575a {
    }

    /* renamed from: n3.k.i.e$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/e$b.class */
    public static class C26576b implements AbstractC26575a {

        /* renamed from: a */
        public final GestureDetector f74450a;

        public C26576b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f74450a = new GestureDetector(context, onGestureListener, handler);
        }
    }

    public C26574e(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this.f74449a = new C26576b(context, onGestureListener, null);
    }
}
