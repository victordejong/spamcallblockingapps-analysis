package p182n8;

import java.util.TimerTask;
import p169m6.RunnableC3651d;
/* renamed from: n8.a */
/* loaded from: classes2-dex2jar.jar:n8/a.class */
public class C3792a extends TimerTask {

    /* renamed from: b */
    public static final /* synthetic */ int f12267b = 0;

    /* renamed from: a */
    public final /* synthetic */ C3793b f12268a;

    public C3792a(C3793b c3793b, String str) {
        this.f12268a = c3793b;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        new Thread(new RunnableC3651d(this, ".syncContactsIfNeed", 1)).start();
    }
}
