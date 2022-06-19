package p000;

import android.database.Cursor;
import android.text.TextUtils;
import java.util.EnumSet;
import p000.fa1;
import p000.n91;
import p000.q71;
import p000.w71;
/* renamed from: x71 */
/* loaded from: classes3-dex2jar.jar:x71.class */
public class x71 {

    /* renamed from: x71$a */
    /* loaded from: classes3-dex2jar.jar:x71$a.class */
    public enum EnumC1720a {
        RecordType,
        Name,
        Number,
        Type,
        ContactId,
        Data,
        FilterReason,
        RefId,
        ModifiedAt
    }

    /* renamed from: a */
    public static String m170a(l81 l81Var) {
        String[] strArr = new String[EnumC1720a.values().length];
        strArr[EnumC1720a.RecordType.ordinal()] = String.valueOf(w71.EnumC1705c.Call.ordinal());
        strArr[EnumC1720a.ContactId.ordinal()] = String.valueOf(l81Var.m1333d0());
        strArr[EnumC1720a.Name.ordinal()] = l81Var.f6925h.replace("\"", "\\\"");
        strArr[EnumC1720a.Number.ordinal()] = l81Var.f6929m.toString();
        strArr[EnumC1720a.Type.ordinal()] = String.valueOf(q71.EnumC1618e.m903a(l81Var.f6931o));
        strArr[EnumC1720a.FilterReason.ordinal()] = l81Var.f6932p.name();
        strArr[EnumC1720a.RefId.ordinal()] = String.valueOf(l81Var.f6923f);
        strArr[EnumC1720a.ModifiedAt.ordinal()] = String.valueOf(l81Var.f6935s);
        return "\"" + TextUtils.join("\",\"", strArr) + "\"\r\n";
    }

    /* renamed from: b */
    public static boolean m169b(String[] strArr) {
        l81 l81Var = new l81();
        l81Var.f6925h = strArr[EnumC1720a.Name.ordinal()];
        l81Var.f6929m = fa1.C1420e.m1800o(strArr[EnumC1720a.Number.ordinal()]);
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
        l81Var.f6931o = EnumSet.of(enumC1618e);
        l81Var.f6928l = null;
        l81Var.f6926j = true;
        l81Var.f6932p = n91.EnumC1484a.valueOf(strArr[EnumC1720a.FilterReason.ordinal()]);
        l81Var.f6923f = Integer.valueOf(strArr[EnumC1720a.RefId.ordinal()]).intValue();
        l81Var.f6935s = Long.valueOf(strArr[EnumC1720a.ModifiedAt.ordinal()]).longValue();
        l81Var.m1311z0();
        Cursor m1337Z = new l81().m1337Z(l81Var.f6929m, l81Var.f6935s, true, EnumSet.of(enumC1618e));
        if (m1337Z != null && m1337Z.moveToFirst()) {
            m1337Z.close();
            return true;
        }
        if (m1337Z != null) {
            m1337Z.close();
        }
        return l81Var.mo148z();
    }
}
