package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.b.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/y.class */
public final class y extends e {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ b f22582a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(b bVar, Looper looper) {
        super(looper);
        this.f22582a = bVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        b.a(this.f22582a, message);
    }
}
