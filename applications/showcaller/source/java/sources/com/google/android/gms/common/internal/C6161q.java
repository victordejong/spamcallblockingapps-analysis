package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.C6097g;
/* renamed from: com.google.android.gms.common.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public class C6161q {

    /* renamed from: a */
    private final Resources f19591a;

    /* renamed from: b */
    private final String f19592b;

    public C6161q(@RecentlyNonNull Context context) {
        C6155o.m17018j(context);
        Resources resources = context.getResources();
        this.f19591a = resources;
        this.f19592b = resources.getResourcePackageName(C6097g.common_google_play_services_unknown_issue);
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m17001a(@RecentlyNonNull String str) {
        int identifier = this.f19591a.getIdentifier(str, "string", this.f19592b);
        if (identifier == 0) {
            return null;
        }
        return this.f19591a.getString(identifier);
    }
}
