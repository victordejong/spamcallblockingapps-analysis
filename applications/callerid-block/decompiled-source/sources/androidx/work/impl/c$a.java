package androidx.work.impl;

import e.c.b.a.a.a;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/c$a.class */
class c$a implements Runnable {

    /* renamed from: b */
    private AbstractC0560a f3020b;

    /* renamed from: c */
    private String f3021c;

    /* renamed from: d */
    private a<Boolean> f3022d;

    c$a(AbstractC0560a aVar, String str, a<Boolean> aVar2) {
        this.f3020b = aVar;
        this.f3021c = str;
        this.f3022d = aVar2;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        try {
            z = ((Boolean) this.f3022d.get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            z = true;
        }
        this.f3020b.m11735a(this.f3021c, z);
    }
}
