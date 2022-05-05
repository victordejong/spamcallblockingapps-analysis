package com.asus.privatecontacts.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.privatecontacts.b.c;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public ContentValues f2998a;

    public f(Cursor cursor, boolean z) {
        if (cursor != null) {
            try {
                this.f2998a = new ContentValues();
                c.a(cursor, this.f2998a, "account_id");
                c.a(cursor, this.f2998a, "sourceid");
                c.a(cursor, this.f2998a, "raw_contact_is_read_only");
                c.a(cursor, this.f2998a, "version");
                c.a(cursor, this.f2998a, "dirty");
                c.a(cursor, this.f2998a, "deleted");
                c.a(cursor, this.f2998a, "aggregation_mode");
                c.a(cursor, this.f2998a, "aggregation_needed");
                c.a(cursor, this.f2998a, "send_to_voicemail");
                c.a(cursor, this.f2998a, "times_contacted");
                c.a(cursor, this.f2998a, "last_time_contacted");
                c.a(cursor, this.f2998a, "starred");
                c.a(cursor, this.f2998a, "pinned");
                c.a(cursor, this.f2998a, "display_name");
                c.a(cursor, this.f2998a, "display_name_alt");
                c.a(cursor, this.f2998a, "display_name_source");
                c.a(cursor, this.f2998a, "phonetic_name");
                c.a(cursor, this.f2998a, "phonetic_name_style");
                c.a(cursor, this.f2998a, "sort_key");
                c.a(cursor, this.f2998a, "phonebook_label");
                c.a(cursor, this.f2998a, "phonebook_bucket");
                c.a(cursor, this.f2998a, "sort_key_alt");
                c.a(cursor, this.f2998a, "phonebook_label_alt");
                c.a(cursor, this.f2998a, "phonebook_bucket_alt");
                c.a(cursor, this.f2998a, "name_verified");
                c.a(cursor, this.f2998a, "sync1");
                c.a(cursor, this.f2998a, "sync2");
                c.a(cursor, this.f2998a, "sync3");
                c.a(cursor, this.f2998a, "sync4");
                c.a(cursor, this.f2998a, "photo_id");
                c.a(cursor, this.f2998a, "photo_file_id");
                c.a(cursor, this.f2998a, "has_phone_number");
                c.a(cursor, this.f2998a, "lookup");
                c.a(cursor, this.f2998a, "contact_last_updated_timestamp");
                c.a(cursor, this.f2998a, "custom_ringtone");
                c.a(cursor, this.f2998a, SpeedDialList.Columns.ISSIM);
                c.a(cursor, this.f2998a, "order_favorite");
                int columnIndex = cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID);
                if (columnIndex != -1) {
                    this.f2998a.put("original_id", Long.valueOf(cursor.getLong(columnIndex)));
                }
                if (z) {
                    c.a(cursor, this.f2998a, "_id");
                    c.a(cursor, this.f2998a, PhotoSelectionActivity.PHOTO_URI);
                    c.a(cursor, this.f2998a, "photo_thumb_uri");
                }
                c.a(cursor, this.f2998a, SelectAccountActivity.ACCOUNT_TYPE);
                c.a(cursor, this.f2998a, SelectAccountActivity.ACCOUNT_NAME);
                c.a(cursor, this.f2998a, SelectAccountActivity.DATA_SET);
                c.a(cursor, this.f2998a, "account_type_and_data_set");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static f a(Cursor cursor) {
        return (cursor == null || cursor.getCount() == 0) ? null : new f(cursor, true);
    }
}
