package com.google.android.material.p149g;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.C0529a;
import com.google.android.material.p156n.C4717b;
/* renamed from: com.google.android.material.g.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/g/a.class */
public class C4680a {
    /* renamed from: a */
    public static int m2924a(int i, int i2) {
        return C0529a.m20635a(i2, i);
    }

    /* renamed from: a */
    public static int m2923a(int i, int i2, float f) {
        return m2924a(i, C0529a.m20633b(i2, Math.round(Color.alpha(i2) * f)));
    }

    /* renamed from: a */
    public static int m2922a(Context context, int i, int i2) {
        TypedValue m2788a = C4717b.m2788a(context, i);
        if (m2788a != null) {
            i2 = m2788a.data;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m2921a(Context context, int i, String str) {
        return C4717b.m2787a(context, i, str);
    }

    /* renamed from: a */
    public static int m2920a(View view, int i) {
        return C4717b.m2785a(view, i);
    }

    /* renamed from: a */
    public static int m2919a(View view, int i, int i2) {
        return m2922a(view.getContext(), i, i2);
    }

    /* renamed from: a */
    public static int m2918a(View view, int i, int i2, float f) {
        return m2923a(m2920a(view, i), m2920a(view, i2), f);
    }
}
