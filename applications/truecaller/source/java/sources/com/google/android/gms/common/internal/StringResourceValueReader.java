package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C2052R;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/StringResourceValueReader.class */
public class StringResourceValueReader {

    /* renamed from: a */
    public final Resources f6001a;

    /* renamed from: b */
    public final String f6002b;

    public StringResourceValueReader(Context context) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        this.f6001a = resources;
        this.f6002b = resources.getResourcePackageName(C2052R.string.common_google_play_services_unknown_issue);
    }

    @KeepForSdk
    /* renamed from: a */
    public String m38892a(String str) {
        int identifier = this.f6001a.getIdentifier(str, "string", this.f6002b);
        if (identifier == 0) {
            return null;
        }
        return this.f6001a.getString(identifier);
    }
}
