package p081h.p093b.p094a.p095a;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c;
/* renamed from: h.b.a.a.h0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/h0.class */
public final class CallableC5551h0 implements Callable<Integer> {

    /* renamed from: a */
    public final /* synthetic */ String f13862a;

    /* renamed from: b */
    public final /* synthetic */ C5534b f13863b;

    public CallableC5551h0(C5534b bVar, String str) {
        this.f13863b = bVar;
        this.f13862a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Integer call() throws Exception {
        AbstractC8807c cVar;
        Context context;
        Bundle f;
        cVar = this.f13863b.f13811g;
        context = this.f13863b.f13810f;
        String packageName = context.getPackageName();
        String str = this.f13862a;
        f = C5534b.m25205f();
        return Integer.valueOf(cVar.mo16897b(7, packageName, str, f));
    }
}
