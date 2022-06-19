package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;
/* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$Command */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command.class */
public final class MediaSessionCompat$MediaSessionImplBase$Command {
    public final String command;
    public final Bundle extras;
    public final ResultReceiver stub;

    public MediaSessionCompat$MediaSessionImplBase$Command(String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.command = str;
        this.extras = bundle;
        this.stub = resultReceiver;
    }
}
