package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import com.appsflyer.AFLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: com.appsflyer.internal.cm */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cm.class */
public final class C0800cm {
    public final FutureTask<List<String>> valueOf;

    public C0800cm(final Context context) {
        this.valueOf = new FutureTask<>(new Callable<List<String>>() { // from class: com.appsflyer.internal.cm.2
            /* renamed from: AFInAppEventType */
            public List<String> call() {
                List<ResolveInfo> queryIntentContentProviders;
                ArrayList arrayList = new ArrayList();
                try {
                    queryIntentContentProviders = context.getPackageManager().queryIntentContentProviders(new Intent("com.appsflyer.oem.PRELOAD_PROVIDER"), 0);
                } catch (Exception e) {
                    AFLogger.valueOf(e.getMessage(), e);
                }
                if (queryIntentContentProviders != null && !queryIntentContentProviders.isEmpty()) {
                    for (ResolveInfo resolveInfo : queryIntentContentProviders) {
                        String str = resolveInfo.providerInfo.authority;
                        StringBuilder sb = new StringBuilder("content://");
                        sb.append(str);
                        sb.append("/preload_id");
                        Cursor query = context.getContentResolver().query(Uri.parse(sb.toString()), null, null, null, null);
                        if (query != null) {
                            query.moveToFirst();
                            arrayList.add(query.getString(query.getColumnIndex("preload_id")));
                            query.close();
                        }
                    }
                    return arrayList;
                }
                return null;
            }
        });
    }

    public final List<String> AFInAppEventParameterName() {
        try {
            if (!AFKeystoreWrapper()) {
                return null;
            }
            return this.valueOf.get();
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    public final boolean AFKeystoreWrapper() {
        return this.valueOf.isDone();
    }
}
