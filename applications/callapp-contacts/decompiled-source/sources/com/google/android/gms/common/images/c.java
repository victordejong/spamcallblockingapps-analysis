package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.m;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f22825a;

    public c(Uri uri) {
        this.f22825a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return m.a(((c) obj).f22825a, this.f22825a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f22825a});
    }
}
