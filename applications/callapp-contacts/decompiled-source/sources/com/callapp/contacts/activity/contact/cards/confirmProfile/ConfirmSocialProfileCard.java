package com.callapp.contacts.activity.contact.cards.confirmProfile;

import android.app.Activity;
import android.util.SparseArray;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.activity.contact.cards.SocialFeedCard;
import com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.select.PersonSelectActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.a.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard.class */
public class ConfirmSocialProfileCard extends HorizontalPagerCard<List<ConfirmSocialProfileObject>> implements SocialFeedCard.SocialFeedEvents {
    private final SparseArray<ConfirmSocialProfileObject> socialIdToDataMap = new SparseArray<>();
    private final ConcurrentHashMap<String, Task> urlToImageLoadingTaskMap = new ConcurrentHashMap<>();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject.class */
    public static class ConfirmSocialProfileObject extends DefaultListObject implements Comparable<ConfirmSocialProfileObject> {

        /* renamed from: a  reason: collision with root package name */
        private final DataSource f11836a;
        private String g;
        private final int h;
        private final Integer i;
        private final int j;
        private final ConfirmSingleProfileFragment.ConfirmOrDismissClicked k;
        private final int l;
        private String m;

        public ConfirmSocialProfileObject(b bVar, String str, DataSource dataSource, String str2, int i, Integer num, int i2, int i3, ConfirmSingleProfileFragment.ConfirmOrDismissClicked confirmOrDismissClicked) {
            super(bVar);
            this.m = str;
            this.f11836a = dataSource;
            this.g = str2;
            this.h = i;
            this.i = num;
            this.j = i2;
            this.k = confirmOrDismissClicked;
            this.l = i3;
        }

        private static int a(DataSource dataSource) {
            int i = dataSource.dbCode;
            if (i == 1) {
                return 10;
            }
            if (i == 4) {
                return 40;
            }
            if (i == 5) {
                return 30;
            }
            if (i == 6) {
                return 70;
            }
            if (i == 7) {
                return 50;
            }
            if (i != 9) {
                return i != 10 ? Integer.MAX_VALUE : 20;
            }
            return 60;
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ConfirmSocialProfileObject confirmSocialProfileObject) {
            return a(this.f11836a) - a(confirmSocialProfileObject.f11836a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ConfirmSocialProfileObject confirmSocialProfileObject = (ConfirmSocialProfileObject) obj;
            if (this.j != confirmSocialProfileObject.j || this.l != confirmSocialProfileObject.l || !Objects.equals(this.m, confirmSocialProfileObject.m) || this.f11836a != confirmSocialProfileObject.f11836a) {
                return false;
            }
            int i = this.h;
            if (i != 0) {
                if (i != confirmSocialProfileObject.h) {
                    return false;
                }
            } else if (confirmSocialProfileObject.h != 0) {
                return false;
            }
            return Objects.equals(this.i, confirmSocialProfileObject.i) && Objects.equals(this.k, confirmSocialProfileObject.k) && !Objects.equals(this.g, confirmSocialProfileObject.g);
        }

        public int getBgColor() {
            return this.l;
        }

        public ConfirmSingleProfileFragment.ConfirmOrDismissClicked getClickListener() {
            return this.k;
        }

        public int getDefaultPhotoImage() {
            return this.h;
        }

        public Integer getDefaultPhotoImageTintColor() {
            return this.i;
        }

        public String getName() {
            return this.m;
        }

        public String getPhotoUrl() {
            return this.g;
        }

        public int getSocialId() {
            return this.j;
        }

        public int hashCode() {
            String str = this.m;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            DataSource dataSource = this.f11836a;
            int hashCode2 = dataSource != null ? dataSource.hashCode() : 0;
            String str2 = this.g;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            Integer num = this.i;
            int hashCode4 = num != null ? num.hashCode() : 0;
            int i2 = this.j;
            ConfirmSingleProfileFragment.ConfirmOrDismissClicked confirmOrDismissClicked = this.k;
            if (confirmOrDismissClicked != null) {
                i = confirmOrDismissClicked.hashCode();
            }
            return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i) * 31) + this.l;
        }

        public void setName(String str) {
            this.m = str;
        }

