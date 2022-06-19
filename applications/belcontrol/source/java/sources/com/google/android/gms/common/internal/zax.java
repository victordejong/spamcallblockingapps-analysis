package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zax.class */
public final class zax extends Button {
    public zax(Context context) {
        this(context, null);
    }

    private zax(Context context, AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    private static int zaa(int i, int i2, int i3, int i4) {
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

    /* JADX WARN: Removed duplicated region for block: B:25:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zaa(android.content.res.Resources r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zax.zaa(android.content.res.Resources, int, int):void");
    }
}
