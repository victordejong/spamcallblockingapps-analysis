package androidx.media2.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import p012b.p076s.p116d.p117o.C1803a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$2.class */
public class MediaControllerImplLegacy$2 extends ResultReceiver {

    /* renamed from: a */
    public final /* synthetic */ C1803a f2195a;

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        this.f2195a.m32074d(new SessionResult(i, bundle));
        throw null;
    }
}
