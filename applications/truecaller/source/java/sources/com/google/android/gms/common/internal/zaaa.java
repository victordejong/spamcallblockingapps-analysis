package com.google.android.gms.common.internal;

import android.content.Context;
import android.widget.Button;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zaaa.class */
public final class zaaa extends Button {
    public zaaa(Context context) {
        super(context, null, 16842824);
    }

    /* renamed from: a */
    public static final int m38835a(int i, int i2, int i3, int i4) {
        if (i != 0) {
            if (i == 1) {
                return i3;
            }
            if (i != 2) {
                throw new IllegalStateException(C22128a.m8690L1(33, "Unknown color scheme: ", i));
            }
            return i4;
        }
        return i2;
    }
}
