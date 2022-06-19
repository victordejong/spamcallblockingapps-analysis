package androidx.media2.exoplayer.external.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.drm.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n.class */
public interface AbstractC1472n<T extends AbstractC1471m> {

    /* renamed from: androidx.media2.exoplayer.external.drm.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n$a.class */
    public static final class C1473a {

        /* renamed from: a */
        private final byte[] f5586a;

        /* renamed from: b */
        private final String f5587b;

        public C1473a(byte[] bArr, String str) {
            this.f5586a = bArr;
            this.f5587b = str;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/n$b.class */
    public static final class C1474b {

        /* renamed from: a */
        private final byte[] f5588a;

        /* renamed from: b */
        private final String f5589b;

        public C1474b(byte[] bArr, String str) {
            this.f5588a = bArr;
            this.f5589b = str;
        }
    }

    /* renamed from: a */
    byte[] m42859a() throws MediaDrmException;

    /* renamed from: b */
    C1473a m42858b() throws NotProvisionedException;

    /* renamed from: c */
    byte[] m42857c() throws NotProvisionedException, DeniedByServerException;

    /* renamed from: d */
    C1474b m42856d();

    /* renamed from: e */
    Map<String, String> m42855e();

    /* renamed from: f */
    T m42854f() throws MediaCryptoException;

    /* renamed from: g */
    Class<T> m42853g();
}
