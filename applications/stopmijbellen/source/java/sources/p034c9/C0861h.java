package p034c9;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* renamed from: c9.h */
/* loaded from: classes2-dex2jar.jar:c9/h.class */
public class C0861h extends SQLiteOpenHelper implements AbstractC0863i {

    /* renamed from: a */
    public C0857d f3154a;

    /* renamed from: b */
    public C0854a f3155b;

    /* renamed from: c9.h$a */
    /* loaded from: classes2-dex2jar.jar:c9/h$a.class */
    public class C0862a extends SQLiteOpenHelper implements AbstractC0863i {

        /* renamed from: a */
        public C0854a f3156a;

        /* renamed from: b */
        public final C0856c f3157b;

        public C0862a(C0861h c0861h, Context context, String str, int i, AbstractC2116c abstractC2116c) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i);
            this.f3157b = new C0856c(abstractC2116c);
        }

        @Override // p034c9.AbstractC0863i
        /* renamed from: d */
        public AbstractC0859f mo7245d() {
            if (this.f3156a == null) {
                this.f3156a = new C0854a(getWritableDatabase());
            }
            return this.f3156a;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f3157b.mo7263f(new C0854a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f3157b.mo7262g(new C0854a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            this.f3157b.mo7261h(new C0854a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f3157b.mo7260i(new C0854a(sQLiteDatabase), i, i2);
        }
    }

    public C0861h(AbstractC2116c abstractC2116c, AbstractC0858e abstractC0858e) {
        super(FlowManager.m3910c(), abstractC2116c.m3894g(), (SQLiteDatabase.CursorFactory) null, abstractC2116c.mo3892i());
        this.f3154a = new C0857d(null, abstractC2116c, abstractC2116c.mo3897d() ? new C0862a(this, FlowManager.m3910c(), C0857d.m7259j(abstractC2116c), abstractC2116c.mo3892i(), abstractC2116c) : null);
    }

    @Override // p034c9.AbstractC0863i
    /* renamed from: d */
    public AbstractC0859f mo7245d() {
        C0854a c0854a = this.f3155b;
        if (c0854a == null || !c0854a.f3147a.isOpen()) {
            this.f3155b = new C0854a(getWritableDatabase());
        }
        return this.f3155b;
    }

    /* renamed from: k */
    public void m7246k() {
        AbstractC0863i abstractC0863i;
        AbstractC0863i abstractC0863i2;
        C0857d c0857d = this.f3154a;
        String m3894g = c0857d.f3149a.m3894g();
        String m3894g2 = c0857d.f3149a.m3894g();
        File databasePath = FlowManager.m3910c().getDatabasePath(m3894g);
        if (!databasePath.exists() || (c0857d.f3149a.mo3898c() && (!c0857d.f3149a.mo3898c() || !c0857d.m7258k(c0857d.f3149a.m3891j())))) {
            databasePath.getParentFile().mkdirs();
            try {
                File databasePath2 = FlowManager.m3910c().getDatabasePath(C0857d.m7259j(c0857d.f3149a));
                c0857d.m7256m(databasePath, (!databasePath2.exists() || (c0857d.f3149a.mo3897d() && (!c0857d.f3149a.mo3897d() || (abstractC0863i2 = c0857d.f3151c) == null || !c0857d.m7258k(abstractC0863i2.mo7245d())))) ? FlowManager.m3910c().getAssets().open(m3894g2) : new FileInputStream(databasePath2));
            } catch (IOException e) {
                C2120f.m3889a(C2120f.EnumC2122b.f7695c, "Failed to open file", e);
            }
        }
        if (c0857d.f3149a.mo3897d()) {
            if (c0857d.f3151c == null) {
                throw new IllegalStateException("the passed backup helper was null, even though backup is enabled. Ensure that its passed in.");
            }
            String m7259j = C0857d.m7259j(c0857d.f3149a);
            String m3894g3 = c0857d.f3149a.m3894g();
            File databasePath3 = FlowManager.m3910c().getDatabasePath(m7259j);
            if (!databasePath3.exists()) {
                databasePath3.getParentFile().mkdirs();
                try {
                    File databasePath4 = FlowManager.m3910c().getDatabasePath(c0857d.f3149a.m3894g());
                    c0857d.m7256m(databasePath3, (!databasePath4.exists() || !c0857d.f3149a.mo3897d() || (abstractC0863i = c0857d.f3151c) == null || !c0857d.m7258k(abstractC0863i.mo7245d())) ? FlowManager.m3910c().getAssets().open(m3894g3) : new FileInputStream(databasePath4));
                } catch (IOException e2) {
                    C2120f.m3888b(C2120f.EnumC2122b.f7696d, e2);
                }
            }
            c0857d.f3151c.mo7245d();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f3154a.mo7263f(new C0854a(sQLiteDatabase));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C0857d c0857d = this.f3154a;
        C0854a c0854a = new C0854a(sQLiteDatabase);
        AbstractC0858e abstractC0858e = c0857d.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7252d(c0854a, i, i2);
        }
        c0857d.m7268a(c0854a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        C0857d c0857d = this.f3154a;
        C0854a c0854a = new C0854a(sQLiteDatabase);
        AbstractC0858e abstractC0858e = c0857d.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7253c(c0854a);
        }
        c0857d.m7268a(c0854a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C0857d c0857d = this.f3154a;
        C0854a c0854a = new C0854a(sQLiteDatabase);
        AbstractC0858e abstractC0858e = c0857d.f3150b;
        if (abstractC0858e != null) {
            abstractC0858e.m7254b(c0854a, i, i2);
        }
        c0857d.m7268a(c0854a);
        c0857d.m7265d(c0854a);
        c0857d.m7267b(c0854a, i, i2);
        c0857d.m7264e(c0854a);
    }
}
