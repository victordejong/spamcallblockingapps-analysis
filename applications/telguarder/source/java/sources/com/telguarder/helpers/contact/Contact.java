package com.telguarder.helpers.contact;

import android.database.Cursor;
import android.net.Uri;
import com.j256.ormlite.field.FieldType;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/contact/Contact.class */
public class Contact {

    /* renamed from: id */
    public String f1301id;
    public String name;
    public String phoneNumber;
    public Uri thumbnailUri;

    public static Contact contactOf(Cursor cursor) {
        Contact contact = new Contact();
        contact.f1301id = cursor.getString(cursor.getColumnIndex("contact_id"));
        contact.name = cursor.getString(cursor.getColumnIndex("display_name"));
        contact.phoneNumber = cursor.getString(cursor.getColumnIndex("data1")).replaceAll("[^0-9]", "");
        contact.thumbnailUri = ContactManager.getInstance().getThumbnailUriIfContactHasPhoto(contact.f1301id, cursor.getString(cursor.getColumnIndex("photo_thumb_uri")));
        return contact;
    }

    public static Contact contactOfDisplayNameLookup(Cursor cursor) {
        Contact contact = new Contact();
        contact.f1301id = cursor.getString(cursor.getColumnIndex(FieldType.FOREIGN_ID_FIELD_SUFFIX));
        contact.name = cursor.getString(cursor.getColumnIndex("display_name"));
        contact.phoneNumber = cursor.getString(cursor.getColumnIndex("data1"));
        return contact;
    }

    public static Contact contactOfEmailLookup(Cursor cursor) {
        Contact contact = new Contact();
        contact.f1301id = cursor.getString(cursor.getColumnIndex("contact_id"));
        contact.name = cursor.getString(cursor.getColumnIndex("display_name"));
        return contact;
    }

    public static Contact contactOfPhoneLookup(Cursor cursor) {
        Contact contact = new Contact();
        contact.f1301id = cursor.getString(cursor.getColumnIndex(FieldType.FOREIGN_ID_FIELD_SUFFIX));
        contact.name = cursor.getString(cursor.getColumnIndex("display_name"));
        contact.phoneNumber = cursor.getString(cursor.getColumnIndex("number")).replaceAll("[^0-9]", "");
        contact.thumbnailUri = ContactManager.getInstance().getThumbnailUriIfContactHasPhoto(contact.f1301id, cursor.getString(cursor.getColumnIndex("photo_thumb_uri")));
        return contact;
    }
}
