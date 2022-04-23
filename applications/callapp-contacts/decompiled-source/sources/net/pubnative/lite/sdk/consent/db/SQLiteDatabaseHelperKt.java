package net.pubnative.lite.sdk.consent.db;

import android.content.ContentValues;
import java.math.BigDecimal;
import java.util.Date;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u001a\u001c\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"put", "", "Landroid/content/ContentValues;", "key", "", "value", "", "hybid.sdk.voyager_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelperKt.class */
public final class SQLiteDatabaseHelperKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void put(ContentValues contentValues, String str, Object obj) {
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Date) {
            contentValues.put(str, Long.valueOf(((Date) obj).getTime()));
        } else if (obj instanceof Boolean) {
            contentValues.put(str, (Boolean) obj);
        } else if (obj instanceof Character) {
            contentValues.put(str, obj.toString());
        } else if (obj instanceof Byte) {
            contentValues.put(str, (Byte) obj);
        } else if (obj instanceof Short) {
            contentValues.put(str, (Short) obj);
        } else if (obj instanceof Integer) {
            contentValues.put(str, (Integer) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Float) {
            contentValues.put(str, (Float) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else if (obj instanceof byte[]) {
            contentValues.put(str, (byte[]) obj);
        } else if (obj instanceof BigDecimal) {
            contentValues.put(str, Double.valueOf(((BigDecimal) obj).doubleValue()));
        }
    }
}
