package p660rx.functions;
/* renamed from: rx.functions.Functions */
/* loaded from: classes3-dex2jar.jar:rx/functions/Functions.class */
public final class Functions {
    public static <T0, T1, R> FuncN<R> fromFunc(final Func2<? super T0, ? super T1, ? extends R> func2) {
        return new FuncN<R>() { // from class: rx.functions.Functions.3
            /* JADX WARN: Type inference failed for: r0v5, types: [R, java.lang.Object] */
            @Override // p660rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length == 2) {
                    return Func2.this.call(objArr[0], objArr[1]);
                }
                throw new IllegalArgumentException("Func2 expecting 2 arguments.");
            }
        };
    }
}
