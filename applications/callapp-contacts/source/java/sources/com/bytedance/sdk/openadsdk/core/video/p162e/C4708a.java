package com.bytedance.sdk.openadsdk.core.video.p162e;

import android.os.Build;
import android.view.View;
import com.callapp.contacts.model.Constants;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.e.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/e/a.class */
public class C4708a {

    /* renamed from: a */
    private static final int f17189a = Build.VERSION.SDK_INT;

    /* renamed from: a */
    public static int m34402a(long j, long j2) {
        return Math.min(Math.max(0, j2 > 0 ? (int) (((j * 1.0d) / j2) * 100.0d) : 0), 100);
    }

    /* renamed from: a */
    public static String m34403a(long j) {
        StringBuilder sb = new StringBuilder();
        long j2 = j / Constants.MINUTE_IN_MILLIS;
        long j3 = ((j % Constants.HOUR_IN_MILLIS) % Constants.MINUTE_IN_MILLIS) / 1000;
        if (j2 >= 10) {
            sb.append(j2);
        } else if (j2 > 0) {
            sb.append(0);
            sb.append(j2);
        } else {
            sb.append(0);
            sb.append(0);
        }
        sb.append(":");
        if (j3 >= 10) {
            sb.append(j3);
        } else if (j3 > 0) {
            sb.append(0);
            sb.append(j3);
        } else {
            sb.append(0);
            sb.append(0);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m34401a(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setSystemUiVisibility(0);
            return;
        }
        int i = f17189a;
        if (i >= 19) {
            view.setSystemUiVisibility(3846);
        } else if (i >= 16) {
            view.setSystemUiVisibility(5);
        } else {
            view.setSystemUiVisibility(1);
        }
    }
}
