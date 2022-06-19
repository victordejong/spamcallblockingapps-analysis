package p193e.p194a.p1164r.p1177t;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.truecaller.log.AssertionUtil;
import java.lang.ref.WeakReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.r.t.c$c */
/* loaded from: classes16-dex2jar.jar:e/a/r/t/c$c.class */
public class c$c extends Handler {

    /* renamed from: a */
    public final WeakReference<c> f54817a;

    public c$c(c cVar) {
        super(Looper.getMainLooper());
        this.f54817a = new WeakReference<>(cVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str = (String) message.obj;
        Bundle peekData = message.peekData();
        c cVar = this.f54817a.get();
        if (TextUtils.isEmpty(str) || cVar == null) {
            return;
        }
        C19766b c19766b = (C19766b) cVar.e.get(str);
        if (c19766b == null) {
            AssertionUtil.AlwaysFatal.shouldNeverHappen(null, C22128a.m8725C2("Page with name \"", str, "\" is not registered in this wizard"));
            return;
        }
        if (c19766b.f54816b) {
            cVar.va().putString("wizard_StartPage", str);
        }
        if (!cVar.d) {
            cVar.Aa(c19766b, peekData).mo1124i();
            C18479b.m14875a("Wizard. New page: ", str, " can lose state");
            return;
        }
        try {
            cVar.Aa(c19766b, peekData).mo1125h();
            C18479b.m14875a("Wizard. New page: ", str, " with state");
        } catch (IllegalStateException e) {
            C10480a.m26061I1(e);
            cVar.Aa(c19766b, peekData).mo1124i();
            C18479b.m14875a("Wizard. New page: ", str, " can lose state");
        }
    }
}
