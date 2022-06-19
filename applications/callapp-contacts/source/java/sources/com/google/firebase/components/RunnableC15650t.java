package com.google.firebase.components;

import com.google.firebase.p389b.AbstractC15607b;
import com.google.firebase.p389b.C15606a;
import java.util.Map;
/* renamed from: com.google.firebase.components.t */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/t.class */
public final /* synthetic */ class RunnableC15650t implements Runnable {

    /* renamed from: a */
    private final Map.Entry f56061a;

    /* renamed from: b */
    private final C15606a f56062b;

    private RunnableC15650t(Map.Entry entry, C15606a c15606a) {
        this.f56061a = entry;
        this.f56062b = c15606a;
    }

    /* renamed from: a */
    public static Runnable m8502a(Map.Entry entry, C15606a c15606a) {
        return new RunnableC15650t(entry, c15606a);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((AbstractC15607b) this.f56061a.getKey()).mo8115a(this.f56062b);
    }
}
