package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.Context;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.install.AbstractC15006b;
import com.google.android.play.core.p377a.AbstractC14869a;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/g.class */
public final class C14879g implements AbstractC14874c {

    /* renamed from: a */
    private final C14890r f54306a;

    /* renamed from: b */
    private final C14877e f54307b;

    /* renamed from: c */
    private final Context f54308c;

    /* renamed from: d */
    private final Handler f54309d = new Handler(Looper.getMainLooper());

    public C14879g(C14890r c14890r, C14877e c14877e, Context context) {
        this.f54306a = c14890r;
        this.f54307b = c14877e;
        this.f54308c = context;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14874c
    /* renamed from: a */
    public final AbstractC15180d<AbstractC14872a> mo9826a() {
        C14890r c14890r = this.f54306a;
        String packageName = this.f54308c.getPackageName();
        if (c14890r.f54331b == null) {
            return C14890r.m9820a();
        }
        C14890r.f54329a.m9508c("requestUpdateInfo(%s)", packageName);
        C15192p c15192p = new C15192p();
        c14890r.f54331b.m9504a(new C14885m(c14890r, c15192p, packageName, c15192p));
        return c15192p.f55025a;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14874c
    /* renamed from: a */
    public final void mo9824a(AbstractC15006b abstractC15006b) {
        synchronized (this) {
            this.f54307b.m9832a((AbstractC14869a) abstractC15006b);
        }
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14874c
    /* renamed from: a */
    public final boolean mo9825a(AbstractC14872a abstractC14872a, Activity activity) throws IntentSender.SendIntentException {
        C14894v c14894v = new C14894v();
        c14894v.f54352a = 0;
        c14894v.mo9797a();
        AbstractC14875d mo9796b = c14894v.mo9796b();
        C14878f c14878f = new C14878f(activity);
        if (!(abstractC14872a.m9828a(mo9796b) != null)) {
            return false;
        }
        c14878f.mo9389a(abstractC14872a.m9828a(mo9796b).getIntentSender(), 555);
        return true;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14874c
    /* renamed from: b */
    public final AbstractC15180d<Void> mo9823b() {
        C14890r c14890r = this.f54306a;
        String packageName = this.f54308c.getPackageName();
        if (c14890r.f54331b == null) {
            return C14890r.m9820a();
        }
        C14890r.f54329a.m9508c("completeUpdate(%s)", packageName);
        C15192p c15192p = new C15192p();
        c14890r.f54331b.m9504a(new C14886n(c14890r, c15192p, c15192p, packageName));
        return c15192p.f55025a;
    }
}
