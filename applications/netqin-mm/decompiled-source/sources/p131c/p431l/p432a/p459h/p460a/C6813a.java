package p131c.p431l.p432a.p459h.p460a;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import com.libaray.gdpr.GdprHelper;
import com.netqin.p525cm.antiharass.p527ui.activity.MainActivity;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p131c.p394h.p395a.AbstractC6482b;
import p131c.p431l.p432a.p454d.C6799a;
import p131c.p431l.p432a.p468n.C6852k;
/* renamed from: c.l.a.h.a.a */
/* loaded from: classes-dex2jar.jar:c/l/a/h/a/a.class */
public class C6813a {

    /* renamed from: a */
    public static boolean f20983a = false;

    /* renamed from: b */
    public static int f20984b;

    /* renamed from: c.l.a.h.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/h/a/a$a.class */
    public static final class C6814a implements AbstractC6482b {
        @Override // p131c.p394h.p395a.AbstractC6482b
        /* renamed from: a */
        public void mo19691a() {
            C6813a.m19693e();
        }

        @Override // p131c.p394h.p395a.AbstractC6482b
        /* renamed from: a */
        public boolean mo19690a(Activity activity, Intent intent) {
            C6813a.m19692f();
            return false;
        }

        @Override // p131c.p394h.p395a.AbstractC6482b
        /* renamed from: b */
        public void mo19689b() {
            C6813a.m19693e();
        }
    }

    /* renamed from: a */
    public static void m19697a(Application application) {
        GdprHelper.m5354a(application, MainActivity.class, new C6814a(), MainActivity.class);
    }

    /* renamed from: c */
    public static boolean m19695c() {
        return GdprHelper.m5353a(NqApplication.m3303b());
    }

    /* renamed from: d */
    public static void m19694d() {
        C6852k.m19564a(NqApplication.m3303b());
    }

    /* renamed from: e */
    public static void m19693e() {
        if (C6799a.m19764b()) {
            f20983a = true;
            f20984b = C6799a.m19767a();
            C6799a.m19766a(0);
        }
        m19694d();
    }

    /* renamed from: f */
    public static void m19692f() {
        if (f20983a) {
            f20983a = false;
            int i = f20984b;
            if (i == 1 || i == 3) {
                C6799a.m19766a(f20984b);
            }
            f20984b = -1;
        }
    }
}
