package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.HandlerC7287f;
@SuppressLint({"HandlerLeak"})
/* renamed from: com.google.android.gms.common.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/l.class */
public final class HandlerC6199l extends HandlerC7287f {

    /* renamed from: a */
    private final Context f19643a;

    /* renamed from: b */
    final /* synthetic */ C6084b f19644b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6199l(C6084b c6084b, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f19644b = c6084b;
        this.f19643a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int mo17220g = this.f19644b.mo17220g(this.f19643a);
        if (!this.f19644b.mo17217j(mo17220g)) {
            return;
        }
        this.f19644b.m17235o(this.f19643a, mo17220g);
    }
}
