package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1057c1.C18065i0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.m0.n0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/n0.class */
public final class C18114n0 implements C8456a.AbstractC8462f {

    /* renamed from: a */
    public final AbstractC8621z f51031a;

    /* renamed from: b */
    public final C18065i0 f51032b;

    public C18114n0(AbstractC8621z abstractC8621z, C18065i0 c18065i0) {
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c18065i0, "threadStatsCalculator");
        this.f51031a = abstractC8621z;
        this.f51032b = c18065i0;
    }

    /* renamed from: a */
    public final Long m15482a(SQLiteDatabase sQLiteDatabase, int i, String str) {
        return C19291g.m13584U0(sQLiteDatabase, "msg_participants", "_id", "type = ? AND normalized_destination = ?", new String[]{String.valueOf(i), str});
    }

    /* renamed from: b */
    public final int m15481b(SQLiteDatabase sQLiteDatabase, String str, String str2, long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, Long.valueOf(j2));
        return sQLiteDatabase.update(str, contentValues, str2 + " = ?", new String[]{String.valueOf(j)});
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0339  */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri mo15464c(p193e.p194a.p372b0.p413i.AbstractC8448a r11, p193e.p194a.p372b0.p413i.p414e.C8456a r12, android.net.Uri r13, android.content.ContentValues r14) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18114n0.mo15464c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, android.content.ContentValues):android.net.Uri");
    }
}
