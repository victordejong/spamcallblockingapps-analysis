package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.aidl.C5072a;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5076b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.utils.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/f.class */
public class C5454f {

    /* renamed from: a */
    private static final Map<String, AbstractC5456a> f19001a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    private static IListenerManager f19002b;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/f$a.class */
    public interface AbstractC5456a {
        /* renamed from: a */
        void m32177a();

        /* renamed from: b */
        void m32176b();

        /* renamed from: c */
        void m32175c();
    }

    /* renamed from: a */
    public static void m32183a(String str) {
        m32182a(str, 1);
    }

    /* renamed from: a */
    private static void m32182a(final String str, final int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (C5094b.m33091b()) {
            new Thread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C5454f.m32181b().broadcastDialogListener(str, i);
                    } catch (Throwable th) {
                    }
                }
            }).start();
            return;
        }
        AbstractC5456a m32178d = m32178d(str);
        if (m32178d == null) {
            return;
        }
        if (i == 1) {
            m32178d.m32177a();
        } else if (i == 2) {
            m32178d.m32176b();
        } else if (i != 3) {
            m32178d.m32175c();
        } else {
            m32178d.m32175c();
        }
    }

    /* renamed from: b */
    public static IListenerManager m32181b() {
        if (f19002b == null) {
            f19002b = BinderC5076b.asInterface(C5072a.m33111a(C4600n.m34815a()).m33112a(2));
        }
        return f19002b;
    }

    /* renamed from: b */
    public static void m32180b(String str) {
        m32182a(str, 2);
    }

    /* renamed from: c */
    public static void m32179c(String str) {
        m32182a(str, 3);
    }

    /* renamed from: d */
    public static AbstractC5456a m32178d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f19001a.remove(str);
    }
}
