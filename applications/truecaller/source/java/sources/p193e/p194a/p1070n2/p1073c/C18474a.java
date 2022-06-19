package p193e.p194a.p1070n2.p1073c;

import android.app.Activity;
import com.truecaller.acs.p131ui.fullscreen.AfterCallScreenActivity;
import com.truecaller.acs.p131ui.popup.AfterCallPopupActivity;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.suspension.p181ui.SuspensionActivity;
import java.util.List;
import n3.b.a.h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19044j;
import s1.a.c;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.n2.c.a */
/* loaded from: classes4-dex2jar.jar:e/a/n2/c/a.class */
public final class C18474a {

    /* renamed from: a */
    public static final g f52158a = C25225a.m3978P1(C18475a.f52159b);

    /* renamed from: e.a.n2.c.a$a */
    /* loaded from: classes4-dex2jar.jar:e/a/n2/c/a$a.class */
    public static final class C18475a extends m implements a<List<? extends c<? extends h>>> {

        /* renamed from: b */
        public static final C18475a f52159b = new C18475a();

        public C18475a() {
            super(0);
        }

        public Object invoke() {
            return i.T(new c[]{d0.a(AfterCallScreenActivity.class), d0.a(AfterCallPopupActivity.class), d0.a(AfterCallPromotionActivity.class)});
        }
    }

    /* renamed from: a */
    public static final boolean m14881a(AbstractC19044j abstractC19044j, Activity activity) {
        l.e(abstractC19044j, "appListener");
        return abstractC19044j.mo14186b() && activity != null && !(activity instanceof SuspensionActivity) && !i.l((List) f52158a.getValue(), d0.a(activity.getClass()));
    }
}
