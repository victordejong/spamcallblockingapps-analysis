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
import it.gmariotti.cardslib.library.p510a.C18073b;
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

        /* renamed from: a */
        private final String f21295a;

        /* renamed from: g */
        private final String f21296g;

        /* renamed from: h */
        private final String f21297h;

        /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder.class */
        public static class Builder {

            /* renamed from: a */
            String f21298a;

            /* renamed from: b */
            String f21299b;

            /* renamed from: c */
            String f21300c;

            Builder() {
            }
        }

        private YouTubeCardListObject(C18073b c18073b, Builder builder) {
            super(c18073b);
            this.f21295a = builder.f21298a;
            this.f21296g = builder.f21299b;
            this.f21297h = builder.f21300c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            YouTubeCardListObject youTubeCardListObject = (YouTubeCardListObject) obj;
            if (Objects.equals(this.f21296g, youTubeCardListObject.f21296g)) {
                return Objects.equals(this.f21297h, youTubeCardListObject.f21297h);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f21296g;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f21297h;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder.class */
    public class YouTubeLayoutViewHolder {

        /* renamed from: a */
        final ImageView f21301a;

        /* renamed from: b */
        final TextView f21302b;

        private YouTubeLayoutViewHolder(View view) {
            YouTubeCard.this = r5;
            this.f21301a = (ImageView) view.findViewById(2131364580);
            this.f21302b = (TextView) view.findViewById(2131364512);
        }
    }

    public YouTubeCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131559180);
    }

    public void setInitialCardDetails(String str, String str2, String str3) {
        YouTubeCardListObject.Builder builder = new YouTubeCardListObject.Builder();
        builder.f21298a = str2;
        builder.f21299b = str;
        builder.f21300c = str3;
        this.firstItemObject = new YouTubeCardListObject(this, builder);
    }

    public void watchYoutubeVideo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:".concat(String.valueOf(str))));
        intent.putExtra("force_fullscreen", true);
        if (Activities.m27672a(intent)) {
            this.presentersContainer.getRealContext().startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=".concat(String.valueOf(str))));
        intent2.putExtra("force_fullscreen", true);
        if (!Activities.m27672a(intent2)) {
            return;
        }
        this.presentersContainer.getRealContext().startActivity(intent2);
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

    public void onBindViewHolder(YouTubeLayoutViewHolder youTubeLayoutViewHolder) {
        new GlideUtils.GlideRequestBuilder(youTubeLayoutViewHolder.f21301a, this.firstItemObject.f21295a, YouTubeCard.this.presentersContainer.getRealContext()).m27013d();
        youTubeLayoutViewHolder.f21302b.setText(this.firstItemObject.f21297h);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        updateCardData(contactData.getYouTubeVideos(), false);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public YouTubeLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        YouTubeLayoutViewHolder youTubeLayoutViewHolder = new YouTubeLayoutViewHolder(viewGroup);
        youTubeLayoutViewHolder.f21301a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.YouTubeCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Video card clicked");
                YouTubeCard youTubeCard = YouTubeCard.this;
                youTubeCard.watchYoutubeVideo(youTubeCard.firstItemObject.f21296g);
            }
        });
        return youTubeLayoutViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(Collection<VideoData> collection, boolean z) {
        boolean z2 = false;
        if (CollectionUtils.m26068b(collection)) {
            int nextInt = new Random().nextInt(collection.size());
            Iterator<VideoData> it2 = collection.iterator();
            for (int i = 0; i < nextInt; i++) {
                it2.next();
            }
            final VideoData next = it2.next();
            z2 = false;
            if (StringUtils.m26045b((CharSequence) next.getThumbnailUrl())) {
                new Task() { // from class: com.callapp.contacts.activity.contact.cards.YouTubeCard.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        String thumbnailUrl = next.getThumbnailUrl();
                        if (StringUtils.m26045b((CharSequence) thumbnailUrl)) {
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
