package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/k.class */
public final class k implements be<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final i f31043a;

    public k(i iVar) {
        this.f31043a = iVar;
    }

    /* renamed from: b */
    public final Context a() {
        Context context = this.f31043a.f31040a;
        ah.a(context);
        return context;
    }
}
