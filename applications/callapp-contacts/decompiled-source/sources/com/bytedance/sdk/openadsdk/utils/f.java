package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f10291a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private static IListenerManager f10292b;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/f$a.class */
    public interface a {
        void a();

        void b();

        void c();
    }

    public static void a(String str) {
        a(str, 1);
    }

    private static void a(final String str, final int i) {
        if (!TextUtils.isEmpty(str)) {
            if (b.b()) {
                new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.f.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            f.b().broadcastDialogListener(str, i);
                        } catch (Throwable th) {
                        }
                    }
                }).start();
                return;
            }
            a d2 = d(str);
            if (d2 != null) {
                if (i == 1) {
                    d2.a();
                } else if (i == 2) {
                    d2.b();
                } else if (i != 3) {
                    d2.c();
                } else {
                    d2.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IListenerManager b() {
        if (f10292b == null) {
            f10292b = com.bytedance.sdk.openadsdk.multipro.aidl.a.b.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.a.a(n.a()).a(2));
        }
        return f10292b;
    }

    public static void b(String str) {
        a(str, 2);
    }

    public static void c(String str) {
        a(str, 3);
    }

    public static a d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f10291a.remove(str);
    }
}
