package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C7228R;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/StringResourceValueReader.class */
public class StringResourceValueReader {

    /* renamed from: a */
    public final Resources f23456a;

    /* renamed from: b */
    public final String f23457b;

    public StringResourceValueReader(Context context) {
        Preconditions.m17288a(context);
        Resources resources = context.getResources();
        this.f23456a = resources;
        this.f23457b = resources.getResourcePackageName(C7228R.string.common_google_play_services_unknown_issue);
    }

    @KeepForSdk
    /* renamed from: a */
    public String m17276a(String str) {
        int identifier = this.f23456a.getIdentifier(str, "string", this.f23457b);
        if (identifier == 0) {
            return null;
        }
        return this.f23456a.getString(identifier);
    }
}
