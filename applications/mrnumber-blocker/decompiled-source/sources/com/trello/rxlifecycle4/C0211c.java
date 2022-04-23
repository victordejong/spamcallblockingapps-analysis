package com.trello.rxlifecycle4;

import com.trello.rxlifecycle4.p009e.C0216a;
import i.c.b0.b.v;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
/* renamed from: com.trello.rxlifecycle4.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/c.class */
public class C0211c {
    /* renamed from: a */
    public static <T, R> b<T> m687a(v<R> vVar) {
        return new b<>(vVar);
    }

    /* renamed from: b */
    public static <T, R> b<T> m686b(v<R> vVar, AbstractC0493o<R, R> oVar) {
        C0216a.m682a(vVar, "lifecycle == null");
        C0216a.m682a(oVar, "correspondingEvents == null");
        return m687a(m685c(vVar.share(), oVar));
    }

    /* renamed from: c */
    private static <R> v<Boolean> m685c(v<R> vVar, AbstractC0493o<R, R> oVar) {
        return v.combineLatest(vVar.take(1L).map(oVar), vVar.skip(1L), new a()).onErrorReturn(C0210a.f453a).filter(C0210a.f454b);
    }
}
