package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/n.class */
public interface AbstractC5044n<T extends AbstractC5043m> {

    /* renamed from: com.google.android.exoplayer2.drm.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/n$a.class */
    public static final class C5045a {
    }

    /* renamed from: com.google.android.exoplayer2.drm.n$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/n$b.class */
    public interface AbstractC5046b<T extends AbstractC5043m> {
    }

    /* renamed from: com.google.android.exoplayer2.drm.n$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/n$c.class */
    public interface AbstractC5047c<T extends AbstractC5043m> {
        /* renamed from: a */
        AbstractC5044n<T> m20751a(UUID uuid);
    }

    /* renamed from: com.google.android.exoplayer2.drm.n$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/n$d.class */
    public static final class C5048d {
    }

    /* renamed from: a */
    Class<T> m20763a();

    /* renamed from: b */
    void m20762b();

    /* renamed from: c */
    Map<String, String> m20761c(byte[] bArr);

    /* renamed from: d */
    T m20760d(byte[] bArr);

    /* renamed from: e */
    C5048d m20759e();

    /* renamed from: f */
    byte[] m20758f();

    /* renamed from: g */
    void m20757g(byte[] bArr, byte[] bArr2);

    /* renamed from: h */
    void m20756h(byte[] bArr);

    /* renamed from: i */
    void m20755i(AbstractC5046b<? super T> abstractC5046b);

    /* renamed from: j */
    byte[] m20754j(byte[] bArr, byte[] bArr2);

    /* renamed from: k */
    void m20753k(byte[] bArr);

    /* renamed from: l */
    C5045a m20752l(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap);
}
