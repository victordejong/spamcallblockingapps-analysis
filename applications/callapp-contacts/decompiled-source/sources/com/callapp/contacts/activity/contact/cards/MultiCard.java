package com.callapp.contacts.activity.contact.cards;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import com.callapp.framework.util.CollectionUtils;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.i;
import it.gmariotti.cardslib.library.recyclerview.a.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MultiCard.class */
public class MultiCard extends ContactCard<MultiCardsViewHolder, ContactCard> implements MultiCardContainer<Object> {
    private static final AtomicInteger saltCounter = new AtomicInteger(1);
    private View bottomLayout;
    private final int cardPriority;
    private String cardTitle;
    private TextView expandToggle;
    private boolean isExpended;
    private boolean isFooterLayoutVisible;
    private final int MAX_NUMBER_OF_CARDS = 2;
    private List<ContactCard> extraCardsToAdd = new ArrayList();
    private final int salt = saltCounter.incrementAndGet();
    private CardArrayRecyclerViewAdapterWithPriority cardArrayAdapter = new CardArrayRecyclerViewAdapterWithPriority(getPresentersContainer().getRealContext(), new ArrayList(), new CardArrayRecyclerViewAdapterWithPriority.CardEventsListener() { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.3
        @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
        public final void a() {
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
        public final void b() {
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder.class */
    public class MultiCardsViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private final CardRecyclerView f11670b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f11671c;

        /* renamed from: d  reason: collision with root package name */
        private final View f11672d;

        public MultiCardsViewHolder(View view) {
            this.f11670b = (CardRecyclerView) view.findViewById(2131362293);
            this.f11671c = (TextView) view.findViewById(2131362765);
            this.f11672d = view.findViewById(2131362124);
        }
    }

    public MultiCard(PresentersContainer presentersContainer, String str, int i) {
        super(presentersContainer, 2131558719);
        this.cardTitle = str;
        this.cardPriority = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initFooter(ContactCard contactCard) {
        if (contactCard.showExpendFooter()) {
            View view = this.bottomLayout;
            if (view != null) {
                view.setVisibility(0);
                setToggleText();
            }
            this.isFooterLayoutVisible = true;
        }
        return this.isFooterLayoutVisible;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetFooter() {
        View view = this.bottomLayout;
        if (view != null) {
            view.setVisibility(8);
            this.isExpended = false;
            this.isFooterLayoutVisible = false;
            setToggleText();
        }
    }

    private void setToggleText() {
        if (this.expandToggle != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.5
                @Override // java.lang.Runnable
                public void run() {
                    MultiCard.this.expandToggle.setText(Activities.getString(MultiCard.this.isExpended ? 2131887697 : 2131887698));
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean addToMultiCard(final ContactCard contactCard) {
        if (this.cardArrayAdapter.a((b) contactCard)) {
            return false;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.2
            @Override // java.lang.Runnable
            public void run() {
                if (!MultiCard.this.cardArrayAdapter.a((b) contactCard)) {
                    MultiCard.this.cardArrayAdapter.a(contactCard);
                    MultiCard.this.showCard(true);
                    MultiCard.this.initFooter(contactCard);
                    contactCard.doCollapse();
                    if (!MultiCard.this.isExpended && MultiCard.this.getItemCount() > 2) {
                        for (int i = 0; i < MultiCard.this.cardArrayAdapter.getItemCount(); i++) {
                            ContactCard contactCard2 = (ContactCard) MultiCard.this.cardArrayAdapter.getItem(i);
                            if (!CollectionUtils.a(MultiCard.this.extraCardsToAdd, contactCard2) && contactCard2.hideWhenExceedMaxCards()) {
                                MultiCard.this.extraCardsToAdd.add(contactCard2);
                            }
                        }
                    }
                }
            }
        });
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public Object getData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public i getHeader() {
        return new i(this.mContext, 2131558929);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return this.cardTitle;
    }

    public int getItemCount() {
        return this.cardArrayAdapter.getItemCount();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.cardPriority;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getSalt() {
        return this.salt;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isAllowedExpandAnimation() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean isInExpandMode() {
        return false;
    }

    public /* synthetic */ void lambda$onCreateViewHolder$0$MultiCard(View view) {
        this.isExpended = !this.isExpended;
        if (CollectionUtils.b(this.extraCardsToAdd)) {
            for (ContactCard contactCard : this.extraCardsToAdd) {
                contactCard.onMultiCardExpended(this.isExpended);
            }
            return;
        }
        for (int i = 0; i < this.cardArrayAdapter.getItemCount(); i++) {
            ((ContactCard) this.cardArrayAdapter.getItem(i)).onMultiCardExpended(this.isExpended);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void onAnimatorEndListener() {
        setToggleText();
        if (!this.isExpended) {
            this.presentersContainer.scrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(MultiCardsViewHolder multiCardsViewHolder) {
        if (this.cardArrayAdapter != null) {
            for (int i = 0; i < this.cardArrayAdapter.getItemCount() && !initFooter((ContactCard) this.cardArrayAdapter.getItem(i)); i++) {
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            this.extraCardsToAdd.clear();
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.6
                @Override // java.lang.Runnable
                public void run() {
                    MultiCard.this.resetFooter();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public MultiCardsViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        MultiCardsViewHolder multiCardsViewHolder = new MultiCardsViewHolder(viewGroup);
        CardRecyclerView cardRecyclerView = multiCardsViewHolder.f11670b;
        this.bottomLayout = multiCardsViewHolder.f11672d;
        this.expandToggle = multiCardsViewHolder.f11671c;
        this.bottomLayout.setVisibility(this.isFooterLayoutVisible ? 0 : 8);
        setToggleText();
        onThemeChangedInner();
        this.expandToggle.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$MultiCard$P1advJBBd8eS6RtCzrLE9Nk9nws
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiCard.this.lambda$onCreateViewHolder$0$MultiCard(view);
            }
        });
        cardRecyclerView.setLayoutManager(new LinearLayoutManager(getPresentersContainer().getRealContext()) { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
            public final void a(final RecyclerView recyclerView, RecyclerView.s sVar, int i) {
                g gVar = new g(recyclerView.getContext()) { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.4.1
                    @Override // androidx.recyclerview.widget.g
                    public final float a(DisplayMetrics displayMetrics) {
                        return 250.0f / displayMetrics.densityDpi;
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.r
                    public final PointF c(int i2) {
                        return ((LinearLayoutManager) recyclerView.getLayoutManager()).c(i2);
                    }

                    @Override // androidx.recyclerview.widget.g
                    public int getVerticalSnapPreference() {
                        return -1;
                    }
                };
                gVar.setTargetPosition(i);
                a(gVar);
            }
        });
        cardRecyclerView.setItemAnimator(null);
        cardRecyclerView.setAdapter((a) this.cardArrayAdapter);
        cardRecyclerView.setNestedScrollingEnabled(false);
        return multiCardsViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        View view = this.bottomLayout;
        if (view != null) {
            view.findViewById(2131362613).setBackgroundColor(this.cardDividerColor);
        }
        TextView textView = this.expandToggle;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099784));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void removeFromMultiCard(final ContactCard contactCard) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.MultiCard.1
            @Override // java.lang.Runnable
            public void run() {
                if (MultiCard.this.cardArrayAdapter.a((b) contactCard)) {
                    MultiCard.this.cardArrayAdapter.b(contactCard);
                }
                if (MultiCard.this.cardArrayAdapter.getItemCount() == 0) {
                    MultiCard.this.hideCard();
                }
                if (MultiCard.this.cardArrayAdapter.getItemCount() == 1) {
                    MultiCard.this.isFooterLayoutVisible = false;
                    ViewUtils.a(MultiCard.this.bottomLayout, false);
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public /* synthetic */ boolean shouldShowCardBackground() {
        return MultiCardContainer._CC.$default$shouldShowCardBackground(this);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(ContactCard contactCard, boolean z) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void updateHeaderTitle(String str) {
        this.cardTitle = str;
    }
}
