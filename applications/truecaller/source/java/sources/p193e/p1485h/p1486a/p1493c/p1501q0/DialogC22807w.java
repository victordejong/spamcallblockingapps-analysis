package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.app.Dialog;
import android.content.Context;
/* renamed from: e.h.a.c.q0.w */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/w.class */
public class DialogC22807w extends Dialog {

    /* renamed from: a */
    public final /* synthetic */ v f63230a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC22807w(v vVar, Context context, int i) {
        super(context, i);
        this.f63230a = vVar;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        v vVar = this.f63230a;
        if (vVar.h) {
            vVar.eB();
        }
        super.onBackPressed();
    }
}
