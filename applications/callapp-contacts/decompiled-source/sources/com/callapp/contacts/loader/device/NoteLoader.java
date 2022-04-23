package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.common.util.Joiner;
import com.callapp.common.util.Objects;
import com.callapp.contacts.framework.dao.ContentInsert;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.ContentUpdate;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/NoteLoader.class */
public class NoteLoader extends SimpleContactLoader {
    public static String a(String[] strArr) {
        return strArr == null ? "" : Joiner.a("@@@").a(strArr);
    }

    public static void a(long j, String str, int i) {
        if (j != 0) {
            String[] a2 = a(j);
            ArrayList arrayList = a2 != null ? new ArrayList(Arrays.asList(a2)) : new ArrayList();
            if (StringUtils.a((CharSequence) str) && i != -1 && i < arrayList.size()) {
                arrayList.remove(i);
            } else if (i == -1 || i >= arrayList.size()) {
                arrayList.add(str);
            } else {
                arrayList.set(i, str);
            }
            String a3 = a((String[]) arrayList.toArray(new String[0]));
            ContentUpdate b2 = ContentQuery.c(ContactsContract.Data.CONTENT_URI).b(Constants.CONTACT_ID_COLUMN, "=", Long.valueOf(j)).b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/note");
            b2.f14393a.put(Constants.DATA_COLUMN.f14402a, a3);
            if (b2.b().intValue() == 0) {
                long a4 = ContactUtils.a(j);
                if (a4 != 0) {
                    ContentInsert b3 = ContentQuery.b(ContactsContract.Data.CONTENT_URI);
                    b3.f14386a.put("raw_contact_id", Long.valueOf(a4));
                    b3.a(Constants.MIMETYPE_COLUMN, "vnd.android.cursor.item/note").a(Constants.DATA_COLUMN, a3).b();
                }
            }
        }
    }

    public static String[] a(long j) {
        if (j == 0) {
            return null;
        }
        return a((String) new ContentQuery(ContactsContract.Data.CONTENT_URI).a(Constants.DATA_COLUMN).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/note").b(Constants.DATA_COLUMN, "!=", (String) null).b(Constants.DATA_COLUMN, "!=", "").a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.loader.device.NoteLoader.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.a(Constants.DATA_COLUMN);
            }
        }, (RowCallback<String>) null));
    }

    public static String[] a(String str) {
        if (str == null) {
            return null;
        }
        return str.split("@@@");
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        if (contactData.isContactInDevice() && loadContext.f14536b.contains(ContactField.note)) {
            String[] a2 = a(contactData.getDeviceId());
            if (!Objects.a(a(a2), a(contactData.getDeviceData() == null ? null : contactData.getDeviceData().getNote()))) {
                contactData.getDeviceData().setNote(a2);
                contactData.updateNote();
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }
}
