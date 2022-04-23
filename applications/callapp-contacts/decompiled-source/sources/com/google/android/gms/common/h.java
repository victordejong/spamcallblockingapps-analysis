package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/h.class */
public final class h extends j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f22812a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f22813b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(b bVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f22812a = bVar;
        this.f22813b = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            int i = message.what;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int a2 = this.f22812a.a(this.f22813b);
        if (this.f22812a.a(a2)) {
            this.f22812a.a(this.f22813b, a2);
        }
    }
}
