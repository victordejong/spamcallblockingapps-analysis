package p130j0;

import android.content.Context;
import java.util.concurrent.Callable;
import p130j0.C3155j;
/* renamed from: j0.h */
/* loaded from: classes-dex2jar.jar:j0/h.class */
public class CallableC3153h implements Callable<C3155j.C3156a> {

    /* renamed from: a */
    public final /* synthetic */ String f10608a;

    /* renamed from: b */
    public final /* synthetic */ Context f10609b;

    /* renamed from: c */
    public final /* synthetic */ C3150e f10610c;

    /* renamed from: d */
    public final /* synthetic */ int f10611d;

    public CallableC3153h(String str, Context context, C3150e c3150e, int i) {
        this.f10608a = str;
        this.f10609b = context;
        this.f10610c = c3150e;
        this.f10611d = i;
    }

    @Override // java.util.concurrent.Callable
    public C3155j.C3156a call() throws Exception {
        C3155j.C3156a c3156a;
        try {
            c3156a = C3155j.m2585a(this.f10608a, this.f10609b, this.f10610c, this.f10611d);
        } catch (Throwable th) {
            c3156a = new C3155j.C3156a(-3);
        }
        return c3156a;
    }
}
