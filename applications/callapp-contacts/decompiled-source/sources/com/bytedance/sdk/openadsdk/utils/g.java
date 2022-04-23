package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.c;
import com.bytedance.sdk.openadsdk.multipro.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f10295a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b  reason: collision with root package name */
    private static IListenerManager f10296b;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/g$a.class */
    public interface a {
        void a();

        void a(String str);
    }

    public static void a(final String str) {
        if (!TextUtils.isEmpty(str)) {
            if (b.b()) {
                new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.g.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            q.b("MultiProcess", "handleYes-1，key=" + str);
                            g.b().broadcastPermissionListener(str, null);
                        } catch (Throwable th) {
                        }
                    }
                }).start();
                return;
            }
            a b2 = b(str);
            if (b2 != null) {
                b2.a();
            }
        }
    }

    public static void a(final String str, final String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (b.b()) {
                new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.g.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            q.b("MultiProcess", "handleNo-1，key=" + str + "，permission=" + str2);
                            g.b().broadcastPermissionListener(str, str2);
                        } catch (Throwable th) {
                        }
                    }
                }).start();
                return;
            }
            a b2 = b(str);
            if (b2 != null) {
                b2.a(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IListenerManager b() {
        if (f10296b == null) {
            f10296b = c.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.a.a(n.a()).a(4));
        }
        return f10296b;
    }

    private static a b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f10295a.remove(str);
    }
}
