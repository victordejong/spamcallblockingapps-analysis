package com.mopub.common.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.mopub.common.Preconditions;
import com.tenor.android.core.constant.StringConstant;
import e.n.a.m.a;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Utils.class */
public class Utils {

    /* renamed from: a */
    public static final AtomicLong f8727a = new AtomicLong(1);

    public static boolean bitMaskContainsFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public static long generateUniqueId() {
        AtomicLong atomicLong;
        long j;
        char c;
        do {
            atomicLong = f8727a;
            j = atomicLong.get();
            c = j + 1;
            if (c > 9223372036854775806L) {
                c = 1;
            }
        } while (!atomicLong.compareAndSet(j, c));
        return j;
    }

    public static void hideNavigationBar(Activity activity) {
        Preconditions.checkNotNull(activity);
        Window window = activity.getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            Preconditions.checkNotNull(decorView);
            decorView.setSystemUiVisibility(4870);
            Preconditions.checkNotNull(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(new a(decorView));
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(StringConstant.UTF8);
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase(Locale.US);
        } catch (Exception e) {
            return "";
        }
    }
}
