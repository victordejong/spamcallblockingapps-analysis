package com.googlecode.mp4parser.c;

import com.b.a.a.b;
import com.b.a.a.e;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/j.class */
public class j {

    /* renamed from: a  reason: collision with root package name */
    static Pattern f33177a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f33178b = true;

    private j() {
    }

    public static <T extends b> T a(com.googlecode.mp4parser.b bVar, String str) {
        List a2 = a((Object) bVar, str, true);
        if (a2.isEmpty()) {
            return null;
        }
        return (T) ((b) a2.get(0));
    }

    public static String a(b bVar) {
        String str = "";
        b bVar2 = bVar;
        while (true) {
            e parent = bVar2.getParent();
            int i = 0;
            for (b bVar3 : parent.b()) {
                if (bVar3.getType().equals(bVar2.getType())) {
                    if (bVar3 == bVar2) {
                        break;
                    }
                    i++;
                }
            }
            str = String.valueOf(String.format("/%s[%d]", bVar2.getType(), Integer.valueOf(i))) + str;
            if (!(parent instanceof b)) {
                return str;
            }
            bVar2 = (b) parent;
        }
    }

    public static <T extends b> List<T> a(b bVar, String str) {
        return a((Object) bVar, str, false);
    }

    private static <T extends b> List<T> a(b bVar, String str, boolean z) {
        return a((Object) bVar, str, z);
    }

    public static <T extends b> List<T> a(e eVar, String str) {
        return a((Object) eVar, str, false);
    }

    private static <T extends b> List<T> a(e eVar, String str, boolean z) {
        return a((Object) eVar, str, z);
    }

    private static <T extends b> List<T> a(Object obj, String str, boolean z) {
        String str2;
        Object obj2 = obj;
        String str3 = str;
        if (str.startsWith("/")) {
            str3 = str.substring(1);
            while (obj instanceof b) {
                obj = ((b) obj).getParent();
            }
            obj2 = obj;
        }
        if (str3.length() != 0) {
            int i = 0;
            if (str3.contains("/")) {
                str2 = str3.substring(str3.indexOf(47) + 1);
                str3 = str3.substring(0, str3.indexOf(47));
            } else {
                str2 = "";
            }
            Matcher matcher = f33177a.matcher(str3);
            if (matcher.matches()) {
                String group = matcher.group(1);
                if ("..".equals(group)) {
                    return obj2 instanceof b ? a(((b) obj2).getParent(), str2, z) : Collections.emptyList();
                }
                if (!(obj2 instanceof e)) {
                    return Collections.emptyList();
                }
                int parseInt = matcher.group(2) != null ? Integer.parseInt(matcher.group(3)) : -1;
                LinkedList linkedList = new LinkedList();
                for (b bVar : ((e) obj2).b()) {
                    int i2 = i;
                    if (bVar.getType().matches(group)) {
                        if (parseInt == -1 || parseInt == i) {
                            linkedList.addAll(a(bVar, str2, z));
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
            throw new RuntimeException(String.valueOf(str3) + " is invalid path.");
        } else if (obj2 instanceof b) {
            return Collections.singletonList((b) obj2);
        } else {
            throw new RuntimeException("Result of path expression seems to be the root container. This is not allowed!");
        }
    }
}
