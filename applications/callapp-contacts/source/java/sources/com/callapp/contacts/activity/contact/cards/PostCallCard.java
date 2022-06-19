package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.AdapterView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.AddIncognitoContactAction;
import com.callapp.contacts.action.local.BlockCallAction;
import com.callapp.contacts.action.local.CreateContactsAction;
import com.callapp.contacts.action.local.NoteAction;
import com.callapp.contacts.action.local.RemoveIncognitoContactAction;
import com.callapp.contacts.action.local.UnBlockCallAction;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.ImageViewGalleryItemViewHolder;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PostCallGalleryAdapter;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/PostCallCard.class */
public class PostCallCard extends HorizontalGalleryCard<PostCallCardItem> implements CallStateListener {
    private ContactData contactData;
    private boolean isCardAlreadyHide = false;
    private final AdapterView.OnItemClickListener itemClickedListener = new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.contact.cards.PostCallCard.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            PostCallCardItem item = PostCallCard.this.getGalleryAdapter().getItem(i);
            if (item != null) {
                Prefs.f26630hj.set(Boolean.FALSE);
                if (item.getPostCallContactAction() == ContactAction.WHATSAPP) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.WHATSAPP);
                } else if (item.getPostCallContactAction() == ContactAction.SIGNAL) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.SIGNAL);
                } else if (item.getPostCallContactAction() == ContactAction.VIBER) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.VIBER);
                } else if (item.getPostCallContactAction() == ContactAction.TELEGRAM) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.TELEGRAM);
                } else if (item.getPostCallContactAction() == ContactAction.DUO) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.DUO);
                } else if (item.getPostCallContactAction() == ContactAction.ALLO) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.ALLO);
                } else if (item.getPostCallContactAction() == ContactAction.HANGOUTS) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.GOOGLE_PLUS_HANGOUT);
                } else if (item.getPostCallContactAction() == ContactAction.WECHAT) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.WE_CHAT);
                } else if (item.getPostCallContactAction() == ContactAction.SKYPE) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.SKYPE);
                } else if (item.getPostCallContactAction() == ContactAction.SMS_MESSAGE) {
                    PostCallCard.this.handleIntentViaSenderHelper(Singletons.SenderType.SMS);
                } else if (item.getPostCallContactAction() == ContactAction.PVR) {
                    PostCallCard.this.handlePvr();
                } else if (item.getPostCallContactAction() == ContactAction.NOTE) {
                    PostCallCard.this.handleNote();
                } else if (item.getPostCallContactAction() == ContactAction.INCOGNITO) {
                    PostCallCard.this.handleIncognito();
                } else if (item.getPostCallContactAction() == ContactAction.UN_INCOGNITO) {
                    PostCallCard.this.handleUnIncognito();
                } else if (item.getPostCallContactAction() == ContactAction.ADD_CONTACT) {
                    PostCallCard.this.handleAddAccount();
                } else if (item.getPostCallContactAction() == ContactAction.BLOCK) {
                    PostCallCard.this.handleBlock();
                } else if (item.getPostCallContactAction() == ContactAction.UN_BLOCK) {
                    PostCallCard.this.handleUnBlock();
                } else if (item.getPostCallContactAction() != ContactAction.REFER_AND_EARN) {
                } else {
                    PostCallCard.this.handleInvite();
                }
            }
        }
    };

    public PostCallCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558981);
        presentersContainer.addCallStateListener(this);
    }

    public static ContactAction getIM() {
        ImSender imSender;
        ContactAction[] values;
        if (Prefs.f26632hl.get() != ContactAction.UNKNOWN) {
            Singletons.get();
            imSender = Singletons.m28494a(((ContactAction) Prefs.f26632hl.get()).getType());
            if (imSender != null && imSender.isAppInstalled()) {
                return (ContactAction) Prefs.f26632hl.get();
            }
            Prefs.f26632hl.set(ContactAction.UNKNOWN);
        } else {
            imSender = null;
        }
        for (ContactAction contactAction : ContactAction.values()) {
            if (contactAction.getType() != null) {
                Singletons.get();
                imSender = Singletons.m28494a(contactAction.getType());
            }
            if (contactAction.isIM() && imSender != null && imSender.isAppInstalled()) {
                Prefs.f26632hl.set(contactAction);
                return contactAction;
            }
        }
        return null;
    }

    private int getItemLayoutResourceId() {
        return 2131558683;
    }

    public void handleAddAccount() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickPostCallAddToContacts");
        new CreateContactsAction().mo31800b(this.presentersContainer.getRealContext(), this.contactData, null);
    }

    public void handleBlock() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickPostCallBlock");
        new BlockCallAction().mo31800b(this.presentersContainer.getRealContext(), this.contactData, null);
    }

    private void handleHideCard() {
        if (!this.isCardAlreadyHide) {
            hideCard();
            this.isCardAlreadyHide = true;
            this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<ShowToolTipOnPostCard, Boolean>>) ShowToolTipOnPostCard.f21237a, (EventType<ShowToolTipOnPostCard, Boolean>) Boolean.FALSE, false);
        }
    }

    public void handleIncognito() {
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickPostCallPromotedFeature", Constants.INCOGNITO);
        new AddIncognitoContactAction().m31839a(this.presentersContainer.getRealContext(), this.contactData);
    }

    public void handleIntentViaSenderHelper(Singletons.SenderType senderType) {
        if (senderType == Singletons.SenderType.SMS) {
            AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickPostCallSMS");
        } else {
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickPostCall_IM", senderType.name());
        }
        Singletons.get();
        Singletons.m28494a(senderType).openIm(this.presentersContainer.getRealContext(), this.contactData);
    }

    public void handleInvite() {
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickPostCallPromotedFeature", "Invite");
        ShareCallAppDialogFragment.m26304a(this.presentersContainer.getContact(), 0, "pcc").mo19242a(this.presentersContainer.getFragmentManager(), ShareCallAppDialogFragment.getTAG());
    }

    public void handleNote() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickPostCallNote");
        new NoteAction().mo31800b(this.presentersContainer.getRealContext(), this.contactData, null);
    }

    public void handlePvr() {
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickPostCallPromotedFeature", "PVR");
        Prefs.f26556gO.set(Boolean.TRUE);
        String m30047a = PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Icon clicked", m30047a + ",  CD header icon");
        PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
        Intent m30054a = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(this.presentersContainer.getRealContext(), m30047a);
        m30054a.putExtra("EXTRA_CONTACT_ID", this.contactData.getId());
        this.presentersContainer.getRealContext().startActivity(m30054a);
    }

    public void handleUnBlock() {
        new UnBlockCallAction().mo31800b(this.presentersContainer.getRealContext(), this.contactData, null);
    }

    public void handleUnIncognito() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickPostCallNote");
        new RemoveIncognitoContactAction().m31839a(this.presentersContainer.getRealContext(), this.contactData);
    }

    private void setDataForList(CallData callData) {
        this.contactData = PhoneStateManager.get().getContactDataByCallData(callData);
        ArrayList<PostCallCardItem> arrayList = new ArrayList();
        ContactData contactData = this.contactData;
        if (contactData != null) {
            if (contactData.isContactInDevice()) {
                arrayList.add(new PostCallCardItem(ContactAction.SMS_MESSAGE));
                if (getIM() != null) {
                    arrayList.add(new PostCallCardItem(getIM()));
                }
                arrayList.add(new PostCallCardItem(ContactAction.NOTE));
                arrayList.add(new PostCallCardItem(getPromotedItem(this.contactData)));
            } else if (this.contactData.isBusiness()) {
                arrayList.add(new PostCallCardItem(ContactAction.SMS_MESSAGE));
                if (BlockManager.m28746b(this.contactData.getPhone())) {
                    arrayList.add(new PostCallCardItem(ContactAction.UN_BLOCK));
                } else {
                    arrayList.add(new PostCallCardItem(ContactAction.BLOCK));
                }
                if (Prefs.f26633hm.get().intValue() % 20 == 0) {
                    arrayList.add(new PostCallCardItem(getPromotedItem(this.contactData)));
                }
                if (getIM() != null) {
                    arrayList.add(new PostCallCardItem(getIM()));
                }
                Prefs.f26633hm.m28169b(1);
            } else {
                arrayList.add(new PostCallCardItem(ContactAction.SMS_MESSAGE));
                arrayList.add(new PostCallCardItem(ContactAction.ADD_CONTACT));
                if (Prefs.f26634hn.get().intValue() % 20 == 0) {
                    arrayList.add(new PostCallCardItem(getPromotedItem(this.contactData)));
                }
                if (getIM() != null) {
                    arrayList.add(new PostCallCardItem(getIM()));
                }
                Prefs.f26634hn.m28169b(1);
            }
            StringBuilder sb = new StringBuilder("");
            for (PostCallCardItem postCallCardItem : arrayList) {
                sb.append(postCallCardItem.getPostCallContactAction().name());
                sb.append(", ");
            }
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ViewPostCallCard", sb.toString());
            updateCardData((List) arrayList, true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return ThemeUtils.m27386a(CallAppApplication.get(), 2131099786);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165411);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public String getFooterText() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public HorizontalGalleryAdapter<PostCallCardItem, ImageViewGalleryItemViewHolder> getGalleryAdapter() {
        return new PostCallGalleryAdapter(getDataList(), getOnItemClickedListener(), getOnItemLongClickedListener(), getItemLayoutResourceId());
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
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
    public AdapterView.OnItemLongClickListener getOnItemLongClickedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRightIconClickedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRowClickListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 13;
    }

    public ContactAction getPromotedItem(ContactData contactData) {
        ArrayList arrayList = new ArrayList();
        if (CallAppRemoteConfigManager.get().m28698c("ReferAndEarnFeature") && contactData.getGenomeData() != null && !contactData.getGenomeData().isInstalledApp()) {
            arrayList.add(ContactAction.REFER_AND_EARN);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            arrayList.add(ContactAction.PVR);
        }
        if (new IncognitoContactsManager().m28657a(contactData)) {
            arrayList.add(ContactAction.UN_INCOGNITO);
        } else {
            arrayList.add(ContactAction.INCOGNITO);
        }
        return (ContactAction) arrayList.get(new Random().nextInt(arrayList.size()));
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public boolean isScrollable() {
        return false;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (!callData.getState().equals(CallState.POST_CALL) || CallLogUtils.m27556b(callData.getNumber().m26101a())) {
            handleHideCard();
            return;
        }
        setDataForList(callData);
        this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<ShowToolTipOnPostCard, Boolean>>) ShowToolTipOnPostCard.f21237a, (EventType<ShowToolTipOnPostCard, Boolean>) Boolean.TRUE, false);
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.PostCallCard.2
            @Override // java.lang.Runnable
            public void run() {
                PostCallCard.this.isCardAlreadyHide = false;
                PostCallCard.this.showCard(true);
            }
        });
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (CallLogUtils.m27556b(contactData.getPhone().m26101a())) {
            handleHideCard();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        this.presentersContainer.removeCallStateListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
