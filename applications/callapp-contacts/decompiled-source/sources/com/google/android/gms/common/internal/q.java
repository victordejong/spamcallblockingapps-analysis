package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f22903a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22904b;

    public q(Context context) {
        o.a(context);
        Resources resources = context.getResources();
        this.f22903a = resources;
        this.f22904b = resources.getResourcePackageName(f.a.common_google_play_services_unknown_issue);
    }

    public final String a(String str) {
        int identifier = this.f22903a.getIdentifier(str, "string", this.f22904b);
        if (identifier == 0) {
            return null;
        }
        return this.f22903a.getString(identifier);
    }
}
