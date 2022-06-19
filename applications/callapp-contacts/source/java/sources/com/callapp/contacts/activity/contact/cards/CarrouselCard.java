package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.C2690g;
import androidx.recyclerview.widget.C2691h;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.mopub.mobileads.InlineVisibilityTracker;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CarrouselCard.class */
public abstract class CarrouselCard<T> extends ContactCard<CarousleCardViewHolder, ContactCard> implements MultiCardContainer<T> {
    private static final AtomicInteger saltCounter = new AtomicInteger(1);
    private static int trackerParameter = 1000;
    private final int cardPriority;
    protected CardRecyclerView cardRecyclerView;
    private String cardTitle;
    private InlineVisibilityTracker carrouselCardVisibilityTracker;
    private CarousleCardViewHolder viewHolder;
    private List<ContactCard> extraCardsToAdd = new ArrayList();
    private boolean isExpended = false;
    protected boolean userInteraction = false;
    private final int salt = saltCounter.incrementAndGet();
    private CardArrayRecyclerViewAdapterWithPriority cardArrayAdapter = new CardArrayRecyclerViewAdapterWithPriority(getPresentersContainer().getRealContext(), new ArrayList(), new CardArrayRecyclerViewAdapterWithPriority.CardEventsListener() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.2
        @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
        /* renamed from: a */
        public final void mo30941a() {
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
        /* renamed from: b */
        public final void mo30940b() {
        }
    });

