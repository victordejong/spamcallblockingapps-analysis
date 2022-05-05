package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.j.l.w6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w6.class */
public final /* synthetic */ class CallableC8426w6 implements Callable {

    /* renamed from: a */
    public final C8125g7 f19384a;

    public CallableC8426w6(C8125g7 g7Var) {
        this.f19384a = g7Var;
    }

    /* renamed from: a */
    public static Callable m18105a(C8125g7 g7Var) {
        return new CallableC8426w6(g7Var);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f19384a.m18504e();
    }
}
