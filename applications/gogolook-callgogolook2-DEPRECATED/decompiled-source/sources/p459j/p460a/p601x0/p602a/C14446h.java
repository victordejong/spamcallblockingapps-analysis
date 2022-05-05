package p459j.p460a.p601x0.p602a;

import android.provider.Telephony;
import android.text.TextUtils;
import gogolook.callgogolook2.developmode.LogManager;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.x0.a.h */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/h.class */
public class C14446h extends AbstractC14442e {

    /* renamed from: D */
    public int f32340D = -2;

    public C14446h() {
        m1287M();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: A */
    public boolean mo1289A() {
        if (C12810o.m5233l()) {
            return true;
        }
        LogManager.m28579a("SmsLoadingHelper", "detect no sms/mms permission");
        return false;
    }

    /* renamed from: L */
    public String m1288L() {
        if (!mo1324a()) {
            return null;
        }
        if (-2 == this.f32340D && !TextUtils.isEmpty("service_center")) {
            this.f32340D = this.f32302b.getColumnIndex("service_center");
        }
        int i = this.f32340D;
        if (i >= 0) {
            return this.f32302b.getString(i);
        }
        return null;
    }

    /* renamed from: M */
    public void m1287M() {
        this.f32301a = Telephony.Sms.CONTENT_URI;
        this.f32310j = "_id";
        this.f32312l = "address";
        this.f32314n = null;
        this.f32316p = null;
        this.f32318r = "date";
        this.f32320t = null;
        this.f32322v = "type";
        this.f32324x = null;
        this.f32326z = "body";
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: a */
    public int mo1286a(int i) {
        if (i != 1) {
            return i != 2 ? 240 : 34;
        }
        return 33;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: o */
    public int mo1285o() {
        return 1;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: r */
    public String[] mo1284r() {
        return new String[]{this.f32310j, this.f32312l, this.f32326z, this.f32318r, this.f32322v, "service_center"};
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: v */
    public String mo1283v() {
        String L = m1288L();
        return !TextUtils.isEmpty(L) ? C14108o4.m2479g(L) : super.mo1283v();
    }
}
