package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ContentFetcher.class */
public abstract class ContentFetcher<T> {
    public final String authority;
    public final Context context;

    /* renamed from: ɩ  reason: contains not printable characters */
    private FutureTask<T> f165 = new FutureTask<>(new Callable<T>() { // from class: com.appsflyer.internal.ContentFetcher.4
        @Override // java.util.concurrent.Callable
        public final T call() {
            if (ContentFetcher.this.valid()) {
                return (T) ContentFetcher.this.query();
            }
            return null;
        }
    });

    /* renamed from: Ι  reason: contains not printable characters */
    private final long f166;

    /* renamed from: ι  reason: contains not printable characters */
    private final String[] f167;

    public ContentFetcher(Context context, String str, long j, String... strArr) {
        this.context = context;
        this.authority = str;
        this.f167 = strArr;
        this.f166 = j;
    }

    public T get() {
        try {
            return this.f165.get(this.f166, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            onError(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onError(Exception exc) {
        AFLogger.afErrorLog(exc.getMessage(), exc);
    }

    protected abstract T query();

    public void start() {
        new Thread(this.f165).start();
    }

    public boolean valid() {
        try {
            ProviderInfo resolveContentProvider = this.context.getPackageManager().resolveContentProvider(this.authority, 128);
            boolean z = false;
            if (resolveContentProvider != null) {
                z = false;
                if (Arrays.asList(this.f167).contains(AndroidUtils.signature(this.context.getPackageManager(), ((PackageItemInfo) resolveContentProvider).packageName))) {
                    z = true;
                }
            }
            return z;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e) {
            onError(e);
            return false;
        }
    }
}
