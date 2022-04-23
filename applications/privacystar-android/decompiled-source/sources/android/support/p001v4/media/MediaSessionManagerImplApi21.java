package android.support.p001v4.media;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.p001v4.media.MediaSessionManager;
@RequiresApi(21)
/* renamed from: android.support.v4.media.MediaSessionManagerImplApi21 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaSessionManagerImplApi21.class */
class MediaSessionManagerImplApi21 extends MediaSessionManagerImplBase {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaSessionManagerImplApi21(Context context) {
        super(context);
        this.mContext = context;
    }

    private boolean hasMediaControlPermission(@NonNull MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl) {
        return getContext().checkPermission("android.permission.MEDIA_CONTENT_CONTROL", remoteUserInfoImpl.getPid(), remoteUserInfoImpl.getUid()) == 0;
    }

    @Override // android.support.p001v4.media.MediaSessionManagerImplBase, android.support.p001v4.media.MediaSessionManager.MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl) {
        return hasMediaControlPermission(remoteUserInfoImpl) || super.isTrustedForMediaControl(remoteUserInfoImpl);
    }
}
