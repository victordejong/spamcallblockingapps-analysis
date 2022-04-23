package androidx.media2.exoplayer.external.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.media2.exoplayer.external.drm.m;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n.class */
public interface n<T extends m> {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2993a;

        /* renamed from: b  reason: collision with root package name */
        private final String f2994b;

        public a(byte[] bArr, String str) {
            this.f2993a = bArr;
            this.f2994b = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2995a;

        /* renamed from: b  reason: collision with root package name */
        private final String f2996b;

        public b(byte[] bArr, String str) {
            this.f2995a = bArr;
            this.f2996b = str;
        }
    }

    byte[] a() throws MediaDrmException;

    a b() throws NotProvisionedException;

    byte[] c() throws NotProvisionedException, DeniedByServerException;

    b d();

    Map<String, String> e();

    T f() throws MediaCryptoException;

    Class<T> g();
}
