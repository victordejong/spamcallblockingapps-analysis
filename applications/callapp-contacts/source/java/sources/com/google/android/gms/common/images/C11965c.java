package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.C12041m;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.images.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/c.class */
final class C11965c {

    /* renamed from: a */
    public final Uri f39470a;

    public C11965c(Uri uri) {
        this.f39470a = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C11965c) {
            return C12041m.m19168a(((C11965c) obj).f39470a, this.f39470a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f39470a});
    }
}
