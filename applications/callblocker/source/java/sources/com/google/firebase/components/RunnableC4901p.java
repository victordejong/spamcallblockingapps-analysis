package com.google.firebase.components;

import com.google.firebase.p161a.AbstractC4855b;
import com.google.firebase.p161a.C4854a;
import java.util.Map;
/* renamed from: com.google.firebase.components.p */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/p.class */
public final /* synthetic */ class RunnableC4901p implements Runnable {

    /* renamed from: a */
    private final Map.Entry f21003a;

    /* renamed from: b */
    private final C4854a f21004b;

    private RunnableC4901p(Map.Entry entry, C4854a c4854a) {
        this.f21003a = entry;
        this.f21004b = c4854a;
    }

    /* renamed from: a */
    public static Runnable m2060a(Map.Entry entry, C4854a c4854a) {
        return new RunnableC4901p(entry, c4854a);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((AbstractC4855b) this.f21003a.getKey()).mo1954a(this.f21004b);
    }
}
