package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.bumptech.glide.load.engine.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v.class */
class C4086v {

    /* renamed from: a */
    private boolean f12900a;

    /* renamed from: b */
    private final Handler f12901b = new Handler(Looper.getMainLooper(), new C4087a());

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v$a.class */
    public static final class C4087a implements Handler.Callback {
        C4087a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((AbstractC4083s) message.obj).mo22858a();
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public void m23313a(AbstractC4083s<?> abstractC4083s, boolean z) {
        synchronized (this) {
            if (this.f12900a || z) {
                this.f12901b.obtainMessage(1, abstractC4083s).sendToTarget();
            } else {
                this.f12900a = true;
                abstractC4083s.mo22858a();
                this.f12900a = false;
            }
        }
    }
}
