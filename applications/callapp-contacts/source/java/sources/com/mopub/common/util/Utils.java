package com.mopub.common.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.mopub.common.Preconditions;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Utils.class */
public class Utils {

    /* renamed from: a */
    private static final AtomicLong f59030a = new AtomicLong(1);

    /* renamed from: a */
    static void m6609a(View view) {
        Preconditions.checkNotNull(view);
        view.setSystemUiVisibility(4870);
    }

    public static boolean bitMaskContainsFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public static long generateUniqueId() {
        AtomicLong atomicLong;
        long j;
        char c;
        do {
            atomicLong = f59030a;
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
            final View decorView = window.getDecorView();
            m6609a(decorView);
            Preconditions.checkNotNull(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.mopub.common.util.Utils.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    if ((i & 2) == 0) {
                        Utils.m6609a(decorView);
                    }
                }
            });
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
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
