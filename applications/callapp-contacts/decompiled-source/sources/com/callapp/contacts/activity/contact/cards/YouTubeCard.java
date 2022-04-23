package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.VideoData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.a.b;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard.class */
public class YouTubeCard extends ContactCard<YouTubeLayoutViewHolder, Collection<VideoData>> {
    private YouTubeCardListObject firstItemObject;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject.class */
    public static class YouTubeCardListObject extends DefaultListObject {

        /* renamed from: a  reason: collision with root package name */
        private final String f11813a;
        private final String g;
        private final String h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder.class */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            String f11814a;

            /* renamed from: b  reason: collision with root package name */
            String f11815b;

            /* renamed from: c  reason: collision with root package name */
            String f11816c;

            Builder() {
            }
        }

        private YouTubeCardListObject(b bVar, Builder builder) {
            super(bVar);
            this.f11813a = builder.f11814a;
            this.g = builder.f11815b;
            this.h = builder.f11816c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            YouTubeCardListObject youTubeCardListObject = (YouTubeCardListObject) obj;
            if (!Objects.equals(this.g, youTubeCardListObject.g)) {
                return false;
            }
            return Objects.equals(this.h, youTubeCardListObject.h);
        }

        public int hashCode() {
            String str = this.g;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.h;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder.class */
    public class YouTubeLayoutViewHolder {

        /* renamed from: a  reason: collision with root package name */
        final ImageView f11817a;

        /* renamed from: b  reason: collision with root package name */
        final TextView f11818b;

        private YouTubeLayoutViewHolder(View view) {
            this.f11817a = (ImageView) view.findViewById(2131364580);
            this.f11818b = (TextView) view.findViewById(2131364512);
        }
    }

    public YouTubeCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131559180);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInitialCardDetails(String str, String str2, String str3) {
        YouTubeCardListObject.Builder builder = new YouTubeCardListObject.Builder();
        builder.f11814a = str2;
        builder.f11815b = str;
        builder.f11816c = str3;
        this.firstItemObject = new YouTubeCardListObject(this, builder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void watchYoutubeVideo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:".concat(String.valueOf(str))));
        intent.putExtra("force_fullscreen", true);
        if (Activities.a(intent)) {
            this.presentersContainer.getRealContext().startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=".concat(String.valueOf(str))));
        intent2.putExtra("force_fullscreen", true);
        if (Activities.a(intent2)) {
            this.presentersContainer.getRealContext().startActivity(intent2);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.youTubeVideos);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 160;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(YouTubeLayoutViewHolder youTubeLayoutViewHolder) {
        new GlideUtils.GlideRequestBuilder(youTubeLayoutViewHolder.f11817a, this.firstItemObject.f11813a, YouTubeCard.this.presentersContainer.getRealContext()).d();
        youTubeLayoutViewHolder.f11818b.setText(this.firstItemObject.h);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        updateCardData(contactData.getYouTubeVideos(), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public YouTubeLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        YouTubeLayoutViewHolder youTubeLayoutViewHolder = new YouTubeLayoutViewHolder(viewGroup);
        youTubeLayoutViewHolder.f11817a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.YouTubeCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Video card clicked");
                YouTubeCard youTubeCard = YouTubeCard.this;
                youTubeCard.watchYoutubeVideo(youTubeCard.firstItemObject.g);
            }
        });
        return youTubeLayoutViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Collection<VideoData> collection, boolean z) {
        boolean z2 = false;
        if (CollectionUtils.b(collection)) {
            int nextInt = new Random().nextInt(collection.size());
            Iterator<VideoData> it2 = collection.iterator();
            for (int i = 0; i < nextInt; i++) {
                it2.next();
            }
            final VideoData next = it2.next();
            z2 = false;
            if (StringUtils.b((CharSequence) next.getThumbnailUrl())) {
                new Task() { // from class: com.callapp.contacts.activity.contact.cards.YouTubeCard.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        String thumbnailUrl = next.getThumbnailUrl();
                        if (StringUtils.b((CharSequence) thumbnailUrl)) {
                            YouTubeCard.this.setInitialCardDetails(next.getVideoId(), thumbnailUrl, next.getTitle());
                            YouTubeCard.this.showCard(true);
                        }
                    }
                }.execute();
                z2 = true;
            }
        }
        if (!z2) {
            hideCard();
        }
    }
}
