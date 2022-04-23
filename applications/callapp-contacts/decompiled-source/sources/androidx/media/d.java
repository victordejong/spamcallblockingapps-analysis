package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import androidx.media.b;
import androidx.media.e;
/* loaded from: classes-dex2jar.jar:androidx/media/d.class */
final class d extends c {

    /* renamed from: a  reason: collision with root package name */
    MediaSessionManager f2712a;

    /* loaded from: classes-dex2jar.jar:androidx/media/d$a.class */
    static final class a extends e.a {

        /* renamed from: a  reason: collision with root package name */
        final MediaSessionManager.RemoteUserInfo f2713a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
            this.f2713a = remoteUserInfo;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, int i, int i2) {
            super(str, i, i2);
            this.f2713a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        super(context);
        this.f2712a = (MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // androidx.media.c, androidx.media.e, androidx.media.b.a
    public final boolean a(b.c cVar) {
        return super.a(cVar);
    }
}
