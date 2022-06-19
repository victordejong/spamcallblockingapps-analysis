package com.googlecode.mp4parser.p425c;

import com.googlecode.mp4parser.C16246b;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.googlecode.mp4parser.c.j */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/j.class */
public class C16291j {

    /* renamed from: a */
    static Pattern f57549a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");

    /* renamed from: b */
    static final /* synthetic */ boolean f57550b = true;

    private C16291j() {
    }

    /* renamed from: a */
    public static <T extends AbstractC3476b> T m7500a(C16246b c16246b, String str) {
        List m7499a = m7499a((Object) c16246b, str, true);
        if (m7499a.isEmpty()) {
            return null;
        }
        return (T) m7499a.get(0);
    }

    /* renamed from: a */
    public static String m7505a(AbstractC3476b abstractC3476b) {
        AbstractC3476b abstractC3476b2 = abstractC3476b;
        String str = "";
        while (true) {
            AbstractC3487e parent = abstractC3476b2.getParent();
            int i = 0;
            for (AbstractC3476b abstractC3476b3 : parent.mo7491b()) {
                if (abstractC3476b3.getType().equals(abstractC3476b2.getType())) {
                    if (abstractC3476b3 == abstractC3476b2) {
                        break;
                    }
                    i++;
                }
            }
            str = String.valueOf(String.format("/%s[%d]", abstractC3476b2.getType(), Integer.valueOf(i))) + str;
            if (parent instanceof AbstractC3476b) {
                abstractC3476b2 = (AbstractC3476b) parent;
            } else {
                return str;
            }
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC3476b> List<T> m7504a(AbstractC3476b abstractC3476b, String str) {
        return m7499a((Object) abstractC3476b, str, false);
    }

    /* renamed from: a */
    private static <T extends AbstractC3476b> List<T> m7503a(AbstractC3476b abstractC3476b, String str, boolean z) {
        return m7499a((Object) abstractC3476b, str, z);
    }

    /* renamed from: a */
    public static <T extends AbstractC3476b> List<T> m7502a(AbstractC3487e abstractC3487e, String str) {
        return m7499a((Object) abstractC3487e, str, false);
    }

    /* renamed from: a */
    private static <T extends AbstractC3476b> List<T> m7501a(AbstractC3487e abstractC3487e, String str, boolean z) {
        return m7499a((Object) abstractC3487e, str, z);
    }

    /* renamed from: a */
    private static <T extends AbstractC3476b> List<T> m7499a(Object obj, String str, boolean z) {
        String str2;
        Object obj2 = obj;
        String str3 = str;
        if (str.startsWith("/")) {
            str3 = str.substring(1);
            while (obj instanceof AbstractC3476b) {
                obj = ((AbstractC3476b) obj).getParent();
            }
            obj2 = obj;
        }
        if (str3.length() == 0) {
            if (!(obj2 instanceof AbstractC3476b)) {
                throw new RuntimeException("Result of path expression seems to be the root container. This is not allowed!");
            }
            return Collections.singletonList((AbstractC3476b) obj2);
        }
        int i = 0;
        if (str3.contains("/")) {
            str2 = str3.substring(str3.indexOf(47) + 1);
            str3 = str3.substring(0, str3.indexOf(47));
        } else {
            str2 = "";
        }
        Matcher matcher = f57549a.matcher(str3);
        if (!matcher.matches()) {
            throw new RuntimeException(String.valueOf(str3) + " is invalid path.");
        }
        String group = matcher.group(1);
        if ("..".equals(group)) {
            return obj2 instanceof AbstractC3476b ? m7501a(((AbstractC3476b) obj2).getParent(), str2, z) : Collections.emptyList();
        } else if (!(obj2 instanceof AbstractC3487e)) {
            return Collections.emptyList();
        } else {
            int parseInt = matcher.group(2) != null ? Integer.parseInt(matcher.group(3)) : -1;
            LinkedList linkedList = new LinkedList();
            for (AbstractC3476b abstractC3476b : ((AbstractC3487e) obj2).mo7491b()) {
                int i2 = i;
                if (abstractC3476b.getType().matches(group)) {
                    if (parseInt == -1 || parseInt == i) {
                        linkedList.addAll(m7503a(abstractC3476b, str2, z));
                    }
                    i2 = i + 1;
                }
                if (!z) {
                    i = i2;
                    if (parseInt < 0) {
                        continue;
                    }
                }
                i = i2;
                if (!linkedList.isEmpty()) {
                    return linkedList;
                }
            }
            return linkedList;
        }
    }
}
