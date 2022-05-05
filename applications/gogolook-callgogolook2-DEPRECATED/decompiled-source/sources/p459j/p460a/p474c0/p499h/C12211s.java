package p459j.p460a.p474c0.p499h;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: j.a.c0.h.s */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/s.class */
public class C12211s extends HashSet<String> {
    public C12211s() {
    }

    public C12211s(Collection<String> collection) {
        super(collection);
    }

    /* renamed from: a */
    public static C12211s m6799a(String str) {
        return str != null ? new C12211s(Arrays.asList(str.split("\\|"))) : null;
    }

    public String first() {
        if (size() > 0) {
            return iterator().next();
        }
        return null;
    }

    /* renamed from: q */
    public String m6798q() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = iterator();
        boolean z = true;
        while (it.hasNext()) {
            String next = it.next();
            if (z) {
                z = false;
            } else {
                sb.append("|");
            }
            sb.append(next);
        }
        return sb.toString();
    }
}
