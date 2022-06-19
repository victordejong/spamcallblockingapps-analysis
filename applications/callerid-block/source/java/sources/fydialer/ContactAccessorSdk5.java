package fydialer;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import com.callerid.block.bean.EZBlackList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:fydialer/ContactAccessorSdk5.class */
public final class ContactAccessorSdk5 extends ContactAccessor {
    private static final String PEOPLE_SORT = "display_name COLLATE LOCALIZED ASC";
    private static final String PRIMARY_PHONE_QUERY = "contact_id = ?";
    private static final String peopleSql = "(UPPER(display_name) GLOB ? OR UPPER(display_name) GLOB ? OR REPLACE(data1,'-', '') GLOB ?)";
    private static final String upName = "UPPER(display_name)";
    final MyContactSplit myContactSplit = new MyContactSplit();
    ContentResolver myContentResolver;
    private static final String PHONE_QUERY_SORT = "is_super_primary";
    private static final String[] PHONE_PROJECTION = {EZBlackList.f4115ID, "data1", PHONE_QUERY_SORT};
    private static final String[] PEOPLE_PHONE_PROJECTION = {EZBlackList.f4115ID, "lookup", "display_name", "data1", "data2", "data3", "photo_id"};

    /* loaded from: classes2-dex2jar.jar:fydialer/ContactAccessorSdk5$MyContactSplit.class */
    class MyContactSplit implements IContactSplit {
        MyContactSplit() {
            ContactAccessorSdk5.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r1v1 */
        @Override // fydialer.IContactSplit
        public Uri getCallUri(Uri uri) {
            ?? r12;
            ?? r16 = true;
            Cursor query = ContactAccessorSdk5.this.myContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, ContactAccessorSdk5.PHONE_PROJECTION, ContactAccessorSdk5.PRIMARY_PHONE_QUERY, new String[]{Long.toString(ContentUris.parseId(uri))}, ContactAccessorSdk5.PHONE_QUERY_SORT);
            try {
                if (!query.moveToFirst() || (query.getInt(2) == 0 && !query.isLast())) {
                    r12 = false;
                    r16 = false;
                } else {
                    r12 = query.getLong(0);
                }
                query.close();
                if (r16 != true) {
                    return null;
                }
                return ContentUris.withAppendedId(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, r12 == true ? 1L : 0L);
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }

        @Override // fydialer.IContactSplit
        public Uri getContactUri(Uri uri) {
            return uri;
        }

        @Override // fydialer.IContactSplit
        public String getDisplayName(Cursor cursor) {
            return cursor.getString(2);
        }

        @Override // fydialer.IContactSplit
        public Uri getLookupUri(Cursor cursor) {
            return ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
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
        intent.setData(ContactsContract.Contacts.CONTENT_URI);
        return intent;
    }

    @Override // fydialer.ContactAccessor
    public Intent getFavouritesIntent() {
        return null;
    }

    @Override // fydialer.ContactAccessor
    public Cursor recalculate(String str, boolean z) {
        String[] strArr;
        if (z) {
            strArr = new String[]{str + "*", "*[ ]" + str + "*", "*" + str + "*"};
        } else {
            strArr = new String[]{str + "*", "*[ ]" + str + "*", str + "*"};
        }
        return this.myContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, PEOPLE_PHONE_PROJECTION, peopleSql, strArr, PEOPLE_SORT);
    }

    @Override // fydialer.ContactAccessor
    public void setContentResolver(ContentResolver contentResolver) {
        this.myContentResolver = contentResolver;
    }
}
