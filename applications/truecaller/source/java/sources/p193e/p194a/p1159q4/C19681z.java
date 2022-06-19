package p193e.p194a.p1159q4;

import com.truecaller.clevertap.CleverTapManager;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.q4.z */
/* loaded from: classes12-dex2jar.jar:e/a/q4/z.class */
public final class C19681z implements AbstractC19647j0 {

    /* renamed from: a */
    public final CleverTapManager f54684a;

    @Inject
    public C19681z(CleverTapManager cleverTapManager) {
        l.e(cleverTapManager, "cleverTapManager");
        this.f54684a = cleverTapManager;
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: a */
    public void mo13000a(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str != null) {
            linkedHashMap.put("UiType", str);
        }
        this.f54684a.push("ReferralSent", linkedHashMap);
        this.f54684a.updateProfile(C25225a.m3938Z1(new k("SentReferral", Boolean.TRUE)));
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: b */
    public void mo12999b(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str != null) {
            linkedHashMap.put("Source", str);
        }
        if (str2 != null) {
            linkedHashMap.put("Medium", str2);
        }
        this.f54684a.push("ReferralReceived", linkedHashMap);
        this.f54684a.updateProfile(C25225a.m3938Z1(new k("JoinedFromReferral", Boolean.TRUE)));
    }
}
