package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import androidx.media.C1329b;
import androidx.media.C1336e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media.d */
/* loaded from: classes-dex2jar.jar:androidx/media/d.class */
public final class C1334d extends C1333c {

    /* renamed from: a */
    MediaSessionManager f4995a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/d$a.class */
    public static final class C1335a extends C1336e.C1337a {

        /* renamed from: a */
        final MediaSessionManager.RemoteUserInfo f4996a;

        public C1335a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
            this.f4996a = remoteUserInfo;
        }

        public C1335a(String str, int i, int i2) {
            super(str, i, i2);
            this.f4996a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }
    }

    public C1334d(Context context) {
        super(context);
        this.f4995a = (MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // androidx.media.C1333c, androidx.media.C1336e, androidx.media.C1329b.AbstractC1330a
    /* renamed from: a */
    public final boolean mo43215a(C1329b.AbstractC1332c abstractC1332c) {
        return super.mo43215a(abstractC1332c);
    }
}
