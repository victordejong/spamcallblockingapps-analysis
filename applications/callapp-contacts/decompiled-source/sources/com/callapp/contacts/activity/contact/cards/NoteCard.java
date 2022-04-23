package com.callapp.contacts.activity.contact.cards;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.AddNoteActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/NoteCard.class */
public class NoteCard extends SimpleExpandableCard implements View.OnClickListener {
    public static final int NOTE_REQUEST_CODE = 100;
    private TextView footerText;

    public NoteCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editOrAddNote(String str, int i) {
        ContactData contact = getPresentersContainer().getContact();
        if (contact != null) {
            String id = contact.getId();
            Intent intent = new Intent(getContext(), AddNoteActivity.class);
            intent.putExtra(Constants.EXTRA_CONTACT_ID, id);
            intent.putExtra("position", i);
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            intent.putExtra("note", str2);
            Activities.a((Activity) getContext(), intent, 100);
        }
    }

    private List refreshListData(List<String> list) {
        ArrayList arrayList = new ArrayList();
        new SimpleCardListObject.Builder();
        for (final int i = 0; i < list.size(); i++) {
            final String str = list.get(i);
            SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
            SimpleCardListObject.Builder a2 = builder.a(2131231795);
            a2.j = 2131100140;
            a2.f = 2131100140;
            a2.w = 0;
            a2.f11916b = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.NoteCard.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Notes card clicked", "Add or edit note");
                    AndroidUtils.a(view, 1);
                    NoteCard.this.editOrAddNote(str, i);
                }
            };
            if (StringUtils.b((CharSequence) str)) {
                builder.f11918d = str;
            }
            arrayList.add(builder.a(this));
        }
        return arrayList;
    }

    private void updateDataFromContact(ContactData contactData) {
        String[] note = contactData.getNote();
        if (CollectionUtils.b(note)) {
            updateCardData(refreshListData(Arrays.asList(note)));
        } else {
            updateCardData(null);
        }
        showCard(true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887326);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.note, ContactField.deviceId);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 95;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public void onBindViewHolder(SimpleLayoutViewHolder simpleLayoutViewHolder) {
        super.onBindViewHolder(simpleLayoutViewHolder);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AndroidUtils.a(view, 1);
        editOrAddNote("", -1);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (contactData.isVoiceMail() || !contactData.isContactInDevice()) {
            hideCard();
        } else {
            updateDataFromContact(contactData);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        View showOuterFooter = showOuterFooter(2131558947);
        if (showOuterFooter != null) {
            showOuterFooter.setOnClickListener(this);
            this.footerText = (TextView) showOuterFooter.findViewById(2131363428);
            showOuterFooter.findViewById(2131363427);
            this.footerText.setText(Activities.getString(2131887323));
            this.footerText.setTextColor(ThemeUtils.getColor(2131100140));
        }
        return super.onCreateViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        TextView textView = this.footerText;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean shouldHideCardOnThemeChange() {
        return false;
    }
}
