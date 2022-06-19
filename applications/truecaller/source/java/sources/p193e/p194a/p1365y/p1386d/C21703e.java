package p193e.p194a.p1365y.p1386d;

import android.content.ContentValues;
import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.y.d.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/e.class */
public final class C21703e implements AbstractC21702d {

    /* renamed from: a */
    public final AbstractC21701c f60475a;

    public C21703e(AbstractC21701c abstractC21701c) {
        l.e(abstractC21701c, "flashDao");
        this.f60475a = abstractC21701c;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: a */
    public Cursor mo9192a(String str) {
        l.e(str, "phoneNumber");
        return this.f60475a.mo9182a(str);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: b */
    public int mo9191b(String str) {
        l.e(str, "phoneNumber");
        return this.f60475a.mo9181b(str);
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: c */
    public int mo9190c(String[] strArr) {
        if (strArr != null) {
            return this.f60475a.mo9180c(strArr);
        }
        return -1;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: d */
    public long mo9189d(ContentValues contentValues) {
        if (contentValues != null) {
            String asString = contentValues.getAsString(AnalyticsConstants.PHONE);
            l.d(asString, "contentValues.getAsStrin….StateTable.COLUMN_PHONE)");
            Integer asInteger = contentValues.getAsInteger("flash_enabled");
            l.d(asInteger, "contentValues.getAsInteg…tateTable.COLUMN_ENABLED)");
            int intValue = asInteger.intValue();
            Integer asInteger2 = contentValues.getAsInteger("version");
            return this.f60475a.mo9179d(new C21720m(asString, intValue, asInteger2 != null ? asInteger2.intValue() : 0));
        }
        return -1;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: e */
    public Cursor mo9188e() {
        return this.f60475a.mo9178e();
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: f */
    public Cursor mo9187f() {
        return this.f60475a.mo9177f(0, "call_me_back");
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: g */
    public int mo9186g(String str, ContentValues contentValues) {
        l.e(str, "phoneNumber");
        if (contentValues != null) {
            AbstractC21701c abstractC21701c = this.f60475a;
            Long asLong = contentValues.getAsLong("timestamp");
            if (asLong == null) {
                return -1;
            }
            long longValue = asLong.longValue();
            String asString = contentValues.getAsString("type");
            if (asString == null) {
                return -1;
            }
            return abstractC21701c.mo9176g(longValue, asString, contentValues.getAsString("history"), str);
        }
        return -1;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: h */
    public long mo9185h(ContentValues contentValues) {
        if (contentValues != null) {
            String asString = contentValues.getAsString(AnalyticsConstants.PHONE);
            l.d(asString, "contentValues.getAsStrin…istoryTable.COLUMN_PHONE)");
            String asString2 = contentValues.getAsString("type");
            if (asString2 == null) {
                asString2 = "";
            }
            Long asLong = contentValues.getAsLong("timestamp");
            l.d(asLong, "contentValues.getAsLong(…ryTable.COLUMN_TIMESTAMP)");
            return this.f60475a.mo9174i(new C21710g(asString, asString2, asLong.longValue(), contentValues.getAsString("history")));
        }
        return -1;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: i */
    public int mo9184i(String str, ContentValues contentValues) {
        l.e(str, "phoneNumber");
        if (contentValues != null) {
            AbstractC21701c abstractC21701c = this.f60475a;
            Integer asInteger = contentValues.getAsInteger("flash_enabled");
            int i = 0;
            int intValue = asInteger != null ? asInteger.intValue() : 0;
            Integer asInteger2 = contentValues.getAsInteger("version");
            if (asInteger2 != null) {
                i = asInteger2.intValue();
            }
            return abstractC21701c.mo9173j(intValue, i, str);
        }
        return -1;
    }

    @Override // p193e.p194a.p1365y.p1386d.AbstractC21702d
    /* renamed from: j */
    public Cursor mo9183j(String[] strArr) {
        if (strArr != null) {
            return this.f60475a.mo9175h(strArr);
        }
        return null;
    }
}
