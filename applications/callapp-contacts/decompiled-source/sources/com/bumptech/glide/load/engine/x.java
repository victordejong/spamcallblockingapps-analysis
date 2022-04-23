package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x.class */
final class x {

    /* renamed from: a  reason: collision with root package name */
    private boolean f7611a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f7612b = new Handler(Looper.getMainLooper(), new a());

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x$a.class */
    static final class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((u) message.obj).d();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(u<?> uVar, boolean z) {
        synchronized (this) {
            if (this.f7611a || z) {
                this.f7612b.obtainMessage(1, uVar).sendToTarget();
                return;
            }
            this.f7611a = true;
            uVar.d();
            this.f7611a = false;
        }
    }
}
