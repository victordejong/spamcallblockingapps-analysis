package p193e.p194a.p1049l4;

import com.truecaller.api.services.presence.p139v1.GetPresenceResponse;
import java.util.Map;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.l4.f */
/* loaded from: classes12-dex2jar.jar:e/a/l4/f.class */
public final class C17411f extends m implements l<Map.Entry<? extends String, ? extends GetPresenceResponse.PresenceData>, Boolean> {

    /* renamed from: b */
    public static final C17411f f48777b = new C17411f();

    public C17411f() {
        super(1);
    }

    /* renamed from: d */
    public Object m16132d(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        s1.z.c.l.e(entry, "<name for destructuring parameter 0>");
        return Boolean.valueOf((((String) entry.getKey()) == null || ((GetPresenceResponse.PresenceData) entry.getValue()) == null) ? false : true);
    }
}
