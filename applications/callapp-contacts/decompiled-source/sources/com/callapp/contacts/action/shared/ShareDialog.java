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

    /* renamed from: a  reason: collision with root package name */
    private final String f10609a;

    /* renamed from: b  reason: collision with root package name */
    private ListAdapter f10610b;

    /* renamed from: c  reason: collision with root package name */
    private ListView f10611c;

    /* renamed from: d  reason: collision with root package name */
    private AdapterView.OnItemClickListener f10612d;

    public ShareDialog(String str) {
        this.f10609a = str;
    }

    private void a(ListAdapter listAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        this.f10610b = listAdapter;
        this.f10612d = onItemClickListener;
        ListView listView = this.f10611c;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            this.f10611c.setOnItemClickListener(onItemClickListener);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131559019, (ViewGroup) null);
        setupTextViewMember(inflate, this.f10609a, 2131364421);
        this.f10611c = (ListView) inflate.findViewById(2131363206);
        a(this.f10610b, this.f10612d);
        this.f10611c.setDivider(null);
        return inflate;
    }

    public void setAdapter(ListAdapter listAdapter) {
        a(listAdapter, this.f10612d);
    }
}
