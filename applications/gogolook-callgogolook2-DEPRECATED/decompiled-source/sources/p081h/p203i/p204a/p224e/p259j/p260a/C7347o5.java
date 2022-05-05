package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.o5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o5.class */
public final class C7347o5 implements MuteThisAdReason {

    /* renamed from: a */
    public final String f17413a;

    /* renamed from: b */
    public AbstractC7311l5 f17414b;

    public C7347o5(AbstractC7311l5 l5Var) {
        String str;
        this.f17414b = l5Var;
        try {
            str = l5Var.getDescription();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            str = null;
        }
        this.f17413a = str;
    }

    /* renamed from: a */
    public final AbstractC7311l5 m20742a() {
        return this.f17414b;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f17413a;
    }
}
