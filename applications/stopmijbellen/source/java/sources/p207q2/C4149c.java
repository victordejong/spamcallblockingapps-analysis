package p207q2;

import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
/* renamed from: q2.c */
/* loaded from: classes-dex2jar.jar:q2/c.class */
public class C4149c implements MediaViewListener {

    /* renamed from: a */
    public final /* synthetic */ C4150d f13096a;

    public C4149c(C4150d c4150d) {
        this.f13096a = c4150d;
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onComplete(MediaView mediaView) {
        MediationNativeAdCallback mediationNativeAdCallback = this.f13096a.f13100d;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onVideoComplete();
        }
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onEnterFullscreen(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onExitFullscreen(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onFullscreenBackground(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onFullscreenForeground(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onPause(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onPlay(MediaView mediaView) {
    }

    @Override // com.facebook.ads.MediaViewListener
    public void onVolumeChange(MediaView mediaView, float f) {
    }
}
