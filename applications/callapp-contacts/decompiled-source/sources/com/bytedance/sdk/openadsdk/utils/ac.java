package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.h.c;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.widget.webview.a.a;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ac.class */
public class ac implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f10269a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: b  reason: collision with root package name */
    private String f10270b;

    private ac() {
        Thread.setDefaultUncaughtExceptionHandler(this);
        b();
    }

    public static ac a() {
        return new ac();
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.Thread r6, java.lang.Throwable r7) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.ac.a(java.lang.Thread, java.lang.Throwable):void");
    }

    private void b() {
        Context a2 = n.a();
        if (a2 != null) {
            try {
                File file = new File(a2.getFilesDir(), "TTCache");
                file.mkdirs();
                this.f10270b = file.getPath();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0077 -> B:29:0x004a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007b -> B:31:0x004d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x007f -> B:23:0x0050). Please submit an issue!!! */
    private void c() {
        try {
            Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC2Proxy", "a", Context.class);
            if (a2 != null) {
                a2.invoke(null, n.a());
            }
        } catch (Throwable th) {
        }
        try {
            Method a3 = ad.a("com.bytedance.sdk.openadsdk.TTC3Proxy", "a", Context.class);
            if (a3 != null) {
                a3.invoke(null, n.a());
            }
        } catch (Throwable th2) {
        }
        try {
            c.a();
        } catch (Throwable th3) {
        }
        try {
            a.b();
        } catch (Throwable th4) {
        }
        try {
            String b2 = com.bytedance.sdk.adnet.a.b(n.a());
            if (!TextUtils.isEmpty(b2)) {
                File file = new File(b2);
                if (file.exists()) {
                    k.c(file);
                }
            }
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
            a(thread, th);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f10269a;
        if (uncaughtExceptionHandler != null && uncaughtExceptionHandler != this) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
