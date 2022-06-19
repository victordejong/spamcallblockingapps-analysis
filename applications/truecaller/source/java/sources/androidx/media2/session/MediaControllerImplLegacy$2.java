package androidx.media2.session;

import android.os.Bundle;
import android.os.ResultReceiver;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$2.class */
public class MediaControllerImplLegacy$2 extends ResultReceiver {
    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        new SessionResult(i, bundle);
        throw null;
    }
}
