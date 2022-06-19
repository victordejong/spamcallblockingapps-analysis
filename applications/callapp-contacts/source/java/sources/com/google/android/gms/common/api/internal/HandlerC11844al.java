package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.base.HandlerC13160j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.al */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/al.class */
public final class HandlerC11844al extends HandlerC13160j {

    /* renamed from: a */
    final /* synthetic */ C11899i f39243a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC11844al(C11899i c11899i, Looper looper) {
        super(looper);
        this.f39243a = c11899i;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        C12045o.m19154b(z);
        C11899i.AbstractC11901b abstractC11901b = (C11899i.AbstractC11901b) message.obj;
        L l = this.f39243a.f39365a;
        if (l == 0) {
            abstractC11901b.mo11373a();
            return;
        }
        try {
            abstractC11901b.mo11372a(l);
        } catch (RuntimeException e) {
            abstractC11901b.mo11373a();
            throw e;
        }
    }
}
