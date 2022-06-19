package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.qa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qa.class */
public final class C6879qa implements AbstractC6656k9 {

    /* renamed from: a */
    private Message f28352a;

    /* renamed from: b */
    private C6916ra f28353b;

    private C6879qa() {
    }

    public /* synthetic */ C6879qa(C6842pa c6842pa) {
    }

    /* renamed from: c */
    private final void m12000c() {
        this.f28352a = null;
        this.f28353b = null;
        C6916ra.m11630b(this);
    }

    /* renamed from: a */
    public final C6879qa m12002a(Message message, C6916ra c6916ra) {
        this.f28352a = message;
        this.f28353b = c6916ra;
        return this;
    }

    /* renamed from: b */
    public final boolean m12001b(Handler handler) {
        Message message = this.f28352a;
        Objects.requireNonNull(message);
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        m12000c();
        return sendMessageAtFrontOfQueue;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6656k9
    public final void zza() {
        Message message = this.f28352a;
        Objects.requireNonNull(message);
        message.sendToTarget();
        m12000c();
    }
}
