package p000;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
/* renamed from: yf1 */
/* loaded from: classes3-dex2jar.jar:yf1.class */
public class yf1 implements SdkInitializationListener {

    /* renamed from: a */
    public SdkInitializationListener f8736a;

    /* renamed from: b */
    public int f8737b;

    /* renamed from: yf1$a */
    /* loaded from: classes3-dex2jar.jar:yf1$a.class */
    public class RunnableC1735a implements Runnable {
        public RunnableC1735a() {
            yf1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (yf1.this.f8736a != null) {
                yf1.this.f8736a.onInitializationFinished();
                yf1.this.f8736a = null;
            }
        }
    }

    public yf1(SdkInitializationListener sdkInitializationListener, int i) {
        Preconditions.checkNotNull(sdkInitializationListener);
        this.f8736a = sdkInitializationListener;
        this.f8737b = i;
    }

    @Override // com.mopub.common.SdkInitializationListener
    public void onInitializationFinished() {
        int i = this.f8737b - 1;
        this.f8737b = i;
        if (i <= 0) {
            new Handler(Looper.getMainLooper()).post(new RunnableC1735a());
        }
    }
}
