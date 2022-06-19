package p193e.p194a.p195a.p243j1;

import android.os.Build;
import com.truecaller.messaging.views.MediaEditText;
import p1727n3.p1807k.p1821i.p1823g0.C26599e;
/* renamed from: e.a.a.j1.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/j1/c.class */
public final class RunnableC6436c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaEditText f21393a;

    public RunnableC6436c(MediaEditText mediaEditText) {
        this.f21393a = mediaEditText;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C26599e c26599e;
        if (Build.VERSION.SDK_INT >= 25 && (c26599e = this.f21393a.f13953f) != null) {
            c26599e.f74489a.mo1600e();
        }
        this.f21393a.f13953f = null;
    }
}
