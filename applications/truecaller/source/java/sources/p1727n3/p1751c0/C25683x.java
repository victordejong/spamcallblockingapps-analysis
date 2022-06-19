package p1727n3.p1751c0;

import android.database.Cursor;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p1727n3.p1781e0.p1782a.C26146a;
import p1727n3.p1781e0.p1782a.p1783g.C26155a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.x */
/* loaded from: classes-dex2jar.jar:n3/c0/x.class */
public class C25683x extends AbstractC26148c.AbstractC26149a {

    /* renamed from: b */
    public C25651h f71948b;

    /* renamed from: c */
    public final AbstractC25684a f71949c;

    /* renamed from: d */
    public final String f71950d;

    /* renamed from: e */
    public final String f71951e;

    /* renamed from: n3.c0.x$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/x$a.class */
    public static abstract class AbstractC25684a {
        public final int version;

        public AbstractC25684a(int i) {
            this.version = i;
        }

        public abstract void createAllTables(AbstractC26147b abstractC26147b);

        public abstract void dropAllTables(AbstractC26147b abstractC26147b);

        public abstract void onCreate(AbstractC26147b abstractC26147b);

        public abstract void onOpen(AbstractC26147b abstractC26147b);

        public abstract void onPostMigrate(AbstractC26147b abstractC26147b);

        public abstract void onPreMigrate(AbstractC26147b abstractC26147b);

        public abstract C25685b onValidateSchema(AbstractC26147b abstractC26147b);

        @Deprecated
        public void validateMigration(AbstractC26147b abstractC26147b) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }
    }

    /* renamed from: n3.c0.x$b */
    /* loaded from: classes-dex2jar.jar:n3/c0/x$b.class */
    public static class C25685b {

        /* renamed from: a */
        public final boolean f71952a;

        /* renamed from: b */
        public final String f71953b;

        public C25685b(boolean z, String str) {
            this.f71952a = z;
            this.f71953b = str;
        }
    }

    public C25683x(C25651h c25651h, AbstractC25684a abstractC25684a, String str, String str2) {
        super(abstractC25684a.version);
        this.f71948b = c25651h;
        this.f71949c = abstractC25684a;
        this.f71950d = str;
        this.f71951e = str2;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26149a
    /* renamed from: b */
    public void mo2680b(AbstractC26147b abstractC26147b) {
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26149a
    /* renamed from: c */
    public void mo2679c(AbstractC26147b abstractC26147b) {
        Cursor mo2666X = ((C26155a) abstractC26147b).mo2666X(new C26146a("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'"));
        try {
            boolean z = false;
            if (mo2666X.moveToFirst()) {
                z = false;
                if (mo2666X.getInt(0) == 0) {
                    z = true;
                }
            }
            mo2666X.close();
            this.f71949c.createAllTables(abstractC26147b);
            if (!z) {
                C25685b onValidateSchema = this.f71949c.onValidateSchema(abstractC26147b);
                if (!onValidateSchema.f71952a) {
                    StringBuilder m8728C = C22128a.m8728C("Pre-packaged database has an invalid schema: ");
                    m8728C.append(onValidateSchema.f71953b);
                    throw new IllegalStateException(m8728C.toString());
                }
            }
            m3060g(abstractC26147b);
            this.f71949c.onCreate(abstractC26147b);
        } catch (Throwable th) {
            mo2666X.close();
            throw th;
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26149a
    /* renamed from: d */
    public void mo2678d(AbstractC26147b abstractC26147b, int i, int i2) {
        mo2676f(abstractC26147b, i, i2);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26149a
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo2677e(p1727n3.p1781e0.p1782a.AbstractC26147b r6) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1751c0.C25683x.mo2677e(n3.e0.a.b):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bd A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fd A[EDGE_INSN: B:71:0x00fd->B:45:0x00fd ?: BREAK  , SYNTHETIC] */
    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26149a
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo2676f(p1727n3.p1781e0.p1782a.AbstractC26147b r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1751c0.C25683x.mo2676f(n3.e0.a.b, int, int):void");
    }

    /* renamed from: g */
    public final void m3060g(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        String str = this.f71950d;
        abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
    }
}
