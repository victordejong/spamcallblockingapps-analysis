package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/MultiSelectEvents.class */
public interface MultiSelectEvents {
    ArrayList<BaseAdapterItemData> getSelectedContacts();

    void setMultiSelectModeEnable(boolean z);
}
