package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.bumptech.glide.load.engine.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x.class */
final class C3814x {

    /* renamed from: a */
    private boolean f14165a;

    /* renamed from: b */
    private final Handler f14166b = new Handler(Looper.getMainLooper(), new C3815a());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x$a.class */
    public static final class C3815a implements Handler.Callback {
        C3815a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((AbstractC3811u) message.obj).mo37211d();
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public final void m37332a(AbstractC3811u<?> abstractC3811u, boolean z) {
        synchronized (this) {
            if (this.f14165a || z) {
                this.f14166b.obtainMessage(1, abstractC3811u).sendToTarget();
                return;
            }
            this.f14165a = true;
            abstractC3811u.mo37211d();
            this.f14165a = false;
        }
    }
}
