package com.callapp.contacts.activity.contact.cards;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.EditUserProfileActivity;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalRecyclerViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.crop.ChooseImageSourceDialogListener;
import com.callapp.contacts.activity.linkedaccounts.LinkedAccountsActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MySocialProfileCard.class */
public class MySocialProfileCard extends HorizontalCircleImageGalleryCard<HorizontalIconGalleryItemData> {
    private final MySocialProfileData data = new MySocialProfileData(this.presentersContainer.getDefaultContactResource().intValue());
    private final AdapterView.OnItemClickListener itemClickedListener = new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MySocialProfileCard.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AndroidUtils.m27630a(view, 1);
            DataSource dataSourceAtPosition = MySocialProfileCard.this.data.getDataSourceAtPosition(i);
            if (dataSourceAtPosition.equals(DataSource.userMedia)) {
                AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click on add image");
                ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
                if (MySocialProfileCard.this.presentersContainer.getRealContext() != null && (MySocialProfileCard.this.presentersContainer.getRealContext() instanceof EditUserProfileActivity)) {
                    chooseImageSourceDialog.setListener(new ChooseImageSourceDialogListener((Activity) MySocialProfileCard.this.presentersContainer.getRealContext(), ((EditUserProfileActivity) MySocialProfileCard.this.presentersContainer.getRealContext()).getFileUri(), Constants.USER_CORRECTED_INFO));
                    PopupManager.get().m28209a(MySocialProfileCard.this.presentersContainer.getRealContext(), chooseImageSourceDialog);
                }
            }
            if (!RemoteAccountHelper.m29239b(dataSourceAtPosition)) {
                SocialFeedCard.loginAndFireChange(MySocialProfileCard.this.presentersContainer, dataSourceAtPosition);
                return;
            }
            SocialFeedCard.showProfile(MySocialProfileCard.this.presentersContainer, ContactDataUtils.getSocialData(MySocialProfileCard.this.presentersContainer.getContact(), dataSourceAtPosition.dbCode), dataSourceAtPosition);
        }
    };
    private Uri photoUri;
    private File randomFile;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData.class */
    public static class MySocialProfileData {

        /* renamed from: a */
        private final SparseArray<DataSource> f21167a = new SparseArray<>();

        /* renamed from: b */
        private final int f21168b = 2131231417;

        /* renamed from: c */
        private final int f21169c;

        /* renamed from: d */
        private ArrayList<HorizontalIconGalleryItemData> f21170d;

        /* renamed from: e */
        private DataSource f21171e;

        public MySocialProfileData(int i) {
            this.f21169c = i;
        }

        /* renamed from: b */
        private ArrayList<HorizontalIconGalleryItemData> m31172b(Context context, ContactData contactData, boolean z) {
            ArrayList<HorizontalIconGalleryItemData> arrayList;
            HorizontalIconGalleryItemData horizontalIconGalleryItemData;
            synchronized (this.f21167a) {
                this.f21167a.clear();
                arrayList = new ArrayList<>(DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST.size() + 1);
                HorizontalIconGalleryItemData.Builder builder = new HorizontalIconGalleryItemData.Builder();
                builder.f21396a = 2131231426;
                HorizontalIconGalleryItemData m31134a = builder.m31134a();
                this.f21167a.put(arrayList.size(), DataSource.userMedia);
                arrayList.add(m31134a);
                Iterator it2 = DataSource.MY_SOCIAL_PROFILE_CARD_SOURCE.iterator();
                while (it2.hasNext()) {
                    DataSource dataSource = (DataSource) it2.next();
                    int socialBadgeBgColor = RemoteAccountHelper.getSocialBadgeBgColor(dataSource.dbCode);
                    if (RemoteAccountHelper.m29239b(dataSource)) {
                        String contactPhotoUrlOnSocial = ContactDataUtils.getContactPhotoUrlOnSocial(contactData, dataSource.dbCode, true);
                        if (!StringUtils.m26059a((CharSequence) contactPhotoUrlOnSocial) || !z) {
                            HorizontalIconGalleryItemData.Builder builder2 = new HorizontalIconGalleryItemData.Builder();
                            int i = this.f21169c;
                            if (StringUtils.m26045b((CharSequence) contactPhotoUrlOnSocial)) {
                                builder2.f21399d = contactPhotoUrlOnSocial;
                            }
                            builder2.f21396a = i;
                            builder2.f21400e = Integer.valueOf(socialBadgeBgColor);
                            builder2.f21402g = RemoteAccountHelper.getSocialBadgeResId(dataSource.dbCode);
                            builder2.f21398c = ThemeUtils.m27386a(context, 2131100228);
                            builder2.f21404i = socialBadgeBgColor;
                            builder2.f21405j = ImageView.ScaleType.CENTER;
                            builder2.f21406k = dataSource.equals(this.f21171e);
                            horizontalIconGalleryItemData = builder2.m31134a();
                        } else {
                            horizontalIconGalleryItemData = null;
                        }
                    } else {
                        HorizontalIconGalleryItemData.Builder builder3 = new HorizontalIconGalleryItemData.Builder();
                        builder3.f21396a = this.f21168b;
                        builder3.f21397b = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165386);
                        builder3.f21400e = Integer.valueOf(ThemeUtils.m27386a(context, 2131099890));
                        builder3.f21398c = ThemeUtils.m27386a(context, 2131100228);
                        builder3.f21402g = RemoteAccountHelper.getSocialBadgeResId(dataSource.dbCode);
                        builder3.f21403h = -1;
                        builder3.f21404i = socialBadgeBgColor;
                        horizontalIconGalleryItemData = builder3.m31134a();
                    }
                    if (horizontalIconGalleryItemData != null) {
                        this.f21167a.put(arrayList.size(), dataSource);
                        arrayList.add(horizontalIconGalleryItemData);
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public final void m31173a(Context context, ContactData contactData, boolean z) {
            this.f21170d = m31172b(context, contactData, z);
        }

        public ArrayList<HorizontalIconGalleryItemData> getData() {
            return this.f21170d;
        }

        public DataSource getDataSourceAtPosition(int i) {
            DataSource dataSource;
            synchronized (this.f21167a) {
                dataSource = this.f21167a.get(i);
            }
            return dataSource;
        }

        public void setMarkedDataSource(DataSource dataSource) {
            this.f21171e = dataSource;
        }
    }

    public MySocialProfileCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return ViewUtils.m27303a(2131165962, 2131165963);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public String getFooterText() {
        return Activities.getString(2131887281);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887282);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard
    public int getItemLayoutResourceId() {
        return 2131558537;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        EnumSet of = EnumSet.of(ContactField.newContact);
        Iterator it2 = DataSource.MY_SOCIAL_PROFILE_CARD_SOURCE.iterator();
        while (it2.hasNext()) {
            DataSource dataSource = (DataSource) it2.next();
            if (dataSource.socialIdField != null) {
                of.add(dataSource.socialIdField);
            }
            if (dataSource.socialDataField != null) {
                of.add(dataSource.socialDataField);
            }
        }
        return of;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnFooterClickedListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.MySocialProfileCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                Activities.m27683a(MySocialProfileCard.this.presentersContainer.getRealContext(), new Intent(MySocialProfileCard.this.presentersContainer.getRealContext(), LinkedAccountsActivity.class), new ActivityResult() { // from class: com.callapp.contacts.activity.contact.cards.MySocialProfileCard.2.1
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        if (i2 != -1 || intent == null) {
                            return;
                        }
                        List<DataSource> m27627a = AndroidUtils.FieldsChangedHandler.m27627a(DataSource.class, intent);
                        if (!CollectionUtils.m26068b(m27627a)) {
                            return;
                        }
                        for (DataSource dataSource : m27627a) {
                            SocialFeedCard.onSocialStateChanged(MySocialProfileCard.this.presentersContainer, dataSource);
                        }
                        MySocialProfileCard.this.presentersContainer.getContact().resetChosenPicture();
                        MySocialProfileCard.this.presentersContainer.getContact().updatePhoto();
                    }
                });
            }
        };
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public AdapterView.OnItemClickListener getOnItemClickedListener() {
        return this.itemClickedListener;
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
        return 20;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.mo30920a(contactData) || contactData.isVoiceMail()) {
            hideCard();
            return;
        }
        synchronized (this.data) {
            this.data.m31173a(this.presentersContainer.getRealContext(), this.presentersContainer.getContact(), false);
            updateCardData((List) this.data.getData(), false);
        }
        showCard(true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public HorizontalRecyclerViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        HorizontalRecyclerViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup);
        RecyclerView recyclerView = onCreateViewHolder.getRecyclerView();
        ViewUtils.m27289e(recyclerView, (int) ViewUtils.getDimension(2131165964));
        recyclerView.setClipToPadding(false);
        return onCreateViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
