package com.flurry.sdk;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lc$1.class */
public final class lc$1 extends Thread {

    /* renamed from: a */
    public final /* synthetic */ lc f3520a;

    public lc$1(lc lcVar) {
        this.f3520a = lcVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (lc.a(this.f3520a) == null) {
                return;
            }
            lc.a(this.f3520a).disconnect();
        } catch (Throwable th) {
        }
    }
}
