package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C2674j;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.internal.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/w.class */
public class C2670w {

    /* renamed from: a */
    private final Resources f7429a;

    /* renamed from: b */
    private final String f7430b;

    public C2670w(Context context) {
        C2662s.m13981a(context);
        this.f7429a = context.getResources();
        this.f7430b = this.f7429a.getResourcePackageName(C2674j.C2675a.common_google_play_services_unknown_issue);
    }

    @Nullable
    /* renamed from: a */
    public String m13909a(String str) {
        int identifier = this.f7429a.getIdentifier(str, "string", this.f7430b);
        return identifier == 0 ? null : this.f7429a.getString(identifier);
    }
}
