package p193e.p1512i.p1516b.p1533u2;

import android.content.Context;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1523l2.C22978b;
import p193e.p1512i.p1516b.p1530s1.C23071d;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1535v1.C23141b;
import p193e.p1512i.p1516b.p1535v1.C23142c;
/* renamed from: e.i.b.u2.r */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/r.class */
public class C23128r {

    /* renamed from: a */
    public final Context f64053a;

    /* renamed from: b */
    public final String f64054b;

    /* renamed from: c */
    public final C23134y f64055c;

    /* renamed from: d */
    public final C23073b f64056d;

    /* renamed from: e */
    public final C22978b f64057e;

    /* renamed from: f */
    public final C23071d f64058f;

    /* renamed from: g */
    public final C23080f f64059g;

    /* renamed from: h */
    public final C22935c f64060h;

    /* renamed from: i */
    public final C23141b f64061i;

    /* renamed from: j */
    public final C23142c f64062j;

    public C23128r(Context context, String str, C23134y c23134y, C23073b c23073b, C22978b c22978b, C23071d c23071d, C23080f c23080f, C22935c c22935c, C23141b c23141b, C23142c c23142c) {
        this.f64053a = context;
        this.f64054b = str;
        this.f64055c = c23134y;
        this.f64056d = c23073b;
        this.f64057e = c22978b;
        this.f64058f = c23071d;
        this.f64059g = c23080f;
        this.f64060h = c22935c;
        this.f64061i = c23141b;
        this.f64062j = c23142c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.util.Map] */
    @SafeVarargs
    /* renamed from: a */
    public final Map<String, Object> m7491a(Map<String, Object>... mapArr) {
        boolean z;
        ?? r0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        for (Map<String, Object> map : mapArr) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String[] split = entry.getKey().split("\\.", -1);
                int length = split.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    } else if (split[i].isEmpty()) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z) {
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    for (int i2 = 0; i2 < split.length - 1; i2++) {
                        String str = split[i2];
                        if (linkedHashMap2.containsKey(str)) {
                            Object obj = linkedHashMap2.get(str);
                            if (!newSetFromMap.contains(obj)) {
                                break;
                            }
                            r0 = (Map) obj;
                        } else {
                            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                            newSetFromMap.add(linkedHashMap3);
                            linkedHashMap2.put(str, linkedHashMap3);
                            r0 = linkedHashMap3;
                        }
                        linkedHashMap2 = r0;
                    }
                    String str2 = split[split.length - 1];
                    if (!linkedHashMap2.containsKey(str2)) {
                        linkedHashMap2.put(str2, entry.getValue());
                    }
                }
            }
        }
        return linkedHashMap;
    }
}
