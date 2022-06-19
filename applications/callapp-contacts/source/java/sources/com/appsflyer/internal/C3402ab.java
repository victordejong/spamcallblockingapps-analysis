package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
/* renamed from: com.appsflyer.internal.ab */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab.class */
public final class C3402ab extends ContentFetcher<String> {
    public C3402ab(Context context) {
        super(context, "com.facebook.katana.provider.AttributionIdProvider", 500L, "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1");
    }

    /* renamed from: ι */
    public String query() {
        Cursor cursor;
        Throwable th;
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            StringBuilder sb = new StringBuilder("content://");
            sb.append(this.authority);
            cursor = contentResolver.query(Uri.parse(sb.toString()), new String[]{"aid"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex("aid"));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor == null) {
                return null;
            }
            cursor.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // com.appsflyer.internal.ContentFetcher
    public final /* synthetic */ String get() {
        start();
        return (String) super.get();
    }

    /* renamed from: ǃ */
    public final String m38033() {
        start();
        return (String) super.get();
    }
}
