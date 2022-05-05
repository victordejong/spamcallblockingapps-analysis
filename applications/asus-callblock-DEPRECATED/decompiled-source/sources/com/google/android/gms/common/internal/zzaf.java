package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzaf.class */
public final class zzaf extends Button {
    public zzaf(Context context) {
        this(context, null);
    }

    public zzaf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    public static int a(int i, int i2, int i3) {
        switch (i) {
            case 0:
            case 1:
                break;
            default:
                throw new IllegalStateException(new StringBuilder(32).append("Unknown button size: ").append(i).toString());
            case 2:
                i3 = i2;
                break;
        }
        return i3;
    }

    public static int a(int i, int i2, int i3, int i4) {
        switch (i) {
            case 0:
                break;
            case 1:
                i2 = i3;
                break;
            case 2:
                i2 = i4;
                break;
            default:
                throw new IllegalStateException(new StringBuilder(33).append("Unknown color scheme: ").append(i).toString());
        }
        return i2;
    }

    public static boolean a(Scope[] scopeArr) {
        boolean z;
        if (scopeArr != null) {
            int length = scopeArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                }
                String str = scopeArr[i].f3944b;
                if (str.contains("/plus.") && !str.equals("https://www.googleapis.com/auth/plus.me")) {
                    z = true;
                    break;
                } else if (str.equals("https://www.googleapis.com/auth/games")) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        return z;
    }
}
