package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.HandlerC13160j;
/* renamed from: com.google.android.gms.common.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/h.class */
public final class HandlerC11960h extends HandlerC13160j {

    /* renamed from: a */
    final /* synthetic */ C11937b f39452a;

    /* renamed from: b */
    private final Context f39453b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC11960h(C11937b c11937b, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f39452a = c11937b;
        this.f39453b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 1) {
            int mo19275a = this.f39452a.mo19275a(this.f39453b);
            if (!this.f39452a.mo19276a(mo19275a)) {
                return;
            }
            this.f39452a.m19284a(this.f39453b, mo19275a);
            return;
        }
        int i = message.what;
        StringBuilder sb = new StringBuilder(50);
        sb.append("Don't know how to handle this message: ");
        sb.append(i);
        Log.w("GoogleApiAvailability", sb.toString());
    }
}
