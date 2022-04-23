package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.graphics.ColorFilter;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.e.b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.GalleryActivity;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialImagesCard.class */
public class SocialImagesCard extends ContactCard<ViewHolder, ArrayList<Map.Entry<UploadedPhoto, DataSource>>> {
    private static final int MAX_PHOTOS_PER_NETWORK = 8;
    private SocialImagesCardAdapter adapter;
    private final Object photosLock = new Object();
    private final HashMap<SocialImage, ArrayList<String>> photoUrlsByNetId = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage.class */
    public static class SocialImage implements Parcelable {
        public static final Parcelable.Creator<SocialImage> CREATOR = new Parcelable.Creator<SocialImage>() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.SocialImage.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SocialImage createFromParcel(Parcel parcel) {
                return new SocialImage(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SocialImage[] newArray(int i) {
                return new SocialImage[i];
            }
        };
        private int socialId;
        private String url;

        protected SocialImage(Parcel parcel) {
            this.url = parcel.readString();
            this.socialId = parcel.readInt();
        }

        public SocialImage(String str, int i) {
            this.url = str;
            this.socialId = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SocialImage socialImage = (SocialImage) obj;
            return this.socialId == socialImage.socialId && StringUtils.a(this.url, socialImage.getUrl(), true) == 0;
        }

        public int getSocialId() {
            return this.socialId;
        }

        public String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.url;
            return ((str != null ? str.hashCode() : 0) * 31) + this.socialId;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.url);
            parcel.writeInt(this.socialId);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter.class */
    public class SocialImagesCardAdapter extends RecyclerView.a<SocialImagesCardViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        final Object f11793a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<b<String, SocialImage>> f11794b;

        public SocialImagesCardAdapter(ArrayList<b<String, SocialImage>> arrayList) {
            Object obj = new Object();
            this.f11793a = obj;
            synchronized (obj) {
                if (arrayList != null) {
                    this.f11794b = arrayList;
                } else {
                    this.f11794b = new ArrayList<>();
                }
                b();
            }
        }

        private void b() {
            synchronized (this.f11793a) {
                this.f11794b.add(new b<>(null, null));
            }
        }

        static /* synthetic */ void b(SocialImagesCardAdapter socialImagesCardAdapter) {
            synchronized (socialImagesCardAdapter.f11793a) {
                if (CollectionUtils.b(socialImagesCardAdapter.f11794b)) {
                    socialImagesCardAdapter.f11794b.clear();
                    socialImagesCardAdapter.b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isNotEmpty() {
            return this.f11794b.size() > 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int getItemCount() {
            return this.f11794b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public /* synthetic */ void onBindViewHolder(SocialImagesCardViewHolder socialImagesCardViewHolder, int i) {
            final SocialImagesCardViewHolder socialImagesCardViewHolder2 = socialImagesCardViewHolder;
            int adapterPosition = socialImagesCardViewHolder2.getAdapterPosition();
            synchronized (this.f11793a) {
                if (adapterPosition < this.f11794b.size()) {
                    b<String, SocialImage> bVar = this.f11794b.get(adapterPosition);
                    String str = bVar.f1889a;
                    if (StringUtils.b((CharSequence) str)) {
                        socialImagesCardViewHolder2.s.setVisibility(0);
                        socialImagesCardViewHolder2.r.setVisibility(0);
                        socialImagesCardViewHolder2.t.setVisibility(0);
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(socialImagesCardViewHolder2.r, str, SocialImagesCard.this.presentersContainer.getRealContext());
                        glideRequestBuilder.q = true;
                        glideRequestBuilder.d();
                        ImageUtils.a(socialImagesCardViewHolder2.t, RemoteAccountHelper.getSocialBadgeResId(bVar.f1890b.getSocialId()), (ColorFilter) null);
                        socialImagesCardViewHolder2.r.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.SocialImagesCardAdapter.3
                            private List<SocialImage> getSocialImagesList() {
                                ArrayList arrayList = new ArrayList();
                                synchronized (SocialImagesCardAdapter.this.f11793a) {
                                    Iterator it2 = SocialImagesCardAdapter.this.f11794b.iterator();
                                    while (it2.hasNext()) {
                                        b bVar2 = (b) it2.next();
                                        if (bVar2.f1889a != 0) {
                                            arrayList.add(bVar2.f1890b);
                                        }
                                    }
                                }
                                return arrayList;
                            }

                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Social images card clicked");
                                List<SocialImage> socialImagesList = getSocialImagesList();
                                Intent intent = new Intent(SocialImagesCard.this.presentersContainer.getRealContext(), GalleryActivity.class);
                                intent.putExtra("PHOTO_CLICKED_ID", socialImagesCardViewHolder2.getAdapterPosition());
                                intent.putParcelableArrayListExtra("PHOTO_LIST", (ArrayList) socialImagesList);
                                Activities.a(SocialImagesCard.this.presentersContainer.getRealContext(), intent);
                            }
                        });
                        return;
                    }
                    socialImagesCardViewHolder2.s.setVisibility(8);
                    socialImagesCardViewHolder2.r.setVisibility(8);
                    socialImagesCardViewHolder2.t.setVisibility(8);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public /* synthetic */ SocialImagesCardViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SocialImagesCardViewHolder socialImagesCardViewHolder = new SocialImagesCardViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558539, viewGroup, false));
            ViewUtils.a(socialImagesCardViewHolder.s, ThemeUtils.getDrawable(2131232196));
            return socialImagesCardViewHolder;
        }

        public void setItemsData(ArrayList<b<String, SocialImage>> arrayList) {
            synchronized (this.f11793a) {
                this.f11794b.clear();
                this.f11794b.addAll(arrayList);
                b();
            }
            SocialImagesCard.this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.SocialImagesCardAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    SocialImagesCardAdapter.this.notifyDataSetChanged();
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder.class */
    public static class SocialImagesCardViewHolder extends RecyclerView.v {
        public ImageView r;
        public View s;
        public ImageView t;

        public SocialImagesCardViewHolder(View view) {
            super(view);
            this.r = (ImageView) view.findViewById(2131363000);
            this.t = (ImageView) view.findViewById(2131363910);
            this.s = view.findViewById(2131362896);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SocialImagesCard$ViewHolder.class */
    public static class ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        final RecyclerView f11800a;

        private ViewHolder(View view) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363648);
            this.f11800a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
            recyclerView.setNestedScrollingEnabled(false);
        }
    }

    public SocialImagesCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558538);
    }

