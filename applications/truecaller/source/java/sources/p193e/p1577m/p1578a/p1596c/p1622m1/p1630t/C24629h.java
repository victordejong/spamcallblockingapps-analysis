package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import com.tenor.android.core.constant.StringConstant;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.t.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/h.class */
public final class C24629h {
    static {
        Pattern.compile("^NOTE([ \t].*)?$");
    }

    /* renamed from: a */
    public static float m4816a(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: b */
    public static long m4815b(String str) throws NumberFormatException {
        int i = C24773d0.f69427a;
        String[] split = str.split("\\.", 2);
        char c = 0;
        for (String str2 : C24773d0.m4628B(split[0], StringConstant.COLON)) {
            c = (c * '<') + Long.parseLong(str2);
        }
        ?? r0 = c * 1000;
        char c2 = r0;
        if (split.length == 2) {
            c2 = r0 + Long.parseLong(split[1]);
        }
        return c2 * 1000;
    }

    /* renamed from: c */
    public static void m4814c(C24798t c24798t) throws C24560m0 {
        int i = c24798t.f69505b;
        String m4540f = c24798t.m4540f();
        if (m4540f != null && m4540f.startsWith("WEBVTT")) {
            return;
        }
        c24798t.m4547C(i);
        StringBuilder m8728C = C22128a.m8728C("Expected WEBVTT. Got ");
        m8728C.append(c24798t.m4540f());
        throw new C24560m0(m8728C.toString());
    }
}
