package p000;
/* renamed from: p81 */
/* loaded from: classes3-dex2jar.jar:p81.class */
public class p81 extends o81 {
    @Override // p000.o81
    /* renamed from: J */
    public long mo938J() {
        try {
            return super.mo938J();
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: Q */
    public void m937Q() {
        m382c();
        try {
            v71.f8330c.getWritableDatabase().delete(super.mo59p(), null, null);
            m377i("INSERT INTO " + super.mo59p() + " SELECT * FROM " + mo59p());
            m378h(true);
        } catch (Throwable th) {
            m378h(false);
            j91.m1505k(this, "Unable to activate updated Community Blacklist - " + th.getMessage());
        }
        m380f();
    }

    /* renamed from: R */
    public void m936R() {
        for (String str : super.mo60o()) {
            m377i(str.replaceAll("CREATE TABLE", "CREATE TEMP TABLE IF NOT EXISTS").replaceAll(super.mo59p(), mo59p()));
        }
        m380f();
    }

    @Override // p000.o81, p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[0];
    }

    @Override // p000.o81, p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("community_tmp");
    }
}
