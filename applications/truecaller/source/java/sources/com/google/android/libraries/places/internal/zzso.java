package com.google.android.libraries.places.internal;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzso.class */
public class zzso extends IOException {
    private zzto zza = null;

    public zzso(String str) {
        super(str);
    }

    public static zzsr zza() {
        return new zzsr("Protocol message tag had invalid wire type.");
    }
}
