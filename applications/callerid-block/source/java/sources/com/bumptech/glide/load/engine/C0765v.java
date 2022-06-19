package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.bumptech.glide.load.engine.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v.class */
class C0765v {

    /* renamed from: a */
    private boolean f3615a;

    /* renamed from: b */
    private final Handler f3616b = new Handler(Looper.getMainLooper(), new C0766a());

    /* renamed from: com.bumptech.glide.load.engine.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v$a.class */
    private static final class C0766a implements Handler.Callback {
        C0766a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((AbstractC0764s) message.obj).m11080a();
                return true;
            }
            return false;
        }
    }

    C0765v() {
    }

    /* renamed from: a */
    void m11077a(AbstractC0764s<?> abstractC0764s, boolean z) {
        synchronized (this) {
            if (this.f3615a || z) {
                this.f3616b.obtainMessage(1, abstractC0764s).sendToTarget();
            } else {
                this.f3615a = true;
                abstractC0764s.m11080a();
                this.f3615a = false;
            }
        }
    }
}
