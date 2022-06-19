package com.google.android.datatransport.p232h.p236w;
/* renamed from: com.google.android.datatransport.h.w.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/w/b.class */
public final class C4689b {
    /* renamed from: a */
    public static <TInput, TResult, TException extends Throwable> TResult m21986a(int i, TInput tinput, AbstractC4688a<TInput, TResult, TException> abstractC4688a, AbstractC4690c<TInput, TResult> abstractC4690c) {
        TResult mo21987a;
        int i2;
        int i3 = i;
        TInput tinput2 = tinput;
        if (i < 1) {
            return abstractC4688a.mo21987a(tinput);
        }
        do {
            mo21987a = abstractC4688a.mo21987a(tinput2);
            tinput2 = abstractC4690c.mo21985a(tinput2, mo21987a);
            if (tinput2 == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
        } while (i2 >= 1);
        return mo21987a;
    }
}
