package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C1017R;
import com.google.android.gms.common.annotation.KeepForSdk;
import javax.annotation.Nullable;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/StringResourceValueReader.class */
public class StringResourceValueReader {

    /* renamed from: a */
    private final Resources f7531a;

    /* renamed from: b */
    private final String f7532b;

    public StringResourceValueReader(Context context) {
        Preconditions.m14523k(context);
        Resources resources = context.getResources();
        this.f7531a = resources;
        this.f7532b = resources.getResourcePackageName(C1017R.string.common_google_play_services_unknown_issue);
    }

    @Nullable
    @KeepForSdk
    /* renamed from: a */
    public String m14502a(String str) {
        int identifier = this.f7531a.getIdentifier(str, "string", this.f7532b);
        if (identifier == 0) {
            return null;
        }
        return this.f7531a.getString(identifier);
    }
}
