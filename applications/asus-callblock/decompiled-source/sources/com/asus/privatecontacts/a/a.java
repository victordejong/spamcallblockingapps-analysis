package com.asus.privatecontacts.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.SpeedDialList;
import com.asus.privatecontacts.b.c;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f2989a;

    public a(Cursor cursor) {
        if (cursor != null) {
            try {
                this.f2989a = new ContentValues();
                c.a(cursor, this.f2989a, "number");
                c.a(cursor, this.f2989a, "presentation");
                c.a(cursor, this.f2989a, "date");
                c.a(cursor, this.f2989a, "duration");
                c.a(cursor, this.f2989a, "type");
                c.a(cursor, this.f2989a, "new");
                c.a(cursor, this.f2989a, ContactDetailCallogActivity.EXTRA_NAME);
                c.a(cursor, this.f2989a, "numbertype");
                c.a(cursor, this.f2989a, "numberlabel");
                c.a(cursor, this.f2989a, "countryiso");
                c.a(cursor, this.f2989a, "voicemail_uri");
                c.a(cursor, this.f2989a, "is_read");
                c.a(cursor, this.f2989a, "geocoded_location");
                c.a(cursor, this.f2989a, PhotoSelectionActivity.LOOKUP_URI);
                c.a(cursor, this.f2989a, "matched_number");
                c.a(cursor, this.f2989a, "normalized_number");
                c.a(cursor, this.f2989a, "photo_id");
                c.a(cursor, this.f2989a, "formatted_number");
                c.a(cursor, this.f2989a, "_data");
                c.a(cursor, this.f2989a, "has_content");
                c.a(cursor, this.f2989a, "mime_type");
                c.a(cursor, this.f2989a, "source_data");
                c.a(cursor, this.f2989a, "source_package");
                c.a(cursor, this.f2989a, "state");
                c.a(cursor, this.f2989a, "block");
                c.a(cursor, this.f2989a, SpeedDialList.Columns.ISSIM);
                c.a(cursor, this.f2989a, "city_id");
                c.a(cursor, this.f2989a, "sim_index");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
