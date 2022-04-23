package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.p001v4.media.session.AbstractC0054b;
import android.support.p001v4.media.session.MediaControllerCompat;
import androidx.core.app.C0247e;
import java.lang.ref.WeakReference;
/* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
class ResultReceiverC0046x50fd9e4a extends ResultReceiver {

    /* renamed from: b */
    private WeakReference<MediaControllerCompat.MediaControllerImplApi21> f86b;

    ResultReceiverC0046x50fd9e4a(MediaControllerCompat.MediaControllerImplApi21 mediaControllerImplApi21) {
        super(null);
        this.f86b = new WeakReference<>(mediaControllerImplApi21);
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        MediaControllerCompat.MediaControllerImplApi21 mediaControllerImplApi21 = this.f86b.get();
        if (mediaControllerImplApi21 != null && bundle != null) {
            synchronized (mediaControllerImplApi21.b) {
                mediaControllerImplApi21.e.m15075e(AbstractC0054b.a.h0(C0247e.m13653a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                mediaControllerImplApi21.e.m15074f(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                mediaControllerImplApi21.b();
            }
        }
    }
}
