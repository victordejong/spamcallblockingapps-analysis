package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import java.util.concurrent.ArrayBlockingQueue;
/* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater.class */
public final class AsyncLayoutInflater {

    /* renamed from: a */
    LayoutInflater f1481a;

    /* renamed from: b */
    Handler f1482b;

    /* renamed from: c */
    InflateThread f1483c;

    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$1 */
    /* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater$1.class */
    class C01451 implements Handler.Callback {

        /* renamed from: a */
        final /* synthetic */ AsyncLayoutInflater f1484a;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            InflateRequest inflateRequest = (InflateRequest) message.obj;
            if (inflateRequest.f1489d == null) {
                inflateRequest.f1489d = this.f1484a.f1481a.inflate(inflateRequest.f1488c, inflateRequest.f1487b, false);
            }
            inflateRequest.f1490e.m21124a(inflateRequest.f1489d, inflateRequest.f1488c, inflateRequest.f1487b);
            this.f1484a.f1483c.m21126a(inflateRequest);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater.class */
    private static class BasicInflater extends LayoutInflater {

        /* renamed from: a */
        private static final String[] f1485a = {"android.widget.", "android.webkit.", "android.app."};

        BasicInflater(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new BasicInflater(context);
        }

        @Override // android.view.LayoutInflater
        protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
            View createView;
            for (String str2 : f1485a) {
                try {
                    createView = createView(str, str2, attributeSet);
                } catch (ClassNotFoundException e) {
                }
                if (createView != null) {
                    return createView;
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest.class */
    public static class InflateRequest {

        /* renamed from: a */
        AsyncLayoutInflater f1486a;

        /* renamed from: b */
        ViewGroup f1487b;

        /* renamed from: c */
        int f1488c;

        /* renamed from: d */
        View f1489d;

        /* renamed from: e */
        OnInflateFinishedListener f1490e;

        InflateRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread.class */
    private static class InflateThread extends Thread {

        /* renamed from: h */
        private static final InflateThread f1491h;

        /* renamed from: f */
        private ArrayBlockingQueue<InflateRequest> f1492f = new ArrayBlockingQueue<>(10);

        /* renamed from: g */
        private Pools.SynchronizedPool<InflateRequest> f1493g = new Pools.SynchronizedPool<>(10);

        static {
            InflateThread inflateThread = new InflateThread();
            f1491h = inflateThread;
            inflateThread.start();
        }

        private InflateThread() {
        }

        /* renamed from: a */
        public void m21126a(InflateRequest inflateRequest) {
            inflateRequest.f1490e = null;
            inflateRequest.f1486a = null;
            inflateRequest.f1487b = null;
            inflateRequest.f1488c = 0;
            inflateRequest.f1489d = null;
            this.f1493g.mo19342a(inflateRequest);
        }

        /* renamed from: b */
        public void m21125b() {
            try {
                InflateRequest take = this.f1492f.take();
                try {
                    take.f1489d = take.f1486a.f1481a.inflate(take.f1488c, take.f1487b, false);
                } catch (RuntimeException e) {
                    Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e);
                }
                Message.obtain(take.f1486a.f1482b, 0, take).sendToTarget();
            } catch (InterruptedException e2) {
                Log.w("AsyncLayoutInflater", e2);
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                m21125b();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener.class */
    public interface OnInflateFinishedListener {
        /* renamed from: a */
        void m21124a(@NonNull View view, @LayoutRes int i, @Nullable ViewGroup viewGroup);
    }
}
