package com.aotter.net.trek.common;

import android.os.AsyncTask;
/* renamed from: com.aotter.net.trek.common.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/b.class */
public class AsyncTaskC1742b extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public final String f1507a;

    /* renamed from: b */
    public final byte[] f1508b;

    public AsyncTaskC1742b(String str, byte[] bArr) {
        this.f1507a = str;
        this.f1508b = bArr;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        CacheService.putToDiskCache(this.f1507a, this.f1508b);
        return null;
    }
}
