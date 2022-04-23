package com.bumptech.glide.request.p031h;

import android.os.Handler;
import android.os.Message;
/* renamed from: com.bumptech.glide.request.h.g$a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/g$a.class */
class g$a implements Handler.Callback {
    g$a() {
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        ((g) message.obj).j();
        return true;
    }
}
