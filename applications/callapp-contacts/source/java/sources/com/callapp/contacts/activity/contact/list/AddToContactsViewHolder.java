package com.callapp.contacts.activity.contact.list;

import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.contact.list.search.AddEntryItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/AddToContactsViewHolder.class */
public class AddToContactsViewHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    private TextView f22389s;

    public AddToContactsViewHolder(View view) {
        super(view);
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder((ImageView) view.findViewById(2131362181), 2131231408, view.getContext()).m27025a(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        m27025a.f28243i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165385);
        m27025a.f28246l = true;
        m27025a.m27013d();
        TextView textView = (TextView) view.findViewById(2131361982);
        this.f22389s = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
    }

    /* renamed from: a */
    public final void m30698a(final AddEntryItemData addEntryItemData) {
        this.f22389s.setText(PhoneNumberUtils.m26078f(addEntryItemData.getText()));
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.AddToContactsViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Add Contact", Constants.CLICK);
                final String text = addEntryItemData.getText();
                if (PhoneNumberUtils.m26084a(text)) {
                    if (StringUtils.m26059a((CharSequence) text)) {
                        Activities.m27657b(AddToContactsViewHolder.this.itemView.getContext());
                        return;
                    }
                    final DialogList dialogList = new DialogList(Activities.getString(2131886213));
                    dialogList.setDialogType(Popup.DialogType.withInset);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new AdapterText.ItemText(2131886744));
                    arrayList.add(new AdapterText.ItemText(2131886745));
                    AdapterText adapterText = new AdapterText(view.getContext(), 2131558570, arrayList);
                    adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.list.AddToContactsViewHolder.1.1
                        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                        public void onRowClicked(int i) {
                            switch (i) {
                                case 2131886744:
                                    Activities.m27678a(view.getContext(), Constants.EXTRA_PHONE_NUMBER, text);
                                    break;
                                case 2131886745:
                                    Activities.m27681a(view.getContext(), (CharSequence) text);
                                    break;
                            }
                            dialogList.dismiss();
                        }
                    });
                    dialogList.setAdapter(adapterText);
                    PopupManager.get().m28209a(view.getContext(), dialogList);
                }
            }
        });
    }
}
