package com.asus.privatecontacts.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f2994a;

    public c(Cursor cursor, boolean z) {
        if (cursor != null) {
            try {
                this.f2994a = new ContentValues();
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "package_id");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "res_package");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "mimetype_id");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "mimetype");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "raw_contact_id");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "is_read_only");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "is_primary");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "is_super_primary");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data_version");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, CoverUtils.CoverData.COVER_URI);
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, CoverUtils.CoverData.COVER_TYPE);
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, CoverUtils.CoverData.USER_SET);
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data4");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data5");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data6");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data7");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data8");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data9");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data10");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data11");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data12");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data13");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data14");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data15");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data_sync1");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data_sync2");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data_sync3");
                com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "data_sync4");
                if (z) {
                    com.asus.privatecontacts.b.c.a(cursor, this.f2994a, "_id");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static c a(Cursor cursor) {
        return (cursor == null || cursor.getCount() == 0) ? null : new c(cursor, true);
    }
}
