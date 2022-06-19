package p193e.p194a.p1164r.p1166a0;

import android.content.Context;
import android.view.View;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1128p4.AbstractC19214a;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.r.a0.r$b */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/r$b.class */
public final class r$b implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ r f54755a;

    public r$b(r rVar) {
        this.f54755a = rVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        Context context = this.f54755a.getContext();
        Boolean bool = null;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof AbstractC19214a)) {
                applicationContext = null;
            }
            AbstractC19214a abstractC19214a = (AbstractC19214a) applicationContext;
            if (abstractC19214a == null) {
                throw new RuntimeException(C22128a.m8643a2(AbstractC19214a.class, C22128a.m8728C("Application class does not implement ")));
            }
            bool = Boolean.valueOf(abstractC19214a.mo13876z());
        }
        return C12864a2.m22540r(bool);
    }
}
