package androidx.media2.widget;

import android.util.Log;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$c.class */
public class VideoView$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f1250a;

    public VideoView$c(VideoView videoView, ListenableFuture listenableFuture) {
        this.f1250a = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            int c = ((yf) this.f1250a.get()).c();
            if (c == 0) {
                return;
            }
            Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: " + c);
        } catch (InterruptedException | ExecutionException e) {
            Log.e("VideoView", "calling setSurface(null) was not successful.", e);
        }
    }
}
