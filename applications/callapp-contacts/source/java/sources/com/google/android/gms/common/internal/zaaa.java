package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zaaa.class */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    /* renamed from: a */
    public static final int m19078a(int i, int i2, int i3, int i4) {
        if (i != 0) {
            if (i == 1) {
                return i3;
            }
            if (i == 2) {
                return i4;
            }
            StringBuilder sb = new StringBuilder(33);
            sb.append("Unknown color scheme: ");
            sb.append(i);
            throw new IllegalStateException(sb.toString());
        }
        return i2;
    }
}
