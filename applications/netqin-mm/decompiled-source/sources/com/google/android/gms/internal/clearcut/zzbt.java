package com.google.android.gms.internal.clearcut;

import java.util.Collections;
import java.util.HashMap;
import p131c.p161d.p170b.p224d.p252g.p255c.C4316a0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbt.class */
public final class zzbt {

    /* renamed from: a */
    public static final zzbt f29244a = new zzbt(true);

    static {
        m10737a();
    }

    public zzbt() {
        new HashMap();
    }

    public zzbt(boolean z) {
        Collections.emptyMap();
    }

    /* renamed from: a */
    public static Class<?> m10737a() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static zzbt m10736b() {
        return C4316a0.m25996b();
    }
}
