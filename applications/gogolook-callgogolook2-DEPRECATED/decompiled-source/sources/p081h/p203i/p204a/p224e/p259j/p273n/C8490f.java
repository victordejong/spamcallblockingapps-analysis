package p081h.p203i.p204a.p224e.p259j.p273n;

import java.util.HashMap;
import java.util.Map;
/* renamed from: h.i.a.e.j.n.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/f.class */
public final class C8490f {

    /* renamed from: a */
    public static final String[] f19523a = {"text1", "text2", "icon", "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity", "thing_proto"};

    /* renamed from: b */
    public static final Map<String, Integer> f19524b = new HashMap(f19523a.length);

    static {
        int i = 0;
        while (true) {
            String[] strArr = f19523a;
            if (i < strArr.length) {
                f19524b.put(strArr[i], Integer.valueOf(i));
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static String m17901a(int i) {
        if (i < 0) {
            return null;
        }
        String[] strArr = f19523a;
        if (i >= strArr.length) {
            return null;
        }
        return strArr[i];
    }
}
