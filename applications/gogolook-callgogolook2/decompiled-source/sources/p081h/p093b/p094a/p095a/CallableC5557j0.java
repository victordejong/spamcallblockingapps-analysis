package p081h.p093b.p094a.p095a;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c;
/* renamed from: h.b.a.a.j0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/j0.class */
public final class CallableC5557j0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ int f13878a;

    /* renamed from: b */
    public final /* synthetic */ C5552i f13879b;

    /* renamed from: c */
    public final /* synthetic */ String f13880c;

    /* renamed from: d */
    public final /* synthetic */ C5539d f13881d;

    /* renamed from: e */
    public final /* synthetic */ Bundle f13882e;

    /* renamed from: f */
    public final /* synthetic */ C5534b f13883f;

    public CallableC5557j0(C5534b bVar, int i, C5552i iVar, String str, C5539d dVar, Bundle bundle) {
        this.f13883f = bVar;
        this.f13878a = i;
        this.f13879b = iVar;
        this.f13880c = str;
        this.f13881d = dVar;
        this.f13882e = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        AbstractC8807c cVar;
        Context context;
        cVar = this.f13883f.f13811g;
        int i = this.f13878a;
        context = this.f13883f.f13810f;
        return cVar.mo16899a(i, context.getPackageName(), this.f13879b.m25145k(), this.f13880c, (String) null, this.f13882e);
    }
}
