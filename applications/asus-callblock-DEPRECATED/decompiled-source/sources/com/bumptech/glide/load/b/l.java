package com.bumptech.glide.load.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.i.h;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/l.class */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3555a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f3556b = new Handler(Looper.getMainLooper(), new a((byte) 0));

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/l$a.class */
    private static final class a implements Handler.Callback {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean z;
            if (message.what == 1) {
                ((k) message.obj).c();
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    public final void a(k<?> kVar) {
        h.a();
        if (this.f3555a) {
            this.f3556b.obtainMessage(1, kVar).sendToTarget();
            return;
        }
        this.f3555a = true;
        kVar.c();
        this.f3555a = false;
    }
}
