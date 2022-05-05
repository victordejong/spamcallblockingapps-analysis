package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
/* renamed from: com.appsflyer.internal.ac */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ac.class */
public final class C1821ac extends ContentFetcher<String> {
    public C1821ac(Context context) {
        super(context, "com.facebook.katana.provider.AttributionIdProvider", "e3f9e1e0cf99d0e56a055ba65e241b3399f7cea524326b0cdd6ec1327ed0fdc1", 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ǃ */
    public String query() {
        Throwable th;
        Cursor cursor = null;
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            StringBuilder sb = new StringBuilder("content://");
            sb.append(this.authority);
            Cursor query = contentResolver.query(Uri.parse(sb.toString()), new String[]{"aid"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex("aid"));
                        if (query != null) {
                            query.close();
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.appsflyer.internal.ContentFetcher
    @Nullable
    public final /* synthetic */ String get() {
        start();
        return (String) super.get();
    }

    @Nullable
    /* renamed from: ɩ */
    public final String m36186() {
        start();
        return (String) super.get();
    }
}
