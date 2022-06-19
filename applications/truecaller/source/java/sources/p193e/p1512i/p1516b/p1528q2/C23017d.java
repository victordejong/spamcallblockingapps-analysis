package p193e.p1512i.p1516b.p1528q2;

import android.util.Log;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.i.b.q2.d */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/d.class */
public class C23017d implements AbstractC23018e {

    /* renamed from: a */
    public int f63784a = -1;

    /* renamed from: b */
    public final C23080f f63785b;

    public C23017d(C23080f c23080f) {
        l.f(c23080f, "buildConfigWrapper");
        this.f63785b = c23080f;
    }

    @Override // p193e.p1512i.p1516b.p1528q2.AbstractC23018e
    /* renamed from: a */
    public void mo7579a(String str, C23019f c23019f) {
        int i;
        l.f(str, RemoteMessageConst.Notification.TAG);
        l.f(c23019f, "logMessage");
        int i2 = c23019f.f63786a;
        Integer valueOf = Integer.valueOf(this.f63784a);
        if (!(valueOf.intValue() != -1)) {
            valueOf = null;
        }
        if (valueOf != null) {
            i = valueOf.intValue();
        } else {
            Objects.requireNonNull(this.f63785b);
            i = 5;
        }
        if (!(i2 >= i)) {
            return;
        }
        String str2 = c23019f.f63787b;
        Throwable th = c23019f.f63788c;
        String str3 = null;
        if (th != null) {
            l.f(th, "throwable");
            str3 = Log.getStackTraceString(th);
        }
        String O = i.O(i.V(new String[]{str2, str3}), StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
        boolean z = false;
        if (O.length() > 0) {
            z = true;
        }
        if (!z) {
            return;
        }
        l.f(str, RemoteMessageConst.Notification.TAG);
        l.f(O, "message");
        Log.println(i2, C23020g.m7587a(str), O);
    }
}
