package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.internal.ads.zzjk;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c.class */
public final class C7189c {
    /* renamed from: a */
    public static int m20973a(AdRequest.ErrorCode errorCode) {
        int i = C7202d.f17316b[errorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    /* renamed from: a */
    public static MediationAdRequest m20972a(zzjk zzjkVar, boolean z) {
        List<String> list = zzjkVar.f6754e;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zzjkVar.f6751b);
        int i = zzjkVar.f6753d;
        return new MediationAdRequest(date, i != 1 ? i != 2 ? AdRequest.Gender.UNKNOWN : AdRequest.Gender.FEMALE : AdRequest.Gender.MALE, hashSet, z, zzjkVar.f6760k);
    }
}
