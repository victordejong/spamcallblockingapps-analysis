package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.net.Uri;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzn.class */
public final class zzn {

    /* renamed from: f */
    public static final Uri f6059f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a */
    public final String f6060a;

    /* renamed from: b */
    public final String f6061b;

    /* renamed from: c */
    public final ComponentName f6062c;

    /* renamed from: d */
    public final int f6063d;

    /* renamed from: e */
    public final boolean f6064e;

    public zzn(ComponentName componentName, int i) {
        this.f6060a = null;
        this.f6061b = null;
        Objects.requireNonNull(componentName, "null reference");
        this.f6062c = componentName;
        this.f6063d = i;
        this.f6064e = false;
    }

    public zzn(String str, String str2, int i, boolean z) {
        Preconditions.m38901g(str);
        this.f6060a = str;
        Preconditions.m38901g(str2);
        this.f6061b = str2;
        this.f6062c = null;
        this.f6063d = i;
        this.f6064e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return Objects.m38910a(this.f6060a, zznVar.f6060a) && Objects.m38910a(this.f6061b, zznVar.f6061b) && Objects.m38910a(this.f6062c, zznVar.f6062c) && this.f6063d == zznVar.f6063d && this.f6064e == zznVar.f6064e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6060a, this.f6061b, this.f6062c, Integer.valueOf(this.f6063d), Boolean.valueOf(this.f6064e)});
    }

    public final String toString() {
        String str = this.f6060a;
        String str2 = str;
        if (str == null) {
            Objects.requireNonNull(this.f6062c, "null reference");
            str2 = this.f6062c.flattenToString();
        }
        return str2;
    }
}
