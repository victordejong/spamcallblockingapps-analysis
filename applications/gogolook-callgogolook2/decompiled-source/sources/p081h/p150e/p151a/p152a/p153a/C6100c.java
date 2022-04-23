package p081h.p150e.p151a.p152a.p153a;

import com.crashlytics.android.answers.CustomEvent;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h.e.a.a.a.c */
/* loaded from: classes-dex2jar.jar:h/e/a/a/a/c.class */
public class C6100c {

    /* renamed from: a */
    public final String f15159a;

    /* renamed from: b */
    public final Map<String, Object> f15160b = new HashMap();

    public C6100c(String str) {
        this.f15159a = str;
    }

    /* renamed from: a */
    public CustomEvent m23849a() {
        CustomEvent customEvent = new CustomEvent(this.f15159a);
        for (String str : this.f15160b.keySet()) {
            Object obj = this.f15160b.get(str);
            if (obj instanceof String) {
                customEvent.putCustomAttribute(str, (String) obj);
            } else if (obj instanceof Number) {
                customEvent.putCustomAttribute(str, (Number) obj);
            }
        }
        return customEvent;
    }
}
