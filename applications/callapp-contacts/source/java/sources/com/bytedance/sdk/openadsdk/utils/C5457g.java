package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.aidl.C5072a;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5077c;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.utils.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/g.class */
public class C5457g {

    /* renamed from: a */
    private static final Map<String, AbstractC5460a> f19005a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    private static IListenerManager f19006b;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/g$a.class */
    public interface AbstractC5460a {
        /* renamed from: a */
        void m32169a();

        /* renamed from: a */
        void m32168a(String str);
    }

    /* renamed from: a */
    public static void m32173a(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (C5094b.m33091b()) {
            new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C5478q.m32112b("MultiProcess", "handleYes-1，key=" + str);
                        C5457g.m32171b().broadcastPermissionListener(str, null);
                    } catch (Throwable th) {
                    }
                }
            }).start();
            return;
        }
        AbstractC5460a m32170b = m32170b(str);
        if (m32170b == null) {
            return;
        }
        m32170b.m32169a();
    }

    /* renamed from: a */
    public static void m32172a(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (C5094b.m33091b()) {
            new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.g.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C5478q.m32112b("MultiProcess", "handleNo-1，key=" + str + "，permission=" + str2);
                        C5457g.m32171b().broadcastPermissionListener(str, str2);
                    } catch (Throwable th) {
                    }
                }
            }).start();
            return;
        }
        AbstractC5460a m32170b = m32170b(str);
        if (m32170b == null) {
            return;
        }
        m32170b.m32168a(str2);
    }

    /* renamed from: b */
    public static IListenerManager m32171b() {
        if (f19006b == null) {
            f19006b = BinderC5077c.asInterface(C5072a.m33111a(C4600n.m34815a()).m33112a(4));
        }
        return f19006b;
    }

    /* renamed from: b */
    private static AbstractC5460a m32170b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f19005a.remove(str);
    }
}
