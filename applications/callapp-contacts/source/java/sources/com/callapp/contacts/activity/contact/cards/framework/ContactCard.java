package com.callapp.contacts.activity.contact.cards.framework;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.MultiCard;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18087e;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/ContactCard.class */
public abstract class ContactCard<ViewHolder, Data> extends C18073b implements ThemeChangedListener, DestroyListener, ContactDataChangeListener {
    private static int cardTypesCounter;
    private final float HEADER_DEFAULT_SIZE;
    private int cardBgColor;
    public int cardDividerColor;
    private boolean isInitialized;
    private MultiCardContainer multiCardContainer;
    public final PresentersContainer presentersContainer;
    public boolean shouldStartHidden;
    private static final HashMap<String, Integer> cardTypeMap = new HashMap<>();
    public static final float CARD_ELEVATION = Activities.m27699a(4.0f);

    public ContactCard(MultiCardContainer multiCardContainer, int i) {
        this(multiCardContainer.getPresentersContainer(), i);
        this.multiCardContainer = multiCardContainer;
    }

    public ContactCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer.getRealContext(), i);
        this.HEADER_DEFAULT_SIZE = 12.0f;
        this.isInitialized = false;
        setCardBackground();
        this.presentersContainer = presentersContainer;
        HashSet hashSet = new HashSet(getListenFields());
        hashSet.addAll(getCommonListenFields());
        if (CollectionUtils.m26068b(hashSet)) {
            presentersContainer.addContactChangedListener(this, hashSet);
        }
        presentersContainer.addDestroyListener(this);
        presentersContainer.getEventBus().m29048a(ThemeChangedListener.f23141i, this);
    }

    public void addToCardsAdapter() {
        CardArrayRecyclerViewAdapterWithPriority cardsAdapter = this.presentersContainer.getCardsAdapter();
        if (cardsAdapter != null) {
            initCard();
            if (!cardsAdapter.m4434a((C18073b) this)) {
                cardsAdapter.m31148a((ContactCard) this);
            } else {
                refreshCard();
            }
        }
    }

    public void addToMultiCard(boolean z) {
        if (this.multiCardContainer.addToMultiCard(this)) {
            initCard();
        } else if (!z) {
        } else {
            refreshCard();
        }
    }

    private int calcCardType() {
        String typeKeyGenerator = typeKeyGenerator(this);
        HashMap<String, Integer> hashMap = cardTypeMap;
        Integer num = hashMap.get(typeKeyGenerator);
        Integer num2 = num;
        if (num == null) {
            int i = cardTypesCounter + 1;
            cardTypesCounter = i;
            num2 = Integer.valueOf(i);
            hashMap.put(typeKeyGenerator, num2);
        }
        return num2.intValue();
    }

    public static int getCardTypesCount() {
        return cardTypeMap.size();
    }

    private void initCard() {
        if (!this.isInitialized) {
            this.isInitialized = true;
            init();
            super.setType(calcCardType());
        }
    }

    private boolean isBackgroundShown() {
        return StoreItemAssetManager.isSuperSkinEnabled() && Prefs.f26403dU.get().booleanValue();
    }

    public void refreshCard() {
        if (isCardVisibleOnScreen()) {
            getCardView().mo4383a(this);
        }
    }

    private void setCardProperties() {
        AbstractC18152a cardView = getCardView();
        if (cardView instanceof CardView) {
            CardView cardView2 = (CardView) cardView;
            setBackground(cardView2);
            if (!hasHeader()) {
                return;
            }
            TextView textView = (TextView) cardView2.findViewById(2131362277);
            FrameLayout frameLayout = (FrameLayout) cardView2.findViewById(2131362952);
            if (textView != null) {
                textView.setTextColor(getHeaderTextColor());
                textView.setTextSize(1, getHeaderTextSize());
            }
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(getHeaderBackgroundColor());
            }
            View findViewById = cardView2.findViewById(2131362611);
            if (findViewById == null) {
                return;
            }
            findViewById.setBackgroundColor(this.cardDividerColor);
        }
    }

    private static String typeKeyGenerator(ContactCard contactCard) {
        C18087e cardExpand = contactCard.getCardExpand();
        return String.format("%d@%d@%d@%d@%d%d%d", Integer.valueOf(contactCard.getInnerLayout()), Integer.valueOf(contactCard.getCardHeader() == null ? 0 : contactCard.getCardHeader().getInnerLayout()), Integer.valueOf(contactCard.getCardThumbnail() == null ? 0 : contactCard.getCardThumbnail().getInnerLayout()), Integer.valueOf(cardExpand == null ? 0 : cardExpand.getInnerLayout()), Integer.valueOf(cardExpand instanceof CardWithListExpand ? ((CardWithListExpand) cardExpand).getFooterLayoutId() : 0), Integer.valueOf(contactCard.getPriority() == 12 ? 1 : 0), Integer.valueOf(contactCard.getSalt()));
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public void doCollapse() {
        if (getCardView() != null) {
            super.doCollapse();
        }
    }

    protected int getCardBgColor() {
        return this.cardBgColor;
    }

    public int getCardInitHeight() {
        return -2;
    }

    protected Set<ContactField> getCommonListenFields() {
        HashSet hashSet = new HashSet();
        hashSet.add(ContactField.isIncognito);
        return hashSet;
    }

    protected C18087e getExpandPart() {
        return null;
    }

    public C18092i getHeader() {
        return new C18092i(this.mContext, 2131558516);
    }

    public int getHeaderBackgroundColor() {
        return getCardBgColor();
    }

    public int getHeaderTextColor() {
        return ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);
    }

    public float getHeaderTextSize() {
        return 12.0f;
    }

    public abstract String getHeaderTitle();

    public abstract Set<ContactField> getListenFields();

    public PresentersContainer getPresentersContainer() {
        return this.presentersContainer;
    }

    public abstract int getPriority();

    public int getSalt() {
        return 0;
    }

    public void hideCard() {
        final CardArrayRecyclerViewAdapterWithPriority cardsAdapter = this.presentersContainer.getCardsAdapter();
        if (cardsAdapter == null || !this.isInitialized) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.ContactCard.2
            @Override // java.lang.Runnable
            public void run() {
                if (ContactCard.this.multiCardContainer != null) {
                    ContactCard.this.multiCardContainer.removeFromMultiCard(ContactCard.this);
                } else {
                    cardsAdapter.m4433b(ContactCard.this);
                }
            }
        });
    }

    public boolean hideWhenExceedMaxCards() {
        return false;
    }

    protected void init() {
        String headerTitle = getHeaderTitle();
        if (StringUtils.m26045b((CharSequence) headerTitle)) {
            addCardHeader(getHeader());
            setHeaderTitle(headerTitle);
        }
        setSwipeable(false);
        C18087e expandPart = getExpandPart();
        if (expandPart != null) {
            addCardExpand(expandPart);
        }
        setElevation();
    }

    public boolean isAllowedExpandAnimation() {
        return true;
    }

    public boolean isCardLockedWhenScreenIsLocked() {
        return true;
    }

    public boolean isCardVisibleOnScreen() {
        AbstractC18152a cardView;
        return this.isInitialized && (cardView = getCardView()) != null && cardView.getCard() == this;
    }

    public /* synthetic */ void lambda$onThemeChanged$0$ContactCard() {
        if (shouldHideCardOnThemeChange()) {
            hideCard();
            return;
        }
        setCardBackground();
        if (this.presentersContainer.getContact() != null) {
            onThemeChangedInner();
        }
        refreshCard();
    }

    protected abstract void onBindViewHolder(ViewHolder viewholder);

    public void onCardBounded() {
    }

    protected abstract ViewHolder onCreateViewHolder(ViewGroup viewGroup);

    public void onDestroy() {
        this.presentersContainer.getEventBus().m29045b(ThemeChangedListener.f23141i, this);
    }

    public void onMultiCardExpended(boolean z) {
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public void onSwipeCard() {
        final CardArrayRecyclerViewAdapterWithPriority cardsAdapter = this.presentersContainer.getCardsAdapter();
        if (cardsAdapter != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.ContactCard.3
                @Override // java.lang.Runnable
                public void run() {
                    cardsAdapter.m4433b(ContactCard.this);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public final void onThemeChanged() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework._$$Lambda$ContactCard$oxra8z5GMUSqY0v3gHoI0AJwu6Y
            @Override // java.lang.Runnable
            public final void run() {
                ContactCard.this.lambda$onThemeChanged$0$ContactCard();
            }
        });
    }

    public void onThemeChangedInner() {
    }

    public void setBackground(CardView cardView) {
        MultiCardContainer multiCardContainer = this.multiCardContainer;
        if (multiCardContainer == null || multiCardContainer.shouldShowCardBackground()) {
            ViewUtils.m27294c(cardView, 2131230920, getCardBgColor());
        }
    }

    public void setCardBackground() {
        if (isBackgroundShown()) {
            this.cardBgColor = ColorUtils.m27549a(191, ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        } else {
            this.cardBgColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099686);
        }
        this.cardDividerColor = ThemeUtils.getColor(2131099891);
    }

    public void setCardBgColor(int i) {
        this.cardBgColor = i;
    }

    public void setElevation() {
        if (this.multiCardContainer == null) {
            setCardElevation(CARD_ELEVATION);
        }
    }

    public void setHeaderTitle(String str) {
        if (this.mCardHeader != null) {
            this.mCardHeader.setTitle(str);
        }
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public final void setType(int i) {
        throw new RuntimeException("you should not change the card type - only ContactCard should set the card type");
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public final void setupInnerViewElements(ViewGroup viewGroup, View view) {
        ViewHolder viewholder;
        Object tag = view.getTag(2131362308);
        if (tag != null) {
            viewholder = tag;
        } else {
            viewholder = onCreateViewHolder(viewGroup);
            view.setTag(2131362308, viewholder);
        }
        setCardProperties();
        onBindViewHolder(viewholder);
    }

    protected boolean shouldHideCardOnThemeChange() {
        if (!(this instanceof MultiCard)) {
            PresentersContainer presentersContainer = this.presentersContainer;
            return presentersContainer.mo30920a(presentersContainer.getContact());
        }
        return false;
    }

    public void showCard(final boolean z) {
        final CardArrayRecyclerViewAdapterWithPriority cardsAdapter = this.presentersContainer.getCardsAdapter();
        if (cardsAdapter != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.ContactCard.1
                @Override // java.lang.Runnable
                public void run() {
                    if (ContactCard.this.multiCardContainer != null) {
                        ContactCard.this.addToMultiCard(z);
                    } else if (!cardsAdapter.m4434a((C18073b) ContactCard.this)) {
                        ContactCard.this.addToCardsAdapter();
                    } else if (!z) {
                    } else {
                        ContactCard.this.refreshCard();
                    }
                }
            });
        }
    }

    public boolean showExpendFooter() {
        return false;
    }

    public void showMainContent(boolean z) {
        View internalMainCardLayout;
        AbstractC18152a cardView = getCardView();
        if (cardView == null || (internalMainCardLayout = cardView.getInternalMainCardLayout()) == null) {
            return;
        }
        internalMainCardLayout.findViewById(2131362283).setVisibility(z ? 0 : 8);
    }

    public View showOuterFooter(int i) {
        View internalMainCardLayout;
        ViewParent parent;
        AbstractC18152a cardView = getCardView();
        if (cardView == null || (internalMainCardLayout = cardView.getInternalMainCardLayout()) == null || (parent = internalMainCardLayout.getParent()) == null) {
            return null;
        }
        return ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(i, (ViewGroup) ((ViewGroup) parent).findViewById(2131362271), true);
    }

    public abstract boolean showShouldExpandButton();

    protected abstract void updateCardData(Data data, boolean z);
}
