package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C11957f;
/* renamed from: com.google.android.gms.common.internal.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public final class C12047q {

    /* renamed from: a */
    private final Resources f39569a;

    /* renamed from: b */
    private final String f39570b;

    public C12047q(Context context) {
        C12045o.m19162a(context);
        Resources resources = context.getResources();
        this.f39569a = resources;
        this.f39570b = resources.getResourcePackageName(C11957f.C11958a.common_google_play_services_unknown_issue);
    }

    /* renamed from: a */
    public final String m19149a(String str) {
        int identifier = this.f39569a.getIdentifier(str, "string", this.f39570b);
        if (identifier == 0) {
            return null;
        }
        return this.f39569a.getString(identifier);
    }
}
