package com.google.android.datatransport.p062h.p066w;
/* renamed from: com.google.android.datatransport.h.w.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/w/b.class */
public final class C1312b {
    /* renamed from: a */
    public static <TInput, TResult, TException extends Throwable> TResult m9185a(int i, TInput tinput, AbstractC1311a<TInput, TResult, TException> aVar, AbstractC1313c<TInput, TResult> cVar) {
        TResult a;
        int i2;
        int i3 = i;
        TInput tinput2 = tinput;
        if (i < 1) {
            return aVar.m9186a(tinput);
        }
        do {
            a = aVar.m9186a(tinput2);
            tinput2 = cVar.m9184a(tinput2, a);
            if (tinput2 == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
        } while (i2 >= 1);
        return a;
    }
}
