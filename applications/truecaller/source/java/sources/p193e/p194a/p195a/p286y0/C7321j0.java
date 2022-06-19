package p193e.p194a.p195a.p286y0;

import android.app.Notification;
import android.content.Context;
import com.truecaller.C2752R;
import java.lang.reflect.Field;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p912i4.AbstractC15287q;
/* renamed from: e.a.a.y0.j0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/j0.class */
public class C7321j0 implements AbstractC15287q {

    /* renamed from: a */
    public final Context f23361a;

    public C7321j0(Context context) {
        this.f23361a = context;
    }

    @Override // p193e.p194a.p912i4.AbstractC15287q
    /* renamed from: a */
    public Notification mo18955a(C26450q c26450q, AbstractC15287q.AbstractC15288a abstractC15288a) {
        Context context = this.f23361a;
        Object obj = C26467a.f74235a;
        c26450q.m1852q(C8605o.m28237c(C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_messenger_notification_xiaomi)));
        Notification m1865d = c26450q.m1865d();
        try {
            Object newInstance = Class.forName("android.app.MiuiNotification").newInstance();
            Field declaredField = newInstance.getClass().getDeclaredField("customizedIcon");
            declaredField.setAccessible(true);
            declaredField.set(newInstance, Boolean.TRUE);
            Field field = m1865d.getClass().getField("extraNotification");
            field.setAccessible(true);
            field.set(m1865d, newInstance);
        } catch (Exception e) {
        }
        return m1865d;
    }
}
