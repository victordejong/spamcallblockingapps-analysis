package p081h.p093b.p094a.p095a;

import android.content.Context;
import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c;
/* renamed from: h.b.a.a.i0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/i0.class */
public final class CallableC5554i0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ C5539d f13869a;

    /* renamed from: b */
    public final /* synthetic */ C5552i f13870b;

    /* renamed from: c */
    public final /* synthetic */ C5534b f13871c;

    public CallableC5554i0(C5534b bVar, C5539d dVar, C5552i iVar) {
        this.f13871c = bVar;
        this.f13869a = dVar;
        this.f13870b = iVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        AbstractC8807c cVar;
        Context context;
        cVar = this.f13871c.f13811g;
        context = this.f13871c.f13810f;
        return cVar.mo16898a(5, context.getPackageName(), Arrays.asList(this.f13869a.m25191a()), this.f13870b.m25145k(), "subs", (String) null);
    }
}