    /* renamed from: com.callapp.contacts.activity.contact.cards.CarrouselCard$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CarrouselCard$4.class */
    public class C60054 extends LinearLayoutManager {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C60054(Context context, int i, boolean z) {
            super(context, i, z);
            CarrouselCard.this = r6;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
        /* renamed from: a */
        public final void mo10800a(final RecyclerView recyclerView, RecyclerView.C2654s c2654s, final int i) {
            C2690g c2690g = new C2690g(recyclerView.getContext()) { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.4.1
                @Override // androidx.recyclerview.widget.C2690g
                /* renamed from: a */
                public final float mo10799a(DisplayMetrics displayMetrics) {
                    return 250.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.C2690g, androidx.recyclerview.widget.RecyclerView.AbstractC2651r
                /* renamed from: a */
                public final void mo31236a() {
                    super.mo31236a();
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.4.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (i == CarrouselCard.this.cardArrayAdapter.getItemCount()) {
                                CarrouselCard.this.cardRecyclerView.m40449d(0);
                            }
                        }
                    }.schedule(1000);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
                /* renamed from: c */
                public final PointF mo27811c(int i2) {
                    return ((LinearLayoutManager) recyclerView.getLayoutManager()).mo40248c(i2);
                }

                @Override // androidx.recyclerview.widget.C2690g
                public int getHorizontalSnapPreference() {
                    return -1;
                }
            };
            c2690g.setTargetPosition(i);
            m40378a(c2690g);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder.class */
    public class CarousleCardViewHolder {

        /* renamed from: a */
        protected final CardRecyclerView f21040a;

        /* renamed from: b */
        protected final FloatingActionButton f21041b;

        /* renamed from: c */
        protected final LinearLayout f21042c;

        /* renamed from: d */
        protected final TextView f21043d;

        /* renamed from: e */
        protected final View f21044e;

        /* renamed from: f */
        protected final ConstraintLayout f21045f;

        /* renamed from: g */
        protected final ImageView f21046g;

        /* renamed from: h */
        protected final ImageView f21047h;

        /* renamed from: i */
        protected final ImageView f21048i;

        public CarousleCardViewHolder(View view) {
            CarrouselCard.this = r5;
            this.f21040a = (CardRecyclerView) view.findViewById(2131362293);
            this.f21041b = (FloatingActionButton) view.findViewById(2131362764);
            this.f21042c = (LinearLayout) view.findViewById(2131362850);
            this.f21043d = (TextView) view.findViewById(2131362854);
            this.f21045f = (ConstraintLayout) view.findViewById(2131362297);
            this.f21044e = view.findViewById(2131362851);
            this.f21046g = (ImageView) view.findViewById(2131362806);
            this.f21047h = (ImageView) view.findViewById(2131363778);
            this.f21048i = (ImageView) view.findViewById(2131364113);
        }
    }

    public CarrouselCard(PresentersContainer presentersContainer, String str, int i) {
        super(presentersContainer, 2131558691);
        this.cardTitle = str;
        this.cardPriority = i;
    }

    public void drawCard() {
        this.viewHolder.f21041b.setImageDrawable(CallAppApplication.get().getResources().getDrawable(isInExpandMode() ? 2131231648 : 2131231605));
        this.viewHolder.f21041b.setColorFilter(ThemeUtils.getColor(2131099784));
        if (CollectionUtils.m26068b(this.extraCardsToAdd)) {
            for (ContactCard contactCard : this.extraCardsToAdd) {
                contactCard.onMultiCardExpended(isInExpandMode());
            }
        }
        notifyHeightChange();
        showAdIfNeeded();
        handleFooter();
        onThemeChanged();
    }

    public void handlePageIndicators(int i) {
        CarousleCardViewHolder carousleCardViewHolder = this.viewHolder;
        if (carousleCardViewHolder != null) {
            if (i == 0) {
                carousleCardViewHolder.f21046g.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21047h.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21048i.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            } else if (i == 1) {
                carousleCardViewHolder.f21046g.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21047h.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21048i.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            } else {
                carousleCardViewHolder.f21046g.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21047h.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
                this.viewHolder.f21048i.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean addToMultiCard(final ContactCard contactCard) {
        if (this.cardArrayAdapter.m4434a((C18073b) contactCard)) {
            return false;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.1
            @Override // java.lang.Runnable
            public void run() {
                if (!CarrouselCard.this.cardArrayAdapter.m4434a((C18073b) contactCard)) {
                    CarrouselCard.this.extraCardsToAdd.add(contactCard);
                    CarrouselCard.this.cardArrayAdapter.m31148a(contactCard);
                    CarrouselCard.this.showCard(true);
                }
            }
        });
        return true;
    }

    public T getData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public C18092i getHeader() {
        return new C18092i(this.mContext, 2131558929);
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

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public PresentersContainer getPresentersContainer() {
        return super.getPresentersContainer();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.cardPriority;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getSalt() {
        return this.salt;
    }

    protected void handleExpandButton() {
        if (this.viewHolder != null) {
            if (ThemeUtils.isThemeLight()) {
                this.viewHolder.f21041b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
            } else {
                this.viewHolder.f21041b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
            }
            this.viewHolder.f21041b.setImageDrawable(CallAppApplication.get().getResources().getDrawable(isInExpandMode() ? 2131231648 : 2131231605));
            this.viewHolder.f21041b.setColorFilter(ThemeUtils.getColor(2131099784));
            this.viewHolder.f21041b.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$CarrouselCard$JYHcG0fVveMnd7CaZnSdqcUzUU4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CarrouselCard.this.lambda$handleExpandButton$0$CarrouselCard(view);
                }
            });
        }
    }

    abstract void handleFooter();

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isAllowedExpandAnimation() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean isInExpandMode() {
        return this.isExpended;
    }

    public /* synthetic */ void lambda$handleExpandButton$0$CarrouselCard(View view) {
        this.userInteraction = true;
        this.isExpended = true ^ this.isExpended;
        drawCard();
        performOnExpandButtonClick(this.isExpended);
    }

    public void notifyHeightChange() {
        CardArrayRecyclerViewAdapterWithPriority cardArrayRecyclerViewAdapterWithPriority = this.cardArrayAdapter;
        if (cardArrayRecyclerViewAdapterWithPriority != null) {
            cardArrayRecyclerViewAdapterWithPriority.notifyDataSetChanged();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void onAnimatorEndListener() {
    }

    public void onBindViewHolder(CarousleCardViewHolder carousleCardViewHolder) {
        carousleCardViewHolder.f21044e.setBackgroundColor(ThemeUtils.getColor(2131099891));
        if (isInExpandMode()) {
            carousleCardViewHolder.f21042c.setBackgroundColor(ThemeUtils.getColor(2131099686));
        } else {
            carousleCardViewHolder.f21042c.setBackgroundColor(ThemeUtils.getColor(2131099780));
        }
        if (ThemeUtils.isThemeLight()) {
            carousleCardViewHolder.f21041b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
        } else {
            carousleCardViewHolder.f21041b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
        }
    }

    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.userInteraction = false;
        if (set.contains(ContactField.newContact)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.8
                @Override // java.lang.Runnable
                public void run() {
                    CarrouselCard.this.userInteraction = false;
                    CarrouselCard.this.drawCard();
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CarousleCardViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        CarousleCardViewHolder carousleCardViewHolder = new CarousleCardViewHolder(viewGroup);
        this.viewHolder = carousleCardViewHolder;
        this.cardRecyclerView = carousleCardViewHolder.f21040a;
        final C60054 c60054 = new C60054(getPresentersContainer().getRealContext(), 0, false);
        this.cardRecyclerView.setLayoutManager(c60054);
        this.cardRecyclerView.setAdapter((AbstractC18112a) this.cardArrayAdapter);
        this.cardRecyclerView.setNestedScrollingEnabled(false);
        new C2691h() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.5
            @Override // androidx.recyclerview.widget.C2691h, androidx.recyclerview.widget.AbstractC2703o
            /* renamed from: a */
            public final int mo31235a(RecyclerView.AbstractC2637i abstractC2637i, int i, int i2) {
                View a = mo29893a(abstractC2637i);
                int i3 = -1;
                if (a == null) {
                    return -1;
                }
                int m40366c = RecyclerView.AbstractC2637i.m40366c(a);
                if (abstractC2637i.mo31644e()) {
                    i3 = i < 0 ? m40366c - 1 : m40366c + 1;
                }
                if (abstractC2637i.mo31643f()) {
                    i3 = i2 < 0 ? m40366c - 1 : m40366c + 1;
                }
                return Math.min(abstractC2637i.getItemCount() - 1, Math.max(i3, 0));
            }
        }.mo29891a(this.cardRecyclerView);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, trackerParameter, 0);
        this.carrouselCardVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.6
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                if ((Prefs.f26631hk.get().intValue() % 2 == 0 && Prefs.f26631hk.get().intValue() < 5) || Prefs.f26627hg.get().intValue() % 70 == 0) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.6.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            CarrouselCard.this.cardRecyclerView.m40449d(3);
                        }
                    }.schedule(1200);
                }
                Prefs.f26627hg.m28169b(1);
                Prefs.f26631hk.m28169b(1);
                if (CarrouselCard.this.carrouselCardVisibilityTracker != null) {
                    CarrouselCard.this.carrouselCardVisibilityTracker.destroy();
                    CarrouselCard.this.carrouselCardVisibilityTracker = null;
                }
            }
        });
        this.cardRecyclerView.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.7
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(RecyclerView recyclerView, int i) {
                super.mo10833a(recyclerView, i);
                if (i == 0 || i == 2) {
                    final int m40518j = c60054.m40518j();
                    CarrouselCard.this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CarrouselCard.this.handlePageIndicators(m40518j);
                        }
                    });
                }
            }
        });
        handleExpandButton();
        return this.viewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        InlineVisibilityTracker inlineVisibilityTracker = this.carrouselCardVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.carrouselCardVisibilityTracker = null;
        }
    }

    abstract void performOnExpandButtonClick(boolean z);

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void removeFromMultiCard(ContactCard contactCard) {
    }

    public void setIsInExpandMode(boolean z) {
        this.isExpended = z;
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean shouldShowCardBackground() {
        return true;
    }

    abstract void showAdIfNeeded();

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(ContactCard contactCard, boolean z) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public void updateHeaderTitle(String str) {
        this.cardTitle = str;
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.3
            @Override // java.lang.Runnable
            public void run() {
                CarrouselCard carrouselCard = CarrouselCard.this;
                carrouselCard.setHeaderTitle(carrouselCard.cardTitle);
            }
        });
    }
}
