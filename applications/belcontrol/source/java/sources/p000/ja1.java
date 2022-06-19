package p000;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.List;
/* renamed from: ja1 */
/* loaded from: classes3-dex2jar.jar:ja1.class */
public abstract class ja1 {

    /* renamed from: a */
    public static final String f6833a = "ja1";

    /* renamed from: a */
    public static long m1483a(Context context, List<l81> list) {
        Uri.Builder buildUpon = Uri.parse("content://mms-sms/threadID").buildUpon();
        for (l81 l81Var : list) {
            buildUpon.appendQueryParameter("recipient", l81Var.f6929m.toString());
        }
        Cursor query = context.getContentResolver().query(buildUpon.build(), new String[]{"_id"}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    return query.getLong(0);
                }
                j91.m1505k(f6833a, "getOrCreateThreadId returned no rows!");
                return -1L;
            } finally {
                query.close();
            }
        }
        return -1L;
    }
}