        public void setPhotoUrl(String str) {
            this.g = str;
        }
    }

    public ConfirmSocialProfileCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LoadAndAddPhotoToSocial(int i, String str) {
        if (!Singletons.get().getRemoteAccountHelper(i).a(str) && StringUtils.b((CharSequence) str)) {
            synchronized (this.socialIdToDataMap) {
                ConfirmSocialProfileObject confirmSocialProfileObject = this.socialIdToDataMap.get(i);
                if (confirmSocialProfileObject != null) {
                    confirmSocialProfileObject.setPhotoUrl(str);
                    updateCardData();
                }
            }
        }
    }

    private ArrayList<ConfirmSocialProfileObject> getValidToShowItems() {
        ArrayList<ConfirmSocialProfileObject> arrayList = new ArrayList<>();
        synchronized (this.socialIdToDataMap) {
            int size = this.socialIdToDataMap.size();
            for (int i = 0; i < size; i++) {
                ConfirmSocialProfileObject valueAt = this.socialIdToDataMap.valueAt(i);
                if (valueAt != null && StringUtils.b((CharSequence) valueAt.getPhotoUrl())) {
                    arrayList.add(valueAt);
                }
            }
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    private void removeAllDataFromCard() {
        synchronized (this.urlToImageLoadingTaskMap) {
            if (CollectionUtils.b(this.urlToImageLoadingTaskMap)) {
                for (Task task : this.urlToImageLoadingTaskMap.values()) {
                    if (task != null && !task.isCancelled()) {
                        task.cancel();
                    }
                }
                this.urlToImageLoadingTaskMap.clear();
            }
        }
        synchronized (this.socialIdToDataMap) {
            this.socialIdToDataMap.clear();
        }
    }

    private void removeLoadingTask(String str) {
        if (StringUtils.b((CharSequence) str)) {
            synchronized (this.urlToImageLoadingTaskMap) {
                Task task = this.urlToImageLoadingTaskMap.get(str);
                if (task != null) {
                    task.cancel();
                    this.urlToImageLoadingTaskMap.remove(str);
                }
            }
        }
    }

    private void removeSourcesThatAreNoLongerUnsure(List<DataSource> list) {
        boolean z = true;
        if (CollectionUtils.a(list)) {
            removeAllDataFromCard();
        } else {
            synchronized (this.socialIdToDataMap) {
                z = false;
                for (int size = this.socialIdToDataMap.size() - 1; size >= 0; size--) {
                    int i = 0;
                    while (true) {
                        if (i >= list.size()) {
                            i = -1;
                            break;
                        }
                        DataSource dataSource = list.get(i);
                        ConfirmSocialProfileObject valueAt = this.socialIdToDataMap.valueAt(size);
                        if (valueAt != null && dataSource.equals(valueAt.f11836a)) {
                            break;
                        }
                        i++;
                    }
                    if (i >= 0) {
                        list.remove(i);
                    } else {
                        String photoUrl = this.socialIdToDataMap.valueAt(size).getPhotoUrl();
                        this.socialIdToDataMap.removeAt(size);
                        removeLoadingTask(photoUrl);
                        z = true;
                    }
                }
            }
        }
        if (z) {
            updateCardData();
        }
    }

    private void updateCardData() {
        synchronized (this.socialIdToDataMap) {
            ArrayList<ConfirmSocialProfileObject> validToShowItems = getValidToShowItems();
            if (CollectionUtils.b(validToShowItems)) {
                updateCardData((ConfirmSocialProfileCard) validToShowItems, false);
                showCard(true);
            } else {
                hideCard();
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165412);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.fullName);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerCard
    public HorizontalPagerAdapter<ConfirmSocialProfileObject> getNewPageAdapter() {
        return new HorizontalPagerAdapter<>(((FragmentActivity) this.presentersContainer.getRealContext()).getSupportFragmentManager(), ConfirmSingleProfileFragment.class);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 200;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isCardLockedWhenScreenIsLocked() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
        } else if (set.contains(ContactField.fullName)) {
            synchronized (this.socialIdToDataMap) {
                boolean z = false;
                for (int i = 0; i < this.socialIdToDataMap.size(); i++) {
                    ConfirmSocialProfileObject valueAt = this.socialIdToDataMap.valueAt(i);
                    String nameOrNumber = this.presentersContainer.getContact().getNameOrNumber();
                    if (!StringUtils.b((CharSequence) nameOrNumber)) {
                        hideCard();
                    } else if (!nameOrNumber.equals(valueAt.getName())) {
                        valueAt.setName(nameOrNumber);
                        z = true;
                    }
                }
                if (z) {
                    updateCardData();
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        removeAllDataFromCard();
    }

    @Override // com.callapp.contacts.activity.contact.cards.SocialFeedCard.SocialFeedEvents
    public void onUnsureSocialsChanged(List<DataSource> list) {
        if (CollectionUtils.b(list)) {
            for (DataSource dataSource : list) {
                final int i = dataSource.dbCode;
                final String contactPhotoUrlOnSocial = ContactDataUtils.getContactPhotoUrlOnSocial(this.presentersContainer.getContact(), i, false);
                ConfirmSocialProfileObject confirmSocialProfileObject = this.socialIdToDataMap.get(dataSource.dbCode);
                String photoUrl = confirmSocialProfileObject == null ? null : confirmSocialProfileObject.getPhotoUrl();
                if (StringUtils.b((CharSequence) photoUrl)) {
                    if (!photoUrl.equals(contactPhotoUrlOnSocial)) {
                        removeLoadingTask(photoUrl);
                    } else {
                        continue;
                    }
                }
                if (!StringUtils.a((CharSequence) contactPhotoUrlOnSocial)) {
                    ConfirmSocialProfileObject confirmSocialProfileObject2 = new ConfirmSocialProfileObject(this, this.presentersContainer.getContact().getNameOrNumber(), dataSource, contactPhotoUrlOnSocial, 0, this.presentersContainer.getDefaultContactDrawableTintColor(), i, RemoteAccountHelper.getSocialBadgeBgColor(i), new ConfirmSingleProfileFragment.ConfirmOrDismissClicked() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard.1
                        @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
                        public final void a(int i2) {
                            ContactData contact = ConfirmSocialProfileCard.this.presentersContainer.getContact();
                            Singletons.get().getRemoteAccountHelper(i2).a(contact, ContactDataUtils.getSocialNetworkID(contact, i2).getId(), true);
                            FeedbackManager.get().a();
                        }

                        @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
                        public final void b(final int i2) {
                            ContactData contact = ConfirmSocialProfileCard.this.presentersContainer.getContact();
                            SocialDataUtils.onUserDismissingSocial(ConfirmSocialProfileCard.this.presentersContainer.getRealContext(), Integer.valueOf(i2), contact, ContactDataUtils.getSocialNetworkID(contact, i2), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard.1.1
                                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                                public void onClickListener(Activity activity) {
                                    ContactData contact2 = ConfirmSocialProfileCard.this.presentersContainer.getContact();
                                    PersonSelectActivity.a((Activity) ConfirmSocialProfileCard.this.presentersContainer.getRealContext(), contact2, Integer.valueOf(i2), contact2.getFullName(), contact2.getFacebookData() != null ? contact2.getFacebookData().getFqlType() : null);
                                }
                            });
                        }

                        @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
                        public final void c(int i2) {
                            SocialFeedCard.showProfile(ConfirmSocialProfileCard.this.presentersContainer, ContactDataUtils.getSocialData(ConfirmSocialProfileCard.this.presentersContainer.getContact(), i2), DataSource.getDataSource(i2));
                        }
                    });
                    synchronized (this.socialIdToDataMap) {
                        this.socialIdToDataMap.put(dataSource.dbCode, confirmSocialProfileObject2);
                    }
                    Task task = new Task() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            ConfirmSocialProfileCard.this.LoadAndAddPhotoToSocial(i, contactPhotoUrlOnSocial);
                            synchronized (ConfirmSocialProfileCard.this.urlToImageLoadingTaskMap) {
                                ConfirmSocialProfileCard.this.urlToImageLoadingTaskMap.remove(contactPhotoUrlOnSocial);
                            }
                        }
                    };
                    synchronized (this.urlToImageLoadingTaskMap) {
                        this.urlToImageLoadingTaskMap.put(contactPhotoUrlOnSocial, task);
                    }
                    task.execute();
                } else {
                    continue;
                }
            }
        }
        removeSourcesThatAreNoLongerUnsure(list);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
