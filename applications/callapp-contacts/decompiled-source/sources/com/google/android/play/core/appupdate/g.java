package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.Context;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.a.a;
import com.google.android.play.core.install.b;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/g.class */
final class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private final r f31033a;

    /* renamed from: b  reason: collision with root package name */
    private final e f31034b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31035c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f31036d = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(r rVar, e eVar, Context context) {
        this.f31033a = rVar;
        this.f31034b = eVar;
        this.f31035c = context;
    }

    @Override // com.google.android.play.core.appupdate.c
    public final d<a> a() {
        r rVar = this.f31033a;
        String packageName = this.f31035c.getPackageName();
        if (rVar.f31057b == null) {
            return r.a();
        }
        r.f31055a.c("requestUpdateInfo(%s)", packageName);
        p pVar = new p();
        rVar.f31057b.a(new m(rVar, pVar, packageName, pVar));
        return pVar.f31578a;
    }

    @Override // com.google.android.play.core.appupdate.c
    public final void a(b bVar) {
        synchronized (this) {
            this.f31034b.a((a) bVar);
        }
    }

    @Override // com.google.android.play.core.appupdate.c
    public final boolean a(a aVar, Activity activity) throws IntentSender.SendIntentException {
        v vVar = new v();
        vVar.f31066a = 0;
        vVar.a();
        d b2 = vVar.b();
        f fVar = new f(activity);
        if (!(aVar.a(b2) != null)) {
            return false;
        }
        fVar.a(aVar.a(b2).getIntentSender(), 555);
        return true;
    }

    @Override // com.google.android.play.core.appupdate.c
    public final d<Void> b() {
        r rVar = this.f31033a;
        String packageName = this.f31035c.getPackageName();
        if (rVar.f31057b == null) {
            return r.a();
        }
        r.f31055a.c("completeUpdate(%s)", packageName);
        p pVar = new p();
        rVar.f31057b.a(new n(rVar, pVar, pVar, packageName));
        return pVar.f31578a;
    }
}
