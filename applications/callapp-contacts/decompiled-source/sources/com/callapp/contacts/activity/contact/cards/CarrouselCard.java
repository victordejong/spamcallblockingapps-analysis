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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import androidx.recyclerview.widget.h;
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
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.i;
import it.gmariotti.cardslib.library.recyclerview.a.a;
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
        public final void a() {
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
        public final void b() {
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.CarrouselCard$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CarrouselCard$4.class */
    public class AnonymousClass4 extends LinearLayoutManager {
        AnonymousClass4(Context context, int i, boolean z) {
            super(context, i, z);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
        public final void a(final RecyclerView recyclerView, RecyclerView.s sVar, final int i) {
            g gVar = new g(recyclerView.getContext()) { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.4.1
                @Override // androidx.recyclerview.widget.g
                public final float a(DisplayMetrics displayMetrics) {
                    return 250.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.r
                public final void a() {
                    super.a();
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.4.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (i == CarrouselCard.this.cardArrayAdapter.getItemCount()) {
                                CarrouselCard.this.cardRecyclerView.d(0);
                            }
                        }
                    }.schedule(1000);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.r
                public final PointF c(int i2) {
                    return ((LinearLayoutManager) recyclerView.getLayoutManager()).c(i2);
                }

                @Override // androidx.recyclerview.widget.g
                public int getHorizontalSnapPreference() {
                    return -1;
                }
            };
            gVar.setTargetPosition(i);
            a(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder.class */
    public class CarousleCardViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected final CardRecyclerView f11603a;

        /* renamed from: b  reason: collision with root package name */
        protected final FloatingActionButton f11604b;

        /* renamed from: c  reason: collision with root package name */
        protected final LinearLayout f11605c;

        /* renamed from: d  reason: collision with root package name */
        protected final TextView f11606d;
        protected final View e;
        protected final ConstraintLayout f;
        protected final ImageView g;
        protected final ImageView h;
        protected final ImageView i;

        public CarousleCardViewHolder(View view) {
            this.f11603a = (CardRecyclerView) view.findViewById(2131362293);
            this.f11604b = (FloatingActionButton) view.findViewById(2131362764);
            this.f11605c = (LinearLayout) view.findViewById(2131362850);
            this.f11606d = (TextView) view.findViewById(2131362854);
            this.f = (ConstraintLayout) view.findViewById(2131362297);
            this.e = view.findViewById(2131362851);
            this.g = (ImageView) view.findViewById(2131362806);
            this.h = (ImageView) view.findViewById(2131363778);
            this.i = (ImageView) view.findViewById(2131364113);
        }
    }

    public CarrouselCard(PresentersContainer presentersContainer, String str, int i) {
        super(presentersContainer, 2131558691);
        this.cardTitle = str;
        this.cardPriority = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawCard() {
        this.viewHolder.f11604b.setImageDrawable(CallAppApplication.get().getResources().getDrawable(isInExpandMode() ? 2131231648 : 2131231605));
        this.viewHolder.f11604b.setColorFilter(ThemeUtils.getColor(2131099784));
        if (CollectionUtils.b(this.extraCardsToAdd)) {
            for (ContactCard contactCard : this.extraCardsToAdd) {
                contactCard.onMultiCardExpended(isInExpandMode());
            }
        }
        notifyHeightChange();
        showAdIfNeeded();
        handleFooter();
        onThemeChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePageIndicators(int i) {
        CarousleCardViewHolder carousleCardViewHolder = this.viewHolder;
        if (carousleCardViewHolder == null) {
            return;
        }
        if (i == 0) {
            carousleCardViewHolder.g.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
            this.viewHolder.h.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            this.viewHolder.i.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
        } else if (i == 1) {
            carousleCardViewHolder.g.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            this.viewHolder.h.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
            this.viewHolder.i.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
        } else {
            carousleCardViewHolder.g.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            this.viewHolder.h.setColorFilter(ThemeUtils.getColor(2131099919), PorterDuff.Mode.SRC_IN);
            this.viewHolder.i.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public boolean addToMultiCard(final ContactCard contactCard) {
        if (this.cardArrayAdapter.a((b) contactCard)) {
            return false;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.1
            @Override // java.lang.Runnable
            public void run() {
                if (!CarrouselCard.this.cardArrayAdapter.a((b) contactCard)) {
                    CarrouselCard.this.extraCardsToAdd.add(contactCard);
                    CarrouselCard.this.cardArrayAdapter.a(contactCard);
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
                this.viewHolder.f11604b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
            } else {
                this.viewHolder.f11604b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
            }
            this.viewHolder.f11604b.setImageDrawable(CallAppApplication.get().getResources().getDrawable(isInExpandMode() ? 2131231648 : 2131231605));
            this.viewHolder.f11604b.setColorFilter(ThemeUtils.getColor(2131099784));
            this.viewHolder.f11604b.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$CarrouselCard$JYHcG0fVveMnd7CaZnSdqcUzUU4
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CarousleCardViewHolder carousleCardViewHolder) {
        carousleCardViewHolder.e.setBackgroundColor(ThemeUtils.getColor(2131099891));
        if (isInExpandMode()) {
            carousleCardViewHolder.f11605c.setBackgroundColor(ThemeUtils.getColor(2131099686));
        } else {
            carousleCardViewHolder.f11605c.setBackgroundColor(ThemeUtils.getColor(2131099780));
        }
        if (ThemeUtils.isThemeLight()) {
            carousleCardViewHolder.f11604b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
        } else {
            carousleCardViewHolder.f11604b.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CarousleCardViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        CarousleCardViewHolder carousleCardViewHolder = new CarousleCardViewHolder(viewGroup);
        this.viewHolder = carousleCardViewHolder;
        this.cardRecyclerView = carousleCardViewHolder.f11603a;
        final AnonymousClass4 r0 = new AnonymousClass4(getPresentersContainer().getRealContext(), 0, false);
        this.cardRecyclerView.setLayoutManager(r0);
        this.cardRecyclerView.setAdapter((a) this.cardArrayAdapter);
        this.cardRecyclerView.setNestedScrollingEnabled(false);
        new h() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.5
            @Override // androidx.recyclerview.widget.h, androidx.recyclerview.widget.o
            public final int a(RecyclerView.i iVar, int i, int i2) {
                View a2 = a(iVar);
                int i3 = -1;
                if (a2 == null) {
                    return -1;
                }
                int c2 = RecyclerView.i.c(a2);
                if (iVar.e()) {
                    i3 = i < 0 ? c2 - 1 : c2 + 1;
                }
                if (iVar.f()) {
                    i3 = i2 < 0 ? c2 - 1 : c2 + 1;
                }
                return Math.min(iVar.getItemCount() - 1, Math.max(i3, 0));
            }
        }.a(this.cardRecyclerView);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, trackerParameter, 0);
        this.carrouselCardVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.6
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                if ((Prefs.hk.get().intValue() % 2 == 0 && Prefs.hk.get().intValue() < 5) || Prefs.hg.get().intValue() % 70 == 0) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.6.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            CarrouselCard.this.cardRecyclerView.d(3);
                        }
                    }.schedule(1200);
                }
                Prefs.hg.b(1);
                Prefs.hk.b(1);
                if (CarrouselCard.this.carrouselCardVisibilityTracker != null) {
                    CarrouselCard.this.carrouselCardVisibilityTracker.destroy();
                    CarrouselCard.this.carrouselCardVisibilityTracker = null;
                }
            }
        });
        this.cardRecyclerView.a(new RecyclerView.m() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.7
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i) {
                super.a(recyclerView, i);
                if (i == 0 || i == 2) {
                    final int j = r0.j();
                    CarrouselCard.this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CarrouselCard.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CarrouselCard.this.handlePageIndicators(j);
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

    /* JADX INFO: Access modifiers changed from: protected */
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
