package com.mopub.common.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Utils.class */
public class Utils {

    /* renamed from: a */
    public static final AtomicLong f8357a = new AtomicLong(1);

    /* renamed from: com.mopub.common.util.Utils$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Utils$a.class */
    public static final class View$OnSystemUiVisibilityChangeListenerC3814a implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f8358a;

        public View$OnSystemUiVisibilityChangeListenerC3814a(View view) {
            this.f8358a = view;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & 2) == 0) {
                Utils.m30649b(this.f8358a);
            }
        }
    }

    /* renamed from: a */
    public static View.OnSystemUiVisibilityChangeListener m30650a(@NonNull View view) {
        Preconditions.checkNotNull(view);
        return new View$OnSystemUiVisibilityChangeListenerC3814a(view);
    }

    /* renamed from: b */
    public static void m30649b(@NonNull View view) {
        Preconditions.checkNotNull(view);
        view.setSystemUiVisibility(4866);
    }

    public static boolean bitMaskContainsFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    public static long generateUniqueId() {
        long j;
        long j2;
        do {
            j = f8357a.get();
            j2 = 1;
            j2 = j + 1;
            if (j2 > 9223372036854775806L) {
            }
        } while (!f8357a.compareAndSet(j, j2));
        return j;
    }

    public static void hideNavigationBar(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        Window window = activity.getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            m30649b(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(m30650a(decorView));
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            byte[] digest = instance.digest();
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
