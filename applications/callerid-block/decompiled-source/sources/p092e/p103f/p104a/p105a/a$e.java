package p092e.p103f.p104a.p105a;

import android.content.Context;
import java.util.List;
/* renamed from: e.f.a.a.a$e */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$e.class */
class a$e extends a$b {
    private a$e() {
        super();
    }

    @Override // p092e.p103f.p104a.p105a.a$b, p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        Object c = m242c(context, "mWhiteList");
        if (!(c instanceof List)) {
            return false;
        }
        ((List) c).add(context.getPackageName());
        return true;
    }
}
