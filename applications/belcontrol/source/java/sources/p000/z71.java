package p000;

import android.database.Cursor;
import android.text.TextUtils;
import java.util.EnumSet;
import p000.fa1;
import p000.n91;
import p000.q71;
import p000.w71;
/* renamed from: z71 */
/* loaded from: classes3-dex2jar.jar:z71.class */
public class z71 {

    /* renamed from: z71$a */
    /* loaded from: classes3-dex2jar.jar:z71$a.class */
    public enum EnumC1736a {
        RecordType,
        Name,
        Number,
        Type,
        ContactId,
        Data,
        FilterReason,
        ModifiedAt,
        Addressee,
        MetaThreadId,
        ThreadId,
        RefId
    }

    /* renamed from: a */
    public static String m70a(l81 l81Var) {
        String[] strArr = new String[EnumC1736a.values().length];
        strArr[EnumC1736a.RecordType.ordinal()] = String.valueOf(w71.EnumC1705c.SMS.ordinal());
        strArr[EnumC1736a.Name.ordinal()] = l81Var.f6925h.replace("\"", "\\\"");
        strArr[EnumC1736a.Number.ordinal()] = l81Var.f6929m.toString();
        strArr[EnumC1736a.Type.ordinal()] = String.valueOf(q71.EnumC1618e.m903a(l81Var.f6931o));
        strArr[EnumC1736a.ContactId.ordinal()] = String.valueOf(l81Var.m1333d0());
        int ordinal = EnumC1736a.Data.ordinal();
        String str = l81Var.f6928l;
        strArr[ordinal] = str != null ? str.replace("\"", "\\\"") : null;
        strArr[EnumC1736a.FilterReason.ordinal()] = l81Var.f6932p.name();
        strArr[EnumC1736a.ModifiedAt.ordinal()] = String.valueOf(l81Var.f6935s);
        strArr[EnumC1736a.Addressee.ordinal()] = l81Var.f6942z;
        strArr[EnumC1736a.MetaThreadId.ordinal()] = String.valueOf(l81Var.f6939w);
        strArr[EnumC1736a.ThreadId.ordinal()] = String.valueOf(l81Var.f6937u);
        strArr[EnumC1736a.RefId.ordinal()] = String.valueOf(l81Var.f6923f);
        return "\"" + TextUtils.join("\",\"", strArr) + "\"\r\n";
    }

    /* renamed from: b */
    public static boolean m69b(String[] strArr) {
        l81 l81Var = new l81();
        l81Var.f6925h = strArr[EnumC1736a.Name.ordinal()];
        l81Var.f6929m = fa1.C1420e.m1800o(strArr[EnumC1736a.Number.ordinal()]);
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        l81Var.f6931o = EnumSet.of(enumC1618e);
        EnumC1736a enumC1736a = EnumC1736a.Data;
        l81Var.f6928l = strArr[enumC1736a.ordinal()] != null ? strArr[enumC1736a.ordinal()].replace("\\\"", "\"") : null;
        l81Var.f6926j = true;
        l81Var.f6932p = n91.EnumC1484a.valueOf(strArr[EnumC1736a.FilterReason.ordinal()]);
        l81Var.f6935s = Long.valueOf(strArr[EnumC1736a.ModifiedAt.ordinal()]).longValue();
        l81Var.f6942z = strArr[EnumC1736a.Addressee.ordinal()];
        l81Var.f6939w = Long.valueOf(strArr[EnumC1736a.MetaThreadId.ordinal()]).longValue();
        l81Var.f6937u = Long.valueOf(strArr[EnumC1736a.ThreadId.ordinal()]).longValue();
        l81Var.f6923f = Long.valueOf(strArr[EnumC1736a.RefId.ordinal()]).longValue();
        l81Var.f6930n = 1;
        l81Var.f6938v = 0;
        l81Var.f6922d = -1L;
        l81Var.m1311z0();
        Cursor m1338Y = new l81().m1338Y(l81Var.f6929m, l81Var.f6935s, true, l81Var.f6928l, EnumSet.of(enumC1618e));
        if (m1338Y != null && m1338Y.moveToFirst()) {
            m1338Y.close();
            return true;
        }
        if (m1338Y != null) {
            m1338Y.close();
        }
        return l81Var.mo148z();
    }
}
