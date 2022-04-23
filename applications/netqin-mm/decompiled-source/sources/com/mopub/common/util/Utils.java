package com.mopub.common.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.android.volley.Request;
import com.mopub.common.Preconditions;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Utils.class */
public class Utils {

    /* renamed from: a */
    public static final AtomicLong f33962a = new AtomicLong(1);

    /* renamed from: com.mopub.common.util.Utils$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Utils$a.class */
    public static final class View$OnSystemUiVisibilityChangeListenerC8751a implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: a */
        public final /* synthetic */ View f33963a;

        public View$OnSystemUiVisibilityChangeListenerC8751a(View view) {
            this.f33963a = view;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & 2) == 0) {
                Utils.m4503b(this.f33963a);
            }
        }
    }

    /* renamed from: a */
    public static View.OnSystemUiVisibilityChangeListener m4504a(View view) {
        Preconditions.checkNotNull(view);
        return new View$OnSystemUiVisibilityChangeListenerC8751a(view);
    }

    /* renamed from: b */
    public static void m4503b(View view) {
        Preconditions.checkNotNull(view);
        view.setSystemUiVisibility(4866);
    }

    public static boolean bitMaskContainsFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long generateUniqueId() {
        /*
        L_0x0000:
            java.util.concurrent.atomic.AtomicLong r0 = com.mopub.common.util.Utils.f33962a
            long r0 = r0.get()
            r6 = r0
            r0 = 1
            r8 = r0
            r0 = r6
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
            r0 = r10
            r1 = 9223372036854775806(0x7ffffffffffffffe, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001a
            goto L_0x001d
        L_0x001a:
            r0 = r10
            r8 = r0
        L_0x001d:
            java.util.concurrent.atomic.AtomicLong r0 = com.mopub.common.util.Utils.f33962a
            r1 = r6
            r2 = r8
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0000
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.util.Utils.generateUniqueId():long");
    }

    public static void hideNavigationBar(Activity activity) {
        Preconditions.checkNotNull(activity);
        Window window = activity.getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            m4503b(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(m4504a(decorView));
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
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
