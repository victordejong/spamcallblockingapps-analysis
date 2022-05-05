package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.MediaSessionManagerImplApi28;
import androidx.media.MediaSessionManagerImplBase;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManager.class */
public final class MediaSessionManager {

    /* renamed from: a */
    static final boolean f4298a = Log.isLoggable("MediaSessionManager", 3);

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManager$MediaSessionManagerImpl.class */
    interface MediaSessionManagerImpl {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManager$RemoteUserInfo.class */
    public static final class RemoteUserInfo {

        /* renamed from: a */
        RemoteUserInfoImpl f4299a;

        @RequiresApi
        @RestrictTo
        public RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f4299a = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(remoteUserInfo);
        }

        public RemoteUserInfo(@NonNull String str, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 28) {
                this.f4299a = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(str, i, i2);
            } else {
                this.f4299a = new MediaSessionManagerImplBase.RemoteUserInfoImplBase(str, i, i2);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfo)) {
                return false;
            }
            return this.f4299a.equals(((RemoteUserInfo) obj).f4299a);
        }

        public int hashCode() {
            return this.f4299a.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManager$RemoteUserInfoImpl.class */
    interface RemoteUserInfoImpl {
    }
}
