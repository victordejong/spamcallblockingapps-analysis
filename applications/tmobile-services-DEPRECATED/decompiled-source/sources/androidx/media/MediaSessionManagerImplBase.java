package androidx.media;

import android.text.TextUtils;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplBase.class */
class MediaSessionManagerImplBase implements MediaSessionManager.MediaSessionManagerImpl {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase.class */
    public static class RemoteUserInfoImplBase implements MediaSessionManager.RemoteUserInfoImpl {

        /* renamed from: a */
        private String f4301a;

        /* renamed from: b */
        private int f4302b;

        /* renamed from: c */
        private int f4303c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteUserInfoImplBase(String str, int i, int i2) {
            this.f4301a = str;
            this.f4302b = i;
            this.f4303c = i2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplBase)) {
                return false;
            }
            RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
            if (!(TextUtils.equals(this.f4301a, remoteUserInfoImplBase.f4301a) && this.f4302b == remoteUserInfoImplBase.f4302b && this.f4303c == remoteUserInfoImplBase.f4303c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ObjectsCompat.m19345b(this.f4301a, Integer.valueOf(this.f4302b), Integer.valueOf(this.f4303c));
        }
    }

    static {
        boolean z = MediaSessionManager.f4298a;
    }
}
