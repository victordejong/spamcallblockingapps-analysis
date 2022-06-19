package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zab.class */
public final class zab {
    public final Uri uri;

    public zab(Uri uri) {
        this.uri = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zab)) {
            return false;
        }
        if (this != obj) {
            return Objects.equal(((zab) obj).uri, this.uri);
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.uri);
    }
}
