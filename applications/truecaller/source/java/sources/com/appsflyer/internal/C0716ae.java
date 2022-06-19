package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.Nullable;
/* renamed from: com.appsflyer.internal.ae */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ae.class */
public final class C0716ae extends AbstractC0759ax<String> {
    public C0716ae(Context context) {
        super(context, "com.facebook.katana.provider.AttributionIdProvider", "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1");
    }

    /* renamed from: AFKeystoreWrapper */
    public String values() {
        Throwable th;
        Cursor cursor;
        try {
            ContentResolver contentResolver = this.AFInAppEventType.getContentResolver();
            StringBuilder sb = new StringBuilder("content://");
            sb.append(this.values);
            cursor = contentResolver.query(Uri.parse(sb.toString()), new String[]{"aid"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex("aid"));
                        cursor.close();
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

    @Nullable
    public final String AFInAppEventType() {
        new Thread(this.valueOf).start();
        return (String) super.valueOf();
    }

    @Override // com.appsflyer.internal.AbstractC0759ax
    @Nullable
    public final /* synthetic */ String valueOf() {
        new Thread(this.valueOf).start();
        return (String) super.valueOf();
    }
}
