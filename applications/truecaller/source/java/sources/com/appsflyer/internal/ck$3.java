package com.appsflyer.internal;

import android.content.Context;
import android.database.Cursor;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ck$3.class */
public final class ck$3 extends AbstractC0759ax<Map<String, Object>> {
    private /* synthetic */ ck AFInAppEventParameterName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck$3(ck ckVar, Context context, String str, String... strArr) {
        super(context, str, strArr);
        this.AFInAppEventParameterName = ckVar;
    }

    private static void AFInAppEventParameterName(String str, Map<String, Object> map, Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1) {
            return;
        }
        long j = cursor.getLong(columnIndex);
        if (j == 0) {
            return;
        }
        map.put(str, Long.valueOf(j));
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01d9, code lost:
        if (0 == 0) goto L72;
     */
    /* renamed from: AFInAppEventType */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Object> values() {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.ck$3.values():java.util.Map");
    }

    private static void valueOf(String str, Map<String, Object> map, Cursor cursor) {
        String string;
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || (string = cursor.getString(columnIndex)) == null) {
            return;
        }
        map.put(str, string);
    }
}
