package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.load.engine.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w.class */
class C1774w {

    /* renamed from: a */
    private boolean f5401a;

    /* renamed from: b */
    private final Handler f5402b = new Handler(Looper.getMainLooper(), new C1775a());

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w$a.class */
    public static final class C1775a implements Handler.Callback {
        C1775a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            boolean z;
            if (message.what == 1) {
                ((AbstractC1771t) message.obj).mo16345f();
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    public void m16342a(AbstractC1771t<?> abstractC1771t) {
        C1457j.m16984a();
        if (this.f5401a) {
            this.f5402b.obtainMessage(1, abstractC1771t).sendToTarget();
            return;
        }
        this.f5401a = true;
        abstractC1771t.mo16345f();
        this.f5401a = false;
    }
}
