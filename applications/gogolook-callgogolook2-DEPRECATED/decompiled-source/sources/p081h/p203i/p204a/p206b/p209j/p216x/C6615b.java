package p081h.p203i.p204a.p206b.p209j.p216x;
/* renamed from: h.i.a.b.j.x.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/x/b.class */
public final class C6615b {
    /* renamed from: a */
    public static <TInput, TResult, TException extends Throwable> TResult m22231a(int i, TInput tinput, AbstractC6614a<TInput, TResult, TException> aVar, AbstractC6616c<TInput, TResult> cVar) throws Throwable {
        TResult apply;
        int i2;
        int i3 = i;
        TInput tinput2 = tinput;
        if (i < 1) {
            return aVar.apply(tinput);
        }
        do {
            apply = aVar.apply(tinput2);
            tinput2 = cVar.mo22230a(tinput2, apply);
            if (tinput2 == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
        } while (i2 >= 1);
        return apply;
    }
}
