package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.log.AssertionUtil;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1054b1.C17908a;
import p193e.p194a.p1053m0.p1054b1.C17909b;
import p193e.p194a.p1053m0.p1054b1.C17910c;
import p193e.p194a.p1053m0.p1054b1.C17911d;
import p193e.p194a.p1053m0.p1054b1.C17912e;
import p193e.p194a.p1053m0.p1054b1.C17913f;
import p193e.p194a.p1053m0.p1054b1.C17914g;
import p193e.p194a.p1053m0.p1054b1.C17919l;
import p193e.p194a.p1053m0.p1054b1.p1055m.C17920a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.m0.c1.l0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/l0.class */
public class C18071l0 extends SQLiteOpenHelper {

    /* renamed from: f */
    public static C18071l0 f50995f;

    /* renamed from: a */
    public final Context f50996a;

    /* renamed from: b */
    public final AbstractC18063h0[] f50997b;

    /* renamed from: c */
    public final C18054d f50998c = new C18054d();

    /* renamed from: d */
    public final C18065i0 f50999d = new C18065i0();

    /* renamed from: e */
    public AbstractC19462a f51000e;

    /* renamed from: e.a.m0.c1.l0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/l0$a.class */
    public class C18072a extends RuntimeException {

        /* renamed from: a */
        public final RuntimeException f51001a;

        public C18072a(C18071l0 c18071l0, RuntimeException runtimeException) {
            super(runtimeException);
            this.f51001a = runtimeException;
        }
    }

    public C18071l0(Context context, AbstractC18063h0[] abstractC18063h0Arr, AbstractC19462a abstractC19462a) {
        super(context, "tc.db", (SQLiteDatabase.CursorFactory) null, 210);
        this.f50996a = context.getApplicationContext();
        this.f50997b = abstractC18063h0Arr;
        this.f51000e = abstractC19462a;
    }

    /* renamed from: d */
    public static AbstractC18063h0[] m15501d() {
        return new AbstractC18063h0[]{new C18022a(), new C18057e0(), new C18064i(), new C18068k(), new C18087z(), new C18076o(new C17913f(new C17914g())), new C18062h(new C17908a(), new C17909b(), new C17910c(), new C17911d(), new C17912e()), new C18066j(), new C18069k0(), new C18075n(), new C18070l(), new C18059f0(), new C18052c(), new C18053c0(), new C18058f(), new C18067j0(new C18065i0(), new C17920a()), new C18073m(), new C18056e(), new C18074m0(), new C18032b()};
    }

    /* renamed from: j */
    public static C18071l0 m15500j(Context context, AbstractC18063h0[] abstractC18063h0Arr, AbstractC19462a abstractC19462a) {
        C18071l0 c18071l0;
        synchronized (C18071l0.class) {
            try {
                if (f50995f == null) {
                    f50995f = new C18071l0(context, abstractC18063h0Arr, abstractC19462a);
                }
                c18071l0 = f50995f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c18071l0;
    }

    /* renamed from: b */
    public final void m15502b(SQLiteDatabase sQLiteDatabase) {
        for (AbstractC18063h0 abstractC18063h0 : this.f50997b) {
            for (String str : abstractC18063h0.mo15496c()) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        for (AbstractC18063h0 abstractC18063h0 : this.f50997b) {
            for (String str : abstractC18063h0.mo15498a()) {
                sQLiteDatabase.execSQL(str);
            }
        }
        m15502b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        sQLiteDatabase.enableWriteAheadLogging();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            C8472b.m28503a(sQLiteDatabase, ViewAction.VIEW);
            C8472b.m28503a(sQLiteDatabase, "trigger");
            if (i < 85) {
                for (AbstractC18063h0 abstractC18063h0 : this.f50997b) {
                    abstractC18063h0.mo15497b(this.f50996a, sQLiteDatabase, i, i2);
                }
                if (i < 12) {
                    this.f50996a.deleteDatabase("filterDatabase");
                }
                this.f50998c.mo15497b(this.f50996a, sQLiteDatabase, i, i2);
            }
            for (int max = Math.max(i + 1, 85); max <= i2; max++) {
                C17919l.m15547a(max, sQLiteDatabase);
            }
            m15502b(sQLiteDatabase);
            if (i >= 205) {
                return;
            }
            this.f50999d.m15507a(sQLiteDatabase);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            HashMap m8667T = C22128a.m8667T("VersionFrom", String.valueOf(i));
            m8667T.put("VersionTo", String.valueOf(i2));
            m8667T.put("ExceptionType", e.getClass().getCanonicalName());
            this.f51000e.mo13271e(new AbstractC19502g.C19504b.C19505a("DbUpgradeFailed", null, m8667T, null));
            throw new C18072a(this, e);
        }
    }
}
