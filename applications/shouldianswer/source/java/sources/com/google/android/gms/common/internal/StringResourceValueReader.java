package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C1274R;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/StringResourceValueReader.class */
public class StringResourceValueReader {
    private final Resources zzeu;
    private final String zzev;

    public StringResourceValueReader(Context context) {
        Preconditions.checkNotNull(context);
        this.zzeu = context.getResources();
        this.zzev = this.zzeu.getResourcePackageName(C1274R.string.common_google_play_services_unknown_issue);
    }

    @Nullable
    public String getString(String str) {
        int identifier = this.zzeu.getIdentifier(str, "string", this.zzev);
        if (identifier == 0) {
            return null;
        }
        return this.zzeu.getString(identifier);
    }
}
