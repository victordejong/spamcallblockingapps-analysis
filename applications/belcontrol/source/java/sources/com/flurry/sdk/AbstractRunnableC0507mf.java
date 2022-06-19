package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;
/* renamed from: com.flurry.sdk.mf */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mf.class */
public abstract class AbstractRunnableC0507mf implements Runnable {

    /* renamed from: a */
    private static final String f3585a = AbstractRunnableC0507mf.class.getSimpleName();

    /* renamed from: b */
    private PrintStream f3586b;

    /* renamed from: c */
    private PrintWriter f3587c;

    /* renamed from: a */
    public abstract void m4466a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            m4466a();
        } catch (Throwable th) {
            if (this.f3586b != null) {
                th.printStackTrace(this.f3586b);
            } else {
                PrintWriter printWriter = this.f3587c;
                if (printWriter != null) {
                    th.printStackTrace(printWriter);
                } else {
                    th.printStackTrace();
                }
            }
            C0478ku.m4595a(6, f3585a, "", th);
        }
    }
}
