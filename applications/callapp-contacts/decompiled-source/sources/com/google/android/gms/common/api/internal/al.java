package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.base.j;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/al.class */
final class al extends j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f22647a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public al(i iVar, Looper looper) {
        super(looper);
        this.f22647a = iVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        o.b(z);
        i.b bVar = (i.b) message.obj;
        L l = this.f22647a.f22739a;
        if (l == 0) {
            bVar.a();
            return;
        }
        try {
            bVar.a(l);
        } catch (RuntimeException e) {
            bVar.a();
            throw e;
        }
    }
}
