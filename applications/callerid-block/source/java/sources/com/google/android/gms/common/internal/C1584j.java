package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.C1557e;
/* renamed from: com.google.android.gms.common.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j.class */
public class C1584j {

    /* renamed from: a */
    private final Resources f5864a;

    /* renamed from: b */
    private final String f5865b;

    public C1584j(@RecentlyNonNull Context context) {
        C1581h.m8347h(context);
        Resources resources = context.getResources();
        this.f5864a = resources;
        this.f5865b = resources.getResourcePackageName(C1557e.common_google_play_services_unknown_issue);
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m8340a(@RecentlyNonNull String str) {
        int identifier = this.f5864a.getIdentifier(str, "string", this.f5865b);
        if (identifier == 0) {
            return null;
        }
        return this.f5864a.getString(identifier);
    }
}
