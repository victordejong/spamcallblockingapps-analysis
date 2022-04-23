package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import androidx.annotation.RequiresApi;
import androidx.media.MediaSessionManager;
import androidx.media.MediaSessionManagerImplBase;
@RequiresApi(28)
/* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplApi28.class */
public class MediaSessionManagerImplApi28 extends MediaSessionManagerImplApi21 {
    public MediaSessionManager mObject;

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28.class */
    public static final class RemoteUserInfoImplApi28 extends MediaSessionManagerImplBase.RemoteUserInfoImplBase {
        public final MediaSessionManager.RemoteUserInfo mObject;

        public RemoteUserInfoImplApi28(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
            this.mObject = remoteUserInfo;
        }

        public RemoteUserInfoImplApi28(String str, int i, int i2) {
            super(str, i, i2);
            this.mObject = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }
    }

    public MediaSessionManagerImplApi28(Context context) {
        super(context);
        this.mObject = (MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // androidx.media.MediaSessionManagerImplApi21, androidx.media.MediaSessionManagerImplBase, androidx.media.MediaSessionManager.MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl) {
        return super.isTrustedForMediaControl(remoteUserInfoImpl);
    }
}
