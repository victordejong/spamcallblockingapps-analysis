package p131c.p161d.p170b.p173b.p176i.p183x;
/* renamed from: c.d.b.b.i.x.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/x/b.class */
public final class C2603b {
    /* renamed from: a */
    public static <TInput, TResult, TException extends Throwable> TResult m29444a(int i, TInput tinput, AbstractC2602a<TInput, TResult, TException> aVar, AbstractC2604c<TInput, TResult> cVar) throws Throwable {
        TResult apply;
        int i2;
        int i3 = i;
        TInput tinput2 = tinput;
        if (i < 1) {
            return aVar.apply(tinput);
        }
        do {
            apply = aVar.apply(tinput2);
            tinput2 = cVar.mo29443a(tinput2, apply);
            if (tinput2 == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
        } while (i2 >= 1);
        return apply;
    }
}
