package com.mopub.common.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.google.android.exoplayer2.C0515C;
import com.mopub.common.Preconditions;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Utils.class */
public class Utils {

    /* renamed from: a */
    public static final AtomicLong f4540a = new AtomicLong(1);

    /* renamed from: com.mopub.common.util.Utils$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Utils$a.class */
    public static final class View$OnSystemUiVisibilityChangeListenerC1067a implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f4541a;

        public View$OnSystemUiVisibilityChangeListenerC1067a(View view) {
            this.f4541a = view;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & 2) == 0) {
                Utils.m3780b(this.f4541a);
            }
        }
    }

    /* renamed from: a */
    public static View.OnSystemUiVisibilityChangeListener m3781a(View view) {
        Preconditions.checkNotNull(view);
        return new View$OnSystemUiVisibilityChangeListenerC1067a(view);
    }

    /* renamed from: b */
    public static void m3780b(View view) {
        Preconditions.checkNotNull(view);
        view.setSystemUiVisibility(4870);
    }

    public static boolean bitMaskContainsFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    public static long generateUniqueId() {
        AtomicLong atomicLong;
        long j;
        ?? r9;
        do {
            atomicLong = f4540a;
            j = atomicLong.get();
            r9 = true;
            ?? r0 = j + 1;
            if (r0 <= 9223372036854775806L) {
                r9 = r0;
            }
        } while (!atomicLong.compareAndSet(j, r9 == true ? 1L : 0L));
        return j;
    }

    public static void hideNavigationBar(Activity activity) {
        Preconditions.checkNotNull(activity);
        Window window = activity.getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            m3780b(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(m3781a(decorView));
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(C0515C.UTF8_NAME);
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
