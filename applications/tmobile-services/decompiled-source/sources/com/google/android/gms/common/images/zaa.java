package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zaa.class */
public final class zaa {

    /* renamed from: a */
    public final Uri f7432a;

    public zaa(Uri uri) {
        this.f7432a = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zaa)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return Objects.m14537a(((zaa) obj).f7432a, this.f7432a);
    }

    public final int hashCode() {
        return Objects.m14536b(this.f7432a);
    }
}
