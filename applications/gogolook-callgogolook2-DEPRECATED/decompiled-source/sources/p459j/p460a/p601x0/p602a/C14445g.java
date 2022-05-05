package p459j.p460a.p601x0.p602a;

import android.net.Uri;
import android.os.Build;
/* renamed from: j.a.x0.a.g */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/g.class */
public class C14445g extends C14440c {

    /* renamed from: F */
    public static final Uri f32339F = Uri.parse("content://logs/historys");

    public C14445g() {
        mo1291L();
    }

    @Override // p459j.p460a.p601x0.p602a.C14440c
    /* renamed from: L */
    public void mo1291L() {
        if (m1290M()) {
            this.f32301a = f32339F;
            this.f32310j = "_id";
            this.f32312l = "number";
            this.f32314n = null;
            this.f32316p = "name";
            this.f32318r = "date";
            this.f32320t = "duration";
            this.f32322v = "type";
            this.f32324x = "new";
            this.f32326z = null;
            this.f32307g = "messageid is NULL";
            return;
        }
        super.mo1291L();
    }

    /* renamed from: M */
    public final boolean m1290M() {
        return Build.MODEL.equals("SHV-E210S");
    }
}
