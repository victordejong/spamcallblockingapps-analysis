package p081h.p203i.p204a.p224e.p259j.p271l;

import android.content.Context;
import p081h.p203i.p204a.p224e.p234c.C6777a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8404v6;
/* renamed from: h.i.a.e.j.l.h7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h7.class */
public final class C8144h7 implements C8404v6.AbstractC8406b {

    /* renamed from: b */
    public static final C6999k f18871b = new C6999k("MlStatsLogger", "");

    /* renamed from: a */
    public final C6777a f18872a;

    public C8144h7(Context context) {
        this.f18872a = C6777a.m21931a(context, "FIREBASE_ML_SDK");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.AbstractC8406b
    /* renamed from: a */
    public final void mo18118a(C8434x1 x1Var) {
        C6999k kVar = f18871b;
        String valueOf = String.valueOf(x1Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
        sb.append("Logging FirebaseMlSdkLogEvent ");
        sb.append(valueOf);
        kVar.m21339a("MlStatsLogger", sb.toString());
        this.f18872a.m21928a(x1Var.m18619e()).m21915a();
    }
}
