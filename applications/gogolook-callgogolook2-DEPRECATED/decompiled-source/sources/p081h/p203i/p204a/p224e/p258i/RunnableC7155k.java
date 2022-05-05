package p081h.p203i.p204a.p224e.p258i;

import android.content.Intent;
/* renamed from: h.i.a.e.i.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/k.class */
public final class RunnableC7155k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f17261a;

    /* renamed from: b */
    public final /* synthetic */ C7154j f17262b;

    public RunnableC7155k(C7154j jVar, Intent intent) {
        this.f17262b = jVar;
        this.f17261a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.f17261a.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        sb.toString();
        this.f17262b.m21023a();
    }
}
