package com.google.android.gms.appindexing;

import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/appindexing/AndroidAppUri.class */
public final class AndroidAppUri {

    /* renamed from: a */
    private final Uri f6857a;

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidAppUri) {
            return this.f6857a.equals(((AndroidAppUri) obj).f6857a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.m14536b(this.f6857a);
    }

    public final String toString() {
        return this.f6857a.toString();
    }
}
