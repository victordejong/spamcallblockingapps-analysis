package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.selection.PersonSelectPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import it.gmariotti.cardslib.library.a.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MutualFriendsCard.class */
public class MutualFriendsCard extends HorizontalCircleImageGalleryCard<PersonData> {
    private final AdapterView.OnItemClickListener itemClickedListener = new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MutualFriendsCard.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MutualFriendsCard.this.goToMutualFriendsActivity(view.getContext());
        }
    };
    private final View.OnClickListener rightIconClickedListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MutualFriendsCard.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MutualFriendsCard.this.goToMutualFriendsActivity(view.getContext());
        }
    };
    private String title;

    public MutualFriendsCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
        setOnClickListener(new b.a() { // from class: com.callapp.contacts.activity.contact.cards.MutualFriendsCard.1
            @Override // it.gmariotti.cardslib.library.a.b.a
            public final void a(View view) {
                MutualFriendsCard.this.goToMutualFriendsActivity(view.getContext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToMutualFriendsActivity(Context context) {
        ArrayList arrayList = new ArrayList(this.presentersContainer.getContact().getMutualFriends());
        Collections.sort(arrayList, new Comparator<PersonData>() { // from class: com.callapp.contacts.activity.contact.cards.MutualFriendsCard.4
            @Override // java.util.Comparator
            public /* synthetic */ int compare(PersonData personData, PersonData personData2) {
                return personData.getName().compareTo(personData2.getName());
            }
        });
        PopupManager popupManager = PopupManager.get();
        PersonSelectPopup personSelectPopup = new PersonSelectPopup(arrayList);
        personSelectPopup.f15620c = true;
        popupManager.a(context, personSelectPopup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165961);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public String getFooterText() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return this.title;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.mutualFriends);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnFooterClickedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public AdapterView.OnItemClickListener getOnItemClickedListener() {
        return this.itemClickedListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRightIconClickedListener() {
        return this.rightIconClickedListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRowClickListener() {
        return this.rightIconClickedListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return DrawableConstants.CtaButton.WIDTH_DIPS;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public boolean isScrollable() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
            return;
        }
        ArrayList arrayList = new ArrayList(contactData.getMutualFriends());
        this.title = Activities.a(2131887262, Integer.valueOf(arrayList.size()));
        if (CollectionUtils.b(arrayList)) {
            updateCardData((List) arrayList, false);
            setHeaderTitle(this.title);
            showCard(true);
            return;
        }
        hideCard();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
