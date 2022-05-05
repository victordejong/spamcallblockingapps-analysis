package com.asus.privatecontacts.detail;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.util.Log;
import com.asus.privatecontacts.a.b;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/a.class */
public class a extends AsyncTaskLoader<b> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3020a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Context f3021b;
    private b c = null;
    private long d;

    public a(Context context, long j) {
        super(context);
        this.f3021b = context;
        this.d = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.asus.privatecontacts.a.b loadInBackground() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.detail.a.loadInBackground():com.asus.privatecontacts.a.b");
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        Log.d(f3020a, ">>> onStartLoading");
        super.onStartLoading();
        if (takeContentChanged() || this.c == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        Log.d(f3020a, ">>> onStopLoading");
        cancelLoad();
    }
}
