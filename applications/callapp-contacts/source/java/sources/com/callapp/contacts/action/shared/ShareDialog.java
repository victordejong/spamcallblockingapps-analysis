package com.callapp.contacts.action.shared;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareDialog.class */
public class ShareDialog extends DialogPopup {

    /* renamed from: a */
    private final String f19382a;

    /* renamed from: b */
    private ListAdapter f19383b;

    /* renamed from: c */
    private ListView f19384c;

    /* renamed from: d */
    private AdapterView.OnItemClickListener f19385d;

    public ShareDialog(String str) {
        this.f19382a = str;
    }

    /* renamed from: a */
    private void m31805a(ListAdapter listAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        this.f19383b = listAdapter;
        this.f19385d = onItemClickListener;
        ListView listView = this.f19384c;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            this.f19384c.setOnItemClickListener(onItemClickListener);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131559019, (ViewGroup) null);
        setupTextViewMember(inflate, this.f19382a, 2131364421);
        this.f19384c = (ListView) inflate.findViewById(2131363206);
        m31805a(this.f19383b, this.f19385d);
        this.f19384c.setDivider(null);
        return inflate;
    }

    public void setAdapter(ListAdapter listAdapter) {
        m31805a(listAdapter, this.f19385d);
    }
}
