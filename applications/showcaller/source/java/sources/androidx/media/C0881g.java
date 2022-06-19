package androidx.media;

import android.media.session.MediaSessionManager;
import p020b.p041h.p049k.C1592c;
/* renamed from: androidx.media.g */
/* loaded from: classes-dex2jar.jar:androidx/media/g.class */
final class C0881g implements AbstractC0880f {

    /* renamed from: a */
    final MediaSessionManager.RemoteUserInfo f3882a;

    public C0881g(String str, int i, int i2) {
        this.f3882a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0881g) {
            return this.f3882a.equals(((C0881g) obj).f3882a);
        }
        return false;
    }

    public int hashCode() {
        return C1592c.m29667b(this.f3882a);
    }
}
