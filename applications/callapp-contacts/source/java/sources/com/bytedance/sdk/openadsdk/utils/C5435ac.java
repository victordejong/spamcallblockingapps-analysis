package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.RunnableC4584c;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ac */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ac.class */
public class C5435ac implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f18969a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: b */
    private String f18970b;

    private C5435ac() {
        Thread.setDefaultUncaughtExceptionHandler(this);
        m32322b();
    }

    /* renamed from: a */
    public static C5435ac m32324a() {
        return new C5435ac();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m32323a(java.lang.Thread r6, java.lang.Throwable r7) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5435ac.m32323a(java.lang.Thread, java.lang.Throwable):void");
    }

    /* renamed from: b */
    private void m32322b() {
        Context m34815a = C4600n.m34815a();
        if (m34815a == null) {
            return;
        }
        try {
            File file = new File(m34815a.getFilesDir(), "TTCache");
            file.mkdirs();
            this.f18970b = file.getPath();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0077 -> B:29:0x004a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007b -> B:31:0x004d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x007f -> B:23:0x0050). Please submit an issue!!! */
    /* renamed from: c */
    private void m32321c() {
        try {
            Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC2Proxy", "a", Context.class);
            if (m32318a != null) {
                m32318a.invoke(null, C4600n.m34815a());
            }
        } catch (Throwable th) {
        }
        try {
            Method m32318a2 = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC3Proxy", "a", Context.class);
            if (m32318a2 != null) {
                m32318a2.invoke(null, C4600n.m34815a());
            }
        } catch (Throwable th2) {
        }
        try {
            RunnableC4584c.m34936a();
        } catch (Throwable th3) {
        }
        try {
            C4786a.m33980b();
        } catch (Throwable th4) {
        }
        try {
            String m36302b = C4151a.m36302b(C4600n.m34815a());
            if (TextUtils.isEmpty(m36302b)) {
                return;
            }
            File file = new File(m36302b);
            if (!file.exists()) {
                return;
            }
            C5467k.m32137c(file);
        } catch (Throwable th5) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        boolean z;
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            z = false;
            if (stringWriter2 != null) {
                z = stringWriter2.contains(AdSlot.class.getPackage().getName());
            }
        } catch (Throwable th2) {
            z = false;
        }
        if (z) {
            m32323a(thread, th);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f18969a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
