package com.allinone.callerid.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
/* renamed from: com.allinone.callerid.util.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/f.class */
public class C3736f {

    /* renamed from: com.allinone.callerid.util.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/f$a.class */
    public interface AbstractC3737a {
        /* renamed from: a */
        void mo24403a(int i, String str);
    }

    /* renamed from: a */
    public static void m24404a(Context context, String str, AbstractC3737a abstractC3737a) {
        String str2 = "";
        int i = 0;
        Cursor cursor = null;
        if (str != null) {
            int i2 = 0;
            Cursor cursor2 = null;
            str2 = "";
            i = 0;
            cursor = null;
            try {
                if (!"".equals(str)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("content://com.android.contacts/data/phones/filter/");
                    sb.append(str);
                    Cursor query = context.getContentResolver().query(Uri.parse(sb.toString()), new String[]{"contact_id", "display_name"}, null, null, null);
                    str2 = "";
                    i = 0;
                    cursor = query;
                    if (query != null) {
                        str2 = "";
                        i = 0;
                        cursor = query;
                        if (query.getCount() > 0) {
                            query.moveToFirst();
                            i = query.getInt(0);
                            i2 = i;
                            cursor2 = query;
                            str2 = query.getString(1);
                            cursor = query;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                cursor = cursor2;
                i = i2;
                str2 = "";
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        if (abstractC3737a != null) {
            abstractC3737a.mo24403a(i, str2);
        }
    }
}
