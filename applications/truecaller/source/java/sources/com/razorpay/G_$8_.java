package com.razorpay;

import android.content.Context;
import android.util.TypedValue;
/* loaded from: classes3-dex2jar.jar:com/razorpay/G_$8_.class */
public final class G_$8_ {
    /* renamed from: a */
    public static int m36099a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    public static boolean m36100a(Context context) {
        return context.getResources().getBoolean(C2728R.bool.isTablet);
    }
}
