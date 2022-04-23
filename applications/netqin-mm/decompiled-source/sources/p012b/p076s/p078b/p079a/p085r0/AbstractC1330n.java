package p012b.p076s.p078b.p079a.p085r0;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1329m;
/* renamed from: b.s.b.a.r0.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/r0/n.class */
public interface AbstractC1330n<T extends AbstractC1329m> {

    /* renamed from: b.s.b.a.r0.n$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/n$a.class */
    public static final class C1331a {
    }

    /* renamed from: b.s.b.a.r0.n$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/n$b.class */
    public static final class C1332b {
    }

    /* renamed from: a */
    C1331a m33684a(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap) throws NotProvisionedException;

    /* renamed from: a */
    C1332b m33686a();

    /* renamed from: a */
    Map<String, String> m33685a(byte[] bArr);

    /* renamed from: a */
    void m33683a(byte[] bArr, byte[] bArr2);

    /* renamed from: b */
    T m33681b(byte[] bArr) throws MediaCryptoException;

    /* renamed from: b */
    byte[] m33682b() throws MediaDrmException;

    /* renamed from: b */
    byte[] m33680b(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    /* renamed from: c */
    void m33679c(byte[] bArr);

    /* renamed from: d */
    void m33678d(byte[] bArr) throws DeniedByServerException;
}
