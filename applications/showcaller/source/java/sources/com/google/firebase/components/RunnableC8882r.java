package com.google.firebase.components;

import com.google.firebase.p312j.AbstractC9243b;
import com.google.firebase.p312j.C9242a;
import java.util.Map;
/* renamed from: com.google.firebase.components.r */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/r.class */
public final /* synthetic */ class RunnableC8882r implements Runnable {

    /* renamed from: d */
    private final Map.Entry f38839d;

    /* renamed from: e */
    private final C9242a f38840e;

    private RunnableC8882r(Map.Entry entry, C9242a c9242a) {
        this.f38839d = entry;
        this.f38840e = c9242a;
    }

    /* renamed from: a */
    public static Runnable m2436a(Map.Entry entry, C9242a c9242a) {
        return new RunnableC8882r(entry, c9242a);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((AbstractC9243b) this.f38839d.getKey()).mo1142a(this.f38840e);
    }
}
