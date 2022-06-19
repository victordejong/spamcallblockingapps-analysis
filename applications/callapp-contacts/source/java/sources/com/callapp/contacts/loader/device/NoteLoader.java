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
    /* renamed from: a */
    public static String m28839a(String[] strArr) {
        return strArr == null ? "" : Joiner.m31918a("@@@").m31917a(strArr);
    }

    /* renamed from: a */
    public static void m28841a(long j, String str, int i) {
        if (j == 0) {
            return;
        }
        String[] m28842a = m28842a(j);
        ArrayList arrayList = m28842a != null ? new ArrayList(Arrays.asList(m28842a)) : new ArrayList();
        if (StringUtils.m26059a((CharSequence) str) && i != -1 && i < arrayList.size()) {
            arrayList.remove(i);
        } else if (i == -1 || i >= arrayList.size()) {
            arrayList.add(str);
        } else {
            arrayList.set(i, str);
        }
        String m28839a = m28839a((String[]) arrayList.toArray(new String[0]));
        ContentUpdate m29005b = ContentQuery.m29010c(ContactsContract.Data.CONTENT_URI).m29005b(Constants.CONTACT_ID_COLUMN, "=", Long.valueOf(j)).m29005b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/note");
        m29005b.f25166a.put(Constants.DATA_COLUMN.f25180a, m28839a);
        if (m29005b.m29039b().intValue() != 0) {
            return;
        }
        long m28340a = ContactUtils.m28340a(j);
        if (m28340a == 0) {
            return;
        }
        ContentInsert m29016b = ContentQuery.m29016b(ContactsContract.Data.CONTENT_URI);
        m29016b.f25156a.put("raw_contact_id", Long.valueOf(m28340a));
        m29016b.m29030a(Constants.MIMETYPE_COLUMN, "vnd.android.cursor.item/note").m29030a(Constants.DATA_COLUMN, m28839a).m29039b();
    }

    /* renamed from: a */
    public static String[] m28842a(long j) {
        if (j == 0) {
            return null;
        }
        return m28840a((String) new ContentQuery(ContactsContract.Data.CONTENT_URI).m29023a(Constants.DATA_COLUMN).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(j)).m29014b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/note").m29014b(Constants.DATA_COLUMN, "!=", (String) null).m29014b(Constants.DATA_COLUMN, "!=", "").m29025a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.loader.device.NoteLoader.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                return (String) rowContext.m29003a(Constants.DATA_COLUMN);
            }
        }, (RowCallback<String>) null));
    }

    /* renamed from: a */
    public static String[] m28840a(String str) {
        if (str == null) {
            return null;
        }
        return str.split("@@@");
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        if (!contactData.isContactInDevice() || !loadContext.f25323b.contains(ContactField.note)) {
            return;
        }
        String[] m28842a = m28842a(contactData.getDeviceId());
        if (Objects.m31915a(m28839a(m28842a), m28839a(contactData.getDeviceData() == null ? null : contactData.getDeviceData().getNote()))) {
            return;
        }
        contactData.getDeviceData().setNote(m28842a);
        contactData.updateNote();
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }
}
