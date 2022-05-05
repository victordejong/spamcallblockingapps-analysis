package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcs.class */
public class zzcs extends IOException {
    private zzdr zzim = null;

    public zzcs(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzct zzbd() {
        return new zzct("Protocol message tag had invalid wire type.");
    }
}
