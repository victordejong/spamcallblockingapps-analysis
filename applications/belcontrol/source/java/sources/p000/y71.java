package p000;

import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import p000.fa1;
import p000.n91;
import p000.q71;
import p000.w71;
/* renamed from: y71 */
/* loaded from: classes3-dex2jar.jar:y71.class */
public class y71 {

    /* renamed from: a */
    public static String f8707a = "y71";

    /* renamed from: y71$a */
    /* loaded from: classes3-dex2jar.jar:y71$a.class */
    public enum EnumC1734a {
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
        RefId,
        Parts
    }

    /* renamed from: a */
    public static String m98a(l81 l81Var) {
        String[] strArr = new String[EnumC1734a.values().length];
        strArr[EnumC1734a.RecordType.ordinal()] = String.valueOf(w71.EnumC1705c.MMS.ordinal());
        strArr[EnumC1734a.Name.ordinal()] = l81Var.f6925h.replace("\"", "\\\"");
        strArr[EnumC1734a.Number.ordinal()] = l81Var.f6929m.toString();
        strArr[EnumC1734a.Type.ordinal()] = String.valueOf(q71.EnumC1618e.m903a(l81Var.f6931o));
        strArr[EnumC1734a.ContactId.ordinal()] = String.valueOf(l81Var.m1333d0());
        int ordinal = EnumC1734a.Data.ordinal();
        String str = l81Var.f6928l;
        strArr[ordinal] = str != null ? str.replace("\"", "\\\"") : null;
        strArr[EnumC1734a.FilterReason.ordinal()] = l81Var.f6932p.name();
        strArr[EnumC1734a.ModifiedAt.ordinal()] = String.valueOf(l81Var.f6935s);
        strArr[EnumC1734a.Addressee.ordinal()] = l81Var.f6942z;
        strArr[EnumC1734a.MetaThreadId.ordinal()] = String.valueOf(l81Var.f6939w);
        strArr[EnumC1734a.ThreadId.ordinal()] = String.valueOf(l81Var.f6937u);
        strArr[EnumC1734a.RefId.ordinal()] = String.valueOf(l81Var.f6923f);
        ArrayList arrayList = new ArrayList();
        Cursor m545F = new t81().m545F(l81Var.f6922d);
        if (m545F != null) {
            try {
                if (m545F.moveToFirst() && m545F.getCount() > 0) {
                    do {
                        t81 t81Var = new t81();
                        t81Var.m546E(m545F);
                        arrayList.add(t81Var);
                    } while (m545F.moveToNext());
                }
            } catch (Throwable th) {
                j91.m1504l(f8707a, "Error creating MMS parts", th);
            }
        }
        if (m545F != null) {
            m545F.close();
        }
        strArr[EnumC1734a.Parts.ordinal()] = ka1.m1411m(arrayList);
        return "\"" + TextUtils.join("\",\"", strArr) + "\"\r\n";
    }

    /* renamed from: b */
    public static boolean m97b(String[] strArr) {
        ArrayList arrayList;
        l81 l81Var = new l81();
        l81Var.f6925h = strArr[EnumC1734a.Name.ordinal()];
        l81Var.f6929m = fa1.C1420e.m1800o(strArr[EnumC1734a.Number.ordinal()]);
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.MMS;
        l81Var.f6931o = EnumSet.of(enumC1618e);
        l81Var.f6928l = strArr[EnumC1734a.Data.ordinal()];
        l81Var.f6926j = true;
        l81Var.f6932p = n91.EnumC1484a.valueOf(strArr[EnumC1734a.FilterReason.ordinal()]);
        l81Var.f6935s = Long.valueOf(strArr[EnumC1734a.ModifiedAt.ordinal()]).longValue();
        l81Var.f6942z = strArr[EnumC1734a.Addressee.ordinal()];
        l81Var.f6939w = Long.valueOf(strArr[EnumC1734a.MetaThreadId.ordinal()]).longValue();
        l81Var.f6937u = Long.valueOf(strArr[EnumC1734a.ThreadId.ordinal()]).longValue();
        l81Var.f6923f = Long.valueOf(strArr[EnumC1734a.RefId.ordinal()]).longValue();
        l81Var.f6930n = 1;
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
        l81Var.mo148z();
        try {
            arrayList = (ArrayList) ka1.m1406r(strArr[EnumC1734a.Parts.ordinal()]);
        } catch (Throwable th) {
            arrayList = null;
        }
        if (arrayList == null) {
            return false;
        }
        l81Var.f6938v = arrayList.size();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            t81 t81Var = (t81) it.next();
            t81Var.m539L();
            t81Var.f8161f = l81Var.f6922d;
            t81Var.mo148z();
        }
        return true;
    }
}
