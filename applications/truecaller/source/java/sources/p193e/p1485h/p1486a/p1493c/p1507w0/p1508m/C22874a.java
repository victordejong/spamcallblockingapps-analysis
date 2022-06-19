package p193e.p1485h.p1486a.p1493c.p1507w0.p1508m;

import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
/* renamed from: e.h.a.c.w0.m.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/m/a.class */
public class C22874a implements OnCompleteListener<String> {

    /* renamed from: a */
    public final /* synthetic */ C22875b f63511a;

    public C22874a(C22875b c22875b) {
        this.f63511a = c22875b;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task<String> task) {
        AbstractC22865g.EnumC22866a enumC22866a = AbstractC22865g.EnumC22866a.FCM;
        String str = null;
        if (task.m38519s()) {
            if (task.m38523o() != null) {
                str = task.m38523o();
            }
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63511a.f63512a;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), C22128a.m8610j(new StringBuilder(), AbstractC22865g.f63475a, "FCM token using googleservices.json - ", str));
            this.f63511a.f63514c.mo7660a(str, enumC22866a);
            return;
        }
        CleverTapInstanceConfig cleverTapInstanceConfig2 = this.f63511a.f63512a;
        String str2 = AbstractC22865g.f63475a;
        task.m38524n();
        C22735g0 c22735g0 = cleverTapInstanceConfig2.f2253n;
        cleverTapInstanceConfig2.m42082a("PushProvider");
        Objects.requireNonNull(c22735g0);
        this.f63511a.f63514c.mo7660a(null, enumC22866a);
    }
}
