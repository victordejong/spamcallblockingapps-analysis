package p081h.p430l.p431a;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
/* renamed from: h.l.a.d */
/* loaded from: classes2-dex2jar.jar:h/l/a/d.class */
public class C10685d implements SdkInitializationListener {
    @Nullable

    /* renamed from: a */
    public SdkInitializationListener f24323a;

    /* renamed from: b */
    public int f24324b;

    /* renamed from: h.l.a.d$a */
    /* loaded from: classes2-dex2jar.jar:h/l/a/d$a.class */
    public class RunnableC10686a implements Runnable {
        public RunnableC10686a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C10685d.this.f24323a != null) {
                C10685d.this.f24323a.onInitializationFinished();
                C10685d.this.f24323a = null;
            }
        }
    }

    public C10685d(@NonNull SdkInitializationListener sdkInitializationListener, int i) {
        Preconditions.checkNotNull(sdkInitializationListener);
        this.f24323a = sdkInitializationListener;
        this.f24324b = i;
    }

    @Override // com.mopub.common.SdkInitializationListener
    public void onInitializationFinished() {
        this.f24324b--;
        if (this.f24324b <= 0) {
            new Handler(Looper.getMainLooper()).post(new RunnableC10686a());
        }
    }
}