    private void AddPhoto(final String str, final int i) {
        if (StringUtils.b((CharSequence) str)) {
            synchronized (this.photosLock) {
                ArrayList<String> arrayList = this.photoUrlsByNetId.get(Integer.valueOf(i));
                if (!CollectionUtils.b(arrayList) || !arrayList.contains(str)) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.3
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (StringUtils.b((CharSequence) str)) {
                                SocialImagesCard.this.addPhoto(str, i);
                                SocialImagesCard.this.showCard(false);
                            }
                        }
                    }.execute();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhoto(String str, int i) {
        synchronized (this.photosLock) {
            SocialImage socialImage = new SocialImage(str, i);
            ArrayList<String> arrayList = this.photoUrlsByNetId.get(socialImage);
            ArrayList<String> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>();
                this.photoUrlsByNetId.put(socialImage, arrayList2);
            }
            if (!arrayList2.contains(str)) {
                arrayList2.add(str);
                final SocialImagesCardAdapter socialImagesCardAdapter = this.adapter;
                if (socialImagesCardAdapter != null) {
                    synchronized (socialImagesCardAdapter.f11793a) {
                        int size = socialImagesCardAdapter.f11794b.size() - 1;
                        int i2 = size;
                        if (size < 0) {
                            i2 = 0;
                        }
                        socialImagesCardAdapter.f11794b.add(i2, new b<>(str, new SocialImage(str, i)));
                    }
                    SocialImagesCard.this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.SocialImagesCardAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SocialImagesCardAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            }
        }
    }

    private void clearAllData() {
        synchronized (this.photosLock) {
            this.photoUrlsByNetId.clear();
        }
        SocialImagesCardAdapter socialImagesCardAdapter = this.adapter;
        if (socialImagesCardAdapter != null && socialImagesCardAdapter.isNotEmpty()) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.2
                @Override // java.lang.Runnable
                public void run() {
                    SocialImagesCardAdapter.b(SocialImagesCard.this.adapter);
                    SocialImagesCard.this.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.uploadedPhotosUrl, ContactField.negatives, ContactField.newContact);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 90;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(ViewHolder viewHolder) {
        ArrayList<b<String, SocialImage>> arrayList = new ArrayList<>();
        synchronized (this.photosLock) {
            for (Map.Entry<SocialImage, ArrayList<String>> entry : this.photoUrlsByNetId.entrySet()) {
                SocialImage key = entry.getKey();
                ArrayList<String> value = entry.getValue();
                if (CollectionUtils.b(value)) {
                    Iterator<String> it2 = value.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new b<>(it2.next(), key));
                    }
                }
            }
        }
        SocialImagesCardAdapter socialImagesCardAdapter = this.adapter;
        if (socialImagesCardAdapter == null) {
            this.adapter = new SocialImagesCardAdapter(arrayList);
        } else {
            socialImagesCardAdapter.setItemsData(arrayList);
        }
        viewHolder.f11800a.setAdapter(this.adapter);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact) || set.contains(ContactField.negatives)) {
            clearAllData();
        }
        if (this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
        } else {
            updateCardData(contactData.getUploadedPhotosUrl(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new ViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        SocialImagesCardAdapter socialImagesCardAdapter = this.adapter;
        if (socialImagesCardAdapter != null) {
            socialImagesCardAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(ArrayList<Map.Entry<UploadedPhoto, DataSource>> arrayList, boolean z) {
        HashMap hashMap = new HashMap();
        boolean z2 = true;
        if (CollectionUtils.b(arrayList)) {
            ArrayList<Map.Entry> arrayList2 = new ArrayList(arrayList);
            Collections.sort(arrayList2, new Comparator<Map.Entry<UploadedPhoto, DataSource>>() { // from class: com.callapp.contacts.activity.contact.cards.SocialImagesCard.1
                @Override // java.util.Comparator
                public /* synthetic */ int compare(Map.Entry<UploadedPhoto, DataSource> entry, Map.Entry<UploadedPhoto, DataSource> entry2) {
                    return entry2.getKey().getCreatedTime().before(entry.getKey().getCreatedTime()) ? -1 : 1;
                }
            });
            for (Map.Entry entry : arrayList2) {
                Integer num = (Integer) hashMap.get(entry.getValue());
                Integer num2 = num;
                if (num == null) {
                    num2 = 0;
                }
                if (num2.intValue() != 8) {
                    hashMap.put(entry.getValue(), Integer.valueOf(num2.intValue() + 1));
                    AddPhoto(((UploadedPhoto) entry.getKey()).getUrl(), ((DataSource) entry.getValue()).dbCode);
                }
            }
        } else {
            z2 = false;
        }
        if (!z2) {
            hideCard();
        }
    }
}
