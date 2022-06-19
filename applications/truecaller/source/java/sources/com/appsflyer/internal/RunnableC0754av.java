package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import java.util.concurrent.ExecutorService;
import p193e.p1432d.p1433a.p1434a.AbstractC22066d;
import p193e.p1432d.p1433a.p1434a.C22068e;
/* renamed from: com.appsflyer.internal.av */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/av.class */
public final class RunnableC0754av implements Runnable {
    @NonNull
    private C0770bh AFInAppEventParameterName;
    public AbstractC22066d AFInAppEventType;
    @NonNull
    public final C0766bd AFKeystoreWrapper;
    @NonNull
    private final C0769bg AFVersionDeclaration;
    @NonNull
    public final AbstractC0763ba valueOf;
    @NonNull
    public final ExecutorService values;

    public RunnableC0754av(@NonNull C0766bd c0766bd, @NonNull C0770bh c0770bh, @NonNull AbstractC0763ba abstractC0763ba, @NonNull ExecutorService executorService, @NonNull C0769bg c0769bg) {
        this.AFKeystoreWrapper = c0766bd;
        this.AFInAppEventParameterName = c0770bh;
        this.valueOf = abstractC0763ba;
        this.values = executorService;
        this.AFVersionDeclaration = c0769bg;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0176 A[LOOP:0: B:23:0x016c->B:25:0x0176, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0225  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void AFKeystoreWrapper(com.appsflyer.internal.RunnableC0754av r7, final boolean r8, java.util.List r9) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.RunnableC0754av.AFKeystoreWrapper(com.appsflyer.internal.av, boolean, java.util.List):void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.AFInAppEventType != null) {
                return;
            }
            C0770bh c0770bh = this.AFInAppEventParameterName;
            C0752at c0752at = new C0752at(this);
            Context context = c0770bh.values;
            if (context == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            C22068e c22068e = new C22068e(null, true, context, c0752at);
            this.AFInAppEventType = c22068e;
            c22068e.mo8812j(new C0758aw(this));
        } catch (Throwable th) {
            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                AFLogger.values("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
            }
            AFLogger.values("Failed to setup Play billing", th);
        }
    }
}
