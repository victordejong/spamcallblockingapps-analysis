package p193e.p194a.p1114o5;

import android.content.Context;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1357x3.AbstractC21394a;
/* renamed from: e.a.o5.d1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/d1.class */
public class C19008d1 implements AbstractC19127x0 {

    /* renamed from: a */
    public final Context f53128a;

    /* renamed from: b */
    public final String f53129b;

    /* renamed from: e.a.o5.d1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/d1$a.class */
    public interface AbstractC19009a {
        /* renamed from: o */
        AbstractC21394a mo9764o();
    }

    public C19008d1(Context context, InternalTruecallerNotification internalTruecallerNotification) {
        this.f53128a = context;
        this.f53129b = internalTruecallerNotification.m34840s();
    }

    @Override // p193e.p194a.p1114o5.AbstractC19127x0
    public void execute() {
        ((AbstractC19009a) C25225a.m3820x0(this.f53128a.getApplicationContext(), AbstractC19009a.class)).mo9764o().mo9777c(this.f53128a, this.f53129b, "notificationsList");
    }
}
