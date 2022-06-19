package com.callapp.contacts.activity.select;

import android.view.View;
import com.callapp.contacts.activity.select.BasePersonAdapter;
import com.callapp.contacts.model.PersonData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/ConfirmPersonAdapter.class */
public class ConfirmPersonAdapter extends BasePersonAdapter {

    /* renamed from: a */
    private LinkButtonOnClickListener f24065a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener.class */
    public interface LinkButtonOnClickListener {
        /* renamed from: a */
        void mo29672a(PersonData personData);
    }

    public ConfirmPersonAdapter(List<PersonData> list, BasePersonAdapter.ItemSelectListener itemSelectListener, LinkButtonOnClickListener linkButtonOnClickListener, int i) {
        super(list, itemSelectListener, i);
        this.f24065a = linkButtonOnClickListener;
    }

    @Override // com.callapp.contacts.activity.select.BasePersonAdapter, com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public final View mo28016a(View view, int i) {
        View mo28016a = super.mo28016a(view, i);
        final BasePersonAdapter.ViewHolder viewHolder = (BasePersonAdapter.ViewHolder) mo28016a.getTag();
        viewHolder.f24063h.setActionRadioButton(new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.ConfirmPersonAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ConfirmPersonAdapter.this.f24065a.mo29672a((PersonData) ConfirmPersonAdapter.this.getItem(viewHolder.f24059d));
            }
        });
        return mo28016a;
    }
}
