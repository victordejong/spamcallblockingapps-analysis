package com.callapp.contacts.manager.cursor;

import android.database.Cursor;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.cursor.CursorWithAggregatedRows;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/ContactsAggregatorCursor.class */
public class ContactsAggregatorCursor extends CursorWithAggregatedRows<MemoryContactItem> {
    public ContactsAggregatorCursor(Cursor cursor, int i) {
        super(cursor, i);
    }

    @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
    /* renamed from: a */
    protected final CursorWithAggregatedRows.PositionAndOffsetPair mo28074a(int i) {
        Cursor wrappedCursor = getWrappedCursor();
        do {
        } while (!wrappedCursor.isAfterLast() && wrappedCursor.moveToNext() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")));
        return new CursorWithAggregatedRows.PositionAndOffsetPair(i, wrappedCursor.getPosition() - i);
    }

    @Override // com.callapp.contacts.manager.cursor.CursorWithAggregatedRows
    /* renamed from: b */
    protected final CursorWithAggregatedRows<MemoryContactItem>.DataAndPosition mo28073b(int i) {
        Cursor wrappedCursor = getWrappedCursor();
        if (!wrappedCursor.moveToPosition(i)) {
            return null;
        }
        MemoryContactItem memoryContactItem = new MemoryContactItem();
        memoryContactItem.displayName = RegexUtils.m31888m(wrappedCursor.getString(wrappedCursor.getColumnIndex("display_name")));
        if (memoryContactItem.displayName != null) {
            memoryContactItem.displayName = memoryContactItem.displayName.toLowerCase();
        }
        memoryContactItem.contactId = wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id"));
        memoryContactItem.lookupKey = wrappedCursor.getString(wrappedCursor.getColumnIndex("lookup"));
        boolean z = true;
        if (wrappedCursor.getInt(wrappedCursor.getColumnIndex("starred")) != 1) {
            z = false;
        }
        memoryContactItem.f22603c = z;
        while (!wrappedCursor.isAfterLast() && wrappedCursor.getLong(wrappedCursor.getColumnIndex("contact_id")) == memoryContactItem.contactId) {
            String string = wrappedCursor.getString(wrappedCursor.getColumnIndex("mimetype"));
            if (StringUtils.m26042b(string, "vnd.android.cursor.item/phone_v2")) {
                String m30360a = T9Helper.m30360a((CharSequence) wrappedCursor.getString(wrappedCursor.getColumnIndex("data1")));
                if (StringUtils.m26045b((CharSequence) m30360a) && !ContactUtils.m28318a(memoryContactItem.normalNumbers, m30360a)) {
                    memoryContactItem.normalNumbers.add(m30360a);
                }
            } else if (StringUtils.m26042b(string, "vnd.android.cursor.item/note")) {
                memoryContactItem.f22605e = wrappedCursor.getString(wrappedCursor.getColumnIndex("data1"));
            }
            wrappedCursor.moveToNext();
        }
        if (CollectionUtils.m26076a(memoryContactItem.normalNumbers)) {
            return new CursorWithAggregatedRows.DataAndPosition(null, i);
        }
        if (StringUtils.m26059a((CharSequence) memoryContactItem.displayName)) {
            memoryContactItem.displayName = PhoneNumberUtils.m26078f(memoryContactItem.normalNumbers.iterator().next());
            memoryContactItem.nameT9 = memoryContactItem.displayName;
        } else if (StringUtils.m26042b(PhoneNumberUtils.m26081c(memoryContactItem.displayName), PhoneNumberUtils.m26081c(memoryContactItem.normalNumbers.iterator().next()))) {
            memoryContactItem.displayName = PhoneNumberUtils.m26078f(memoryContactItem.normalNumbers.iterator().next());
        }
        return new CursorWithAggregatedRows.DataAndPosition(memoryContactItem, i);
    }

    public String getColumnIdName() {
        return "contact_id";
    }
}
