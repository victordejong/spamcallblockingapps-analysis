package com.callapp.contacts.popup;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.AndroidUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ActionsPopup.class */
public class ActionsPopup extends DialogList {

    /* renamed from: a */
    private final ContactData f26860a;

    /* renamed from: b */
    private final String f26861b;

    /* renamed from: c */
    private final Action.ContextType f26862c;

    /* renamed from: d */
    private final BaseAdapterItemData f26863d;

    public ActionsPopup(String str, ContactData contactData, Action.ContextType contextType, String str2, BaseAdapterItemData baseAdapterItemData) {
        super(str);
        this.f26860a = contactData;
        this.f26861b = str2;
        this.f26862c = contextType;
        this.f26863d = baseAdapterItemData;
    }

    @Override // com.callapp.contacts.popup.contact.DialogList, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.popup.contact.DialogList, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        final List<WidgetMetaData> m28768a = ActionsManager.get().m28768a(this.f26860a, this.f26862c, this.f26863d);
        m27970a(new ActionSelectAdapter(getActivity(), m28768a), new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.popup.ActionsPopup.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AndroidUtils.m27630a(view, 1);
                Action m28765a = ActionsManager.get().m28765a(((WidgetMetaData) m28768a.get(i)).key);
                if (m28765a != null) {
                    m28765a.m31838a(view.getContext(), ActionsPopup.this.f26860a, (ContactData) ActionsPopup.this.f26863d);
                    ActionsPopup.this.dismiss();
                }
            }
        });
        return super.ovViewCreated(layoutInflater, viewGroup);
    }
}
