package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f4006a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4007b;

    public h(Context context) {
        b.a(context);
        this.f4006a = context.getResources();
        this.f4007b = this.f4006a.getResourcePackageName(a.c.t);
    }

    public final String a(String str) {
        int identifier = this.f4006a.getIdentifier(str, "string", this.f4007b);
        return identifier == 0 ? null : this.f4006a.getString(identifier);
    }
}
