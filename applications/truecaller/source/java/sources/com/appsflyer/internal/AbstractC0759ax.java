package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.appsflyer.internal.ax */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ax.class */
public abstract class AbstractC0759ax<T> {
    public final Context AFInAppEventType;
    private final String[] AFKeystoreWrapper;
    public final FutureTask<T> valueOf = new FutureTask<>(new Callable<T>() { // from class: com.appsflyer.internal.ax.4
        @Override // java.util.concurrent.Callable
        public final T call() {
            if (AbstractC0759ax.this.AFInAppEventParameterName()) {
                return (T) AbstractC0759ax.this.values();
            }
            return null;
        }
    });
    public final String values;

    public AbstractC0759ax(Context context, String str, String... strArr) {
        this.AFInAppEventType = context;
        this.values = str;
        this.AFKeystoreWrapper = strArr;
    }

    public final boolean AFInAppEventParameterName() {
        try {
            ProviderInfo resolveContentProvider = this.AFInAppEventType.getPackageManager().resolveContentProvider(this.values, 128);
            boolean z = false;
            if (resolveContentProvider != null) {
                z = false;
                if (Arrays.asList(this.AFKeystoreWrapper).contains(C0714ac.values(this.AFInAppEventType.getPackageManager(), ((PackageItemInfo) resolveContentProvider).packageName))) {
                    z = true;
                }
            }
            return z;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return false;
        }
    }

    @Nullable
    public T valueOf() {
        try {
            return this.valueOf.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return null;
        }
    }

    public abstract T values();
}
