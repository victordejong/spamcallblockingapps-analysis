package com.google.android.gms.internal.icing;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzew.class */
public final class zzew extends RuntimeException {
    private final List<String> zzlm = null;

    public zzew(zzdr zzdrVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
