package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;
/* renamed from: com.flurry.sdk.lc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lc.class */
public abstract class AbstractRunnableC3447lc implements Runnable {

    /* renamed from: a */
    public static final String f5921a = AbstractRunnableC3447lc.class.getSimpleName();

    /* renamed from: b */
    public PrintStream f5922b;

    /* renamed from: c */
    public PrintWriter f5923c;

    /* renamed from: a */
    public abstract void mo32300a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo32300a();
        } catch (Throwable th) {
            PrintStream printStream = this.f5922b;
            if (printStream != null) {
                th.printStackTrace(printStream);
            } else {
                PrintWriter printWriter = this.f5923c;
                if (printWriter != null) {
                    th.printStackTrace(printWriter);
                } else {
                    th.printStackTrace();
                }
            }
            C3356jq.m32614a(6, f5921a, "", th);
        }
    }
}
