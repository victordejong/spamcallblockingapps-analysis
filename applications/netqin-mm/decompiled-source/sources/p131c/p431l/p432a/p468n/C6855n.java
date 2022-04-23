package p131c.p431l.p432a.p468n;

import android.content.Context;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6778b;
/* renamed from: c.l.a.n.n */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/n.class */
public class C6855n {

    /* renamed from: a */
    public static DialogC6778b f21047a;

    /* renamed from: a */
    public static void m19555a() {
        C6850i.m19579a(null, "call dismiss dialog");
        DialogC6778b bVar = f21047a;
        if (bVar != null) {
            bVar.dismiss();
            f21047a.cancel();
            f21047a = null;
            C6850i.m19580a("call dismiss dialog");
        }
    }

    /* renamed from: a */
    public static void m19554a(Context context) {
        if (f21047a == null) {
            f21047a = new DialogC6778b(context);
        }
        f21047a.setCancelable(false);
        f21047a.show();
        C6850i.m19580a("call show dialog");
    }

    /* renamed from: a */
    public static void m19553a(Context context, boolean z) {
        if (f21047a == null) {
            f21047a = new DialogC6778b(context);
        }
        f21047a.setCancelable(z);
        f21047a.show();
        C6850i.m19580a("call show dialog");
    }
}
