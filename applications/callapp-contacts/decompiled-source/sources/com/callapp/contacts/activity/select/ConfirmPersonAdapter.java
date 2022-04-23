package com.callapp.contacts.activity.select;

import android.view.View;
import com.callapp.contacts.activity.select.BasePersonAdapter;
import com.callapp.contacts.model.PersonData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/ConfirmPersonAdapter.class */
public class ConfirmPersonAdapter extends BasePersonAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LinkButtonOnClickListener f13559a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener.class */
    public interface LinkButtonOnClickListener {
        void a(PersonData personData);
    }

    public ConfirmPersonAdapter(List<PersonData> list, BasePersonAdapter.ItemSelectListener itemSelectListener, LinkButtonOnClickListener linkButtonOnClickListener, int i) {
        super(list, itemSelectListener, i);
        this.f13559a = linkButtonOnClickListener;
    }

    @Override // com.callapp.contacts.activity.select.BasePersonAdapter, com.callapp.contacts.activity.base.BaseArrayAdapter
    public final View a(View view, int i) {
        View a2 = super.a(view, i);
        final BasePersonAdapter.ViewHolder viewHolder = (BasePersonAdapter.ViewHolder) a2.getTag();
        viewHolder.h.setActionRadioButton(new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.ConfirmPersonAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ConfirmPersonAdapter.this.f13559a.a((PersonData) ConfirmPersonAdapter.this.getItem(viewHolder.f13558d));
            }
        });
        return a2;
    }
}
