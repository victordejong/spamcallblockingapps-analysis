package p459j.p460a.p582w0;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.v3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/v3.class */
public final class C14196v3 {
    static {
        new C14196v3();
        C15149k.m383a((Object) Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2), "Pattern.compile(\"([-+]?)…Pattern.CASE_INSENSITIVE)");
    }

    /* renamed from: a */
    public static final boolean m2252a(String str, String str2, long j) {
        C15149k.m377b(str, "start");
        C15149k.m377b(str2, "end");
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date parse = simpleDateFormat.parse(str);
            Date parse2 = simpleDateFormat.parse(str2);
            C15149k.m383a((Object) parse, "startDate");
            if (parse.getTime() <= 0) {
                return false;
            }
            C15149k.m383a((Object) parse2, "endDate");
            if (parse2.getTime() <= 0 || parse.getTime() >= j) {
                return false;
            }
            return parse2.getTime() > j;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return false;
        }
    }
}
