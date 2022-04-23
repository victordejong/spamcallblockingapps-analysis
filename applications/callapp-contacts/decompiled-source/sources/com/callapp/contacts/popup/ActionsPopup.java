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

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f15304a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15305b;

    /* renamed from: c  reason: collision with root package name */
    private final Action.ContextType f15306c;

    /* renamed from: d  reason: collision with root package name */
    private final BaseAdapterItemData f15307d;

    public ActionsPopup(String str, ContactData contactData, Action.ContextType contextType, String str2, BaseAdapterItemData baseAdapterItemData) {
        super(str);
        this.f15304a = contactData;
        this.f15305b = str2;
        this.f15306c = contextType;
        this.f15307d = baseAdapterItemData;
    }

    @Override // com.callapp.contacts.popup.contact.DialogList, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.popup.contact.DialogList, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        final List<WidgetMetaData> a2 = ActionsManager.get().a(this.f15304a, this.f15306c, this.f15307d);
        a(new ActionSelectAdapter(getActivity(), a2), new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.popup.ActionsPopup.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AndroidUtils.a(view, 1);
                Action a3 = ActionsManager.get().a(((WidgetMetaData) a2.get(i)).key);
                if (a3 != null) {
                    a3.a(view.getContext(), ActionsPopup.this.f15304a, (ContactData) ActionsPopup.this.f15307d);
                    ActionsPopup.this.dismiss();
                }
            }
        });
        return super.ovViewCreated(layoutInflater, viewGroup);
    }
}
