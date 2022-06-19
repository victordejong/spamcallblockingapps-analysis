package p278w8;

import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.support.p012v4.media.AbstractC0081a;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import p024b9.C0740a;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0860g;
import p256u8.C4553e;
import p267v8.AbstractC4654a;
import p267v8.C4658d;
/* renamed from: w8.d */
/* loaded from: classes2-dex2jar.jar:w8/d.class */
public abstract class AbstractC4773d<TModel> implements AbstractC4654a, AbstractC4770a {

    /* renamed from: a */
    public final Class<TModel> f14690a;

    public AbstractC4773d(Class<TModel> cls) {
        this.f14690a = cls;
    }

    @Override // p278w8.AbstractC4770a
    /* renamed from: a */
    public abstract C0740a.EnumC0741a mo459a();

    /* renamed from: c */
    public long m482c() {
        return m478h(FlowManager.m3903j(this.f14690a));
    }

    /* renamed from: d */
    public void m481d() {
        C0860g mo458i = mo458i();
        if (mo458i != null) {
            mo458i.close();
        } else {
            C4553e.m844c().mo845b(this.f14690a, mo459a());
        }
    }

    /* renamed from: e */
    public void m480e(AbstractC0859f abstractC0859f) {
        C0860g mo457j = new C4791r((AbstractC4774e) this, new AbstractC4787n[0]).mo457j(abstractC0859f);
        if (mo457j != null) {
            mo457j.close();
        } else {
            C4553e.m844c().mo845b(this.f14690a, mo459a());
        }
    }

    /* renamed from: g */
    public boolean m479g(AbstractC0859f abstractC0859f) {
        return m478h(abstractC0859f) > 0;
    }

    /* renamed from: h */
    public long m478h(AbstractC0859f abstractC0859f) {
        try {
            String mo238b = mo238b();
            C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7693a;
            C2120f.m3889a(enumC2122b, "Executing query: " + mo238b, null);
            char[] cArr = C4658d.f14356a;
            SQLiteStatement compileStatement = ((C0854a) abstractC0859f).f3147a.compileStatement(mo238b);
            long simpleQueryForLong = compileStatement.simpleQueryForLong();
            compileStatement.close();
            return simpleQueryForLong;
        } catch (SQLiteDoneException e) {
            C2120f.m3888b(C2120f.EnumC2122b.f7695c, e);
            return 0L;
        }
    }

    /* renamed from: i */
    public C0860g mo458i() {
        mo457j(FlowManager.m3903j(this.f14690a));
        return null;
    }

    /* renamed from: j */
    public C0860g mo457j(AbstractC0859f abstractC0859f) {
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7693a;
        if (!mo459a().equals(C0740a.EnumC0741a.INSERT)) {
            String mo238b = mo238b();
            C2120f.m3889a(enumC2122b, "Executing query: " + mo238b, null);
            ((C0854a) abstractC0859f).f3147a.execSQL(mo238b);
            return null;
        }
        String mo238b2 = mo238b();
        C2120f.m3889a(enumC2122b, "Compiling Query Into Statement: " + mo238b2, null);
        AbstractC0081a m7276a = ((C0854a) abstractC0859f).m7276a(mo238b2);
        if (m7276a.mo7270n() > 0) {
            C4553e.m844c().mo845b(this.f14690a, mo459a());
        }
        m7276a.mo7271l();
        return null;
    }

    public String toString() {
        return mo238b();
    }
}
