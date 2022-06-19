package p1727n3.p1874y.p1876b.p1877a.p1881p0;

import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import p1727n3.p1874y.p1876b.p1877a.C27073c;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.C27163e;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.p0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/p0/a.class */
public class C27157a<T extends C27163e> implements AbstractC27160c<T> {
    /* renamed from: e */
    public static List<DrmInitData.SchemeData> m778e(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f981d);
        for (int i = 0; i < drmInitData.f981d; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.f978a[i];
            if ((schemeData.m42829a(null) || (C27073c.f75658c.equals(null) && schemeData.m42829a(C27073c.f75657b))) && (schemeData.f986e != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
    /* renamed from: a */
    public int mo777a() {
        return 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
    /* renamed from: b */
    public boolean mo776b(DrmInitData drmInitData) {
        if (((ArrayList) m778e(drmInitData, null, true)).isEmpty()) {
            if (drmInitData.f981d != 1 || !drmInitData.f978a[0].m42829a(C27073c.f75657b)) {
                return false;
            }
            AnalyticsConstants.NULL.length();
        }
        String str = drmInitData.f980c;
        boolean z = true;
        if (str != null) {
            if ("cenc".equals(str)) {
                z = true;
            } else if (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) {
                return true;
            } else {
                z = C27445x.f77229a >= 25;
            }
        }
        return z;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
    /* renamed from: c */
    public AbstractC27158b<T> mo775c(Looper looper, DrmInitData drmInitData) {
        MediaSessionCompat.m43184y(true);
        throw null;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
    /* renamed from: d */
    public Class<T> mo774d(DrmInitData drmInitData) {
        if (!mo776b(drmInitData)) {
            return null;
        }
        throw null;
    }
}
