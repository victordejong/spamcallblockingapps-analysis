package fydialer;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts;
import com.callerid.block.bean.EZBlackList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:fydialer/ContactAccessorSdk3_4.class */
public final class ContactAccessorSdk3_4 extends ContactAccessor {
    private static final String[] PEOPLE_PROJECTION = {EZBlackList.f4115ID, "primary_phone", "type", EZBlackList.NUMBER, "label", EZBlackList.NAME};
    private static final String peopleSql = "(UPPER(name) GLOB ? OR UPPER(name) GLOB ?) AND primary_phone IS NOT NULL";
    private static final String upName = "UPPER(name)";
    final MyContactSplit myContactSplit = new MyContactSplit();
    private ContentResolver myContentResolver;

    /* loaded from: classes2-dex2jar.jar:fydialer/ContactAccessorSdk3_4$MyContactSplit.class */
    class MyContactSplit implements IContactSplit {
        MyContactSplit() {
            ContactAccessorSdk3_4.this = r4;
        }

        @Override // fydialer.IContactSplit
        public Uri getCallUri(Uri uri) {
            return uri;
        }

        @Override // fydialer.IContactSplit
        public Uri getContactUri(Uri uri) {
            return uri;
        }

        @Override // fydialer.IContactSplit
        public String getDisplayName(Cursor cursor) {
            return cursor.getString(5);
        }

        @Override // fydialer.IContactSplit
        public Uri getLookupUri(Cursor cursor) {
            return Uri.withAppendedPath(Contacts.People.CONTENT_URI, cursor.getString(0));
        }
    }

    @Override // fydialer.ContactAccessor
    public Intent addToContacts(String str) {
        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
        intent.putExtra("phone", str);
        intent.setType("vnd.android.cursor.item/person");
        return intent;
    }

    @Override // fydialer.ContactAccessor
    public IContactSplit getContactSplit() {
        return this.myContactSplit;
    }

    @Override // fydialer.ContactAccessor
    public Intent getContactsIntent() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Contacts.CONTENT_URI);
        return intent;
    }

    @Override // fydialer.ContactAccessor
    public Intent getFavouritesIntent() {
        return null;
    }

    @Override // fydialer.ContactAccessor
    public Cursor recalculate(String str, boolean z) {
        return this.myContentResolver.query(Contacts.People.CONTENT_URI, PEOPLE_PROJECTION, peopleSql, new String[]{str + "*", "*[ ]" + str + "*"}, "name ASC");
    }

    @Override // fydialer.ContactAccessor
    public void setContentResolver(ContentResolver contentResolver) {
        this.myContentResolver = contentResolver;
    }
}
