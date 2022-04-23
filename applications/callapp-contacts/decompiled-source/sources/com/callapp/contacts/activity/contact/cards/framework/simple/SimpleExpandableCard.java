package com.callapp.contacts.activity.contact.cards.framework.simple;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.e;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard.class */
public abstract class SimpleExpandableCard<O extends SimpleCardListObject> extends ContactCard<SimpleLayoutViewHolder, Collection<? extends O>> {
    private static final int TIME_NOT_ALLOWED_ANIMATION_SINCE_FIRST_BIND_MILLIS = 200;
    private SimpleLayoutViewHolder cardViewHolder;
    private ExpandedCardList expandCardList;
    private O firstItemObject;
    private int footer;
    private FooterData footerData;
    private List<O> expandedListData = new ArrayList();
    protected final Object expandedListDataLock = new Object();
    private Long timeSinceFirstBound = null;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList.class */
    public abstract class ExpandedCardList<FooterViewHolder> extends CardWithListExpand<SimpleLayoutViewHolder, FooterViewHolder, O> {
        public ExpandedCardList(Context context) {
            super(context);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final List<O> a() {
            ArrayList arrayList;
            synchronized (SimpleExpandableCard.this.expandedListDataLock) {
                arrayList = new ArrayList(SimpleExpandableCard.this.expandedListData);
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ void a(SimpleLayoutViewHolder simpleLayoutViewHolder, CardWithList.ListObject listObject) {
            SimpleLayoutViewHolder simpleLayoutViewHolder2 = simpleLayoutViewHolder;
            simpleLayoutViewHolder2.a((SimpleLayoutViewHolder) ((SimpleCardListObject) listObject), SimpleExpandableCard.this.getCardInitHeight(), simpleLayoutViewHolder2.getRoot().getContext());
            simpleLayoutViewHolder2.a(SimpleExpandableCard.this, false);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ SimpleLayoutViewHolder b(View view) {
            ViewUtils.g(view, SimpleExpandableCard.this.getCardInitHeight());
            return new SimpleLayoutViewHolder(view);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public int getChildLayoutId() {
            return 2131559023;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData.class */
    public static class FooterData {

        /* renamed from: a  reason: collision with root package name */
        public ContactCard f11925a;

        /* renamed from: b  reason: collision with root package name */
        public String f11926b;

        /* renamed from: c  reason: collision with root package name */
        public View.OnClickListener f11927c;

        public FooterData(ContactCard contactCard) {
            this.f11925a = contactCard;
        }

        public FooterData(String str, View.OnClickListener onClickListener) {
            this.f11926b = str;
            this.f11927c = onClickListener;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList.class */
    public class SimpleExpandedCardList extends SimpleExpandableCard<O>.ExpandedCardList<SimpleExpandableCard<O>.SimpleFooterViewHolder> {
        public SimpleExpandedCardList(Context context) {
            super(context);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ Object a(View view) {
            return new SimpleFooterViewHolder(view);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public final /* synthetic */ void a(Object obj) {
            ((SimpleFooterViewHolder) obj).setupFromData(SimpleExpandableCard.this.footerData);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public int getFooterLayoutId() {
            return 2131558526;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder.class */
    class SimpleFooterViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f11929a;

        /* renamed from: b  reason: collision with root package name */
        FrameLayout f11930b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f11931c;

        public SimpleFooterViewHolder(View view) {
            this.f11929a = view;
            this.f11930b = (FrameLayout) view.findViewById(2131362852);
            this.f11931c = (LinearLayout) this.f11929a.findViewById(2131362858);
        }

        public void setupFromData(FooterData footerData) {
            if (footerData != null) {
                if (footerData.f11925a == null) {
                    this.f11931c.setVisibility(0);
                    TextView textView = (TextView) this.f11931c.findViewById(2131362859);
                    textView.setText(footerData.f11926b);
                    textView.setTextColor(ThemeUtils.getColor(2131099784));
                    this.f11929a.setOnClickListener(footerData.f11927c);
                } else if (this.f11930b.getChildCount() == 0) {
                    this.f11930b.setVisibility(0);
                    footerData.f11925a.getInnerView(CallAppApplication.get(), this.f11930b);
                }
                this.f11929a.setVisibility(0);
                return;
            }
            this.f11929a.setVisibility(8);
        }
    }

    public SimpleExpandableCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131559023);
    }

    public SimpleExpandableCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131559023);
    }

    public SimpleExpandableCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoExpandIfNeeded() {
        if (shouldAutoExpand()) {
            doExpand();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillExpandedAreaWithData(final boolean z) {
        final ArrayList arrayList;
        final CardWithListExpand<SimpleLayoutViewHolder, FooterViewHolder, T>.MyLinearListAdapter linearListAdapter = this.expandCardList.getLinearListAdapter();
        if (linearListAdapter != null && isCardVisibleOnScreen()) {
            synchronized (this.expandedListDataLock) {
                arrayList = new ArrayList(this.expandedListData);
            }
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z && SimpleExpandableCard.this.cardViewHolder != null) {
                        SimpleExpandableCard simpleExpandableCard = SimpleExpandableCard.this;
                        simpleExpandableCard.onBindViewHolder(simpleExpandableCard.cardViewHolder);
                    }
                    linearListAdapter.clear();
                    if (CollectionUtils.b(arrayList)) {
                        linearListAdapter.addAll(arrayList);
                        SimpleExpandableCard.this.fillFooterWithData();
                        SimpleExpandableCard.this.autoExpandIfNeeded();
                    } else {
                        ExpandedCardList unused = SimpleExpandableCard.this.expandCardList;
                        SimpleExpandableCard.this.fillFooterWithData();
                        SimpleExpandableCard.this.autoExpandIfNeeded();
                    }
                    if (SimpleExpandableCard.this.cardViewHolder != null) {
                        SimpleExpandableCard.this.cardViewHolder.a(SimpleExpandableCard.this, true);
                    }
                }
            });
        }
    }

    private View getExpandButtonView() {
        if (getViewToClickToExpand() != null) {
            return getViewToClickToExpand().c();
        }
        return null;
    }

    private boolean shouldAutoExpand() {
        return getCardView() != null && !isExpanded() && autoExpand() && shouldExpand();
    }

    private boolean shouldExpand() {
        synchronized (this.expandedListDataLock) {
        }
        return true;
    }

    public boolean alignRowsWithFirstRowExpandButton() {
        return false;
    }

    protected boolean autoExpand() {
        return false;
    }

    protected ExpandedCardList createExpandCardList() {
        return new SimpleExpandedCardList(this.mContext);
    }

    protected void fillFooterWithData() {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131166058);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public e getExpandPart() {
        ExpandedCardList createExpandCardList = createExpandCardList();
        this.expandCardList = createExpandCardList;
        return createExpandCardList;
    }

    public FooterData getFooterData() {
        return this.footerData;
    }

    @Override // it.gmariotti.cardslib.library.a.b
    public b.c getOnCollapseAnimatorStartListener() {
        if (!shouldAutoExpand()) {
            AndroidUtils.a(getExpandButtonView(), 1);
        }
        return super.getOnCollapseAnimatorStartListener();
    }

    @Override // it.gmariotti.cardslib.library.a.b
    public b.e getOnExpandAnimatorStartListener() {
        if (!shouldAutoExpand()) {
            AndroidUtils.a(getExpandButtonView(), 1);
        }
        return super.getOnExpandAnimatorStartListener();
    }

    public View getRootView() {
        SimpleLayoutViewHolder simpleLayoutViewHolder = this.cardViewHolder;
        if (simpleLayoutViewHolder != null) {
            return simpleLayoutViewHolder.getRoot();
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isAllowedExpandAnimation() {
        return this.timeSinceFirstBound != null && System.currentTimeMillis() - this.timeSinceFirstBound.longValue() > 200;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public void onBindViewHolder(SimpleLayoutViewHolder simpleLayoutViewHolder) {
        this.cardViewHolder = simpleLayoutViewHolder;
        if (this.firstItemObject == null) {
            showMainContent(false);
        } else {
            showMainContent(true);
            simpleLayoutViewHolder.a((SimpleLayoutViewHolder) this.firstItemObject, getCardInitHeight(), simpleLayoutViewHolder.getRoot().getContext());
            if (showShouldExpandButton()) {
                ((ImageView) simpleLayoutViewHolder.f11933a.findViewById(2131362268)).setColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100108));
            }
        }
        simpleLayoutViewHolder.a((SimpleExpandableCard) this, true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onCardBounded() {
        if (this.timeSinceFirstBound == null) {
            this.timeSinceFirstBound = Long.valueOf(System.currentTimeMillis());
        }
        CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard.2
            @Override // java.lang.Runnable
            public void run() {
                SimpleExpandableCard.this.fillExpandedAreaWithData(false);
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder(viewGroup);
    }

    public void setCardClickable(boolean z) {
        SimpleLayoutViewHolder simpleLayoutViewHolder = this.cardViewHolder;
        if (simpleLayoutViewHolder != null) {
            simpleLayoutViewHolder.setRowContainerOpacity(z);
        }
    }

    public void setFooterData(FooterData footerData) {
        this.footerData = footerData;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        boolean z;
        synchronized (this.expandedListDataLock) {
            z = this.expandedListData.size() > 0;
        }
        return z;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public /* bridge */ /* synthetic */ void updateCardData(Object obj, boolean z) {
        updateCardData((Collection) ((Collection) obj), z);
    }

    public void updateCardData(Collection<? extends O> collection) {
        updateCardData((Collection) collection, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Collection<? extends O> collection, boolean z) {
        synchronized (this.expandedListDataLock) {
            boolean z2 = true;
            if (CollectionUtils.b(collection)) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(collection);
                Iterator it2 = arrayList.iterator();
                O o = (O) ((SimpleCardListObject) it2.next());
                it2.remove();
                boolean z3 = !o.equals(this.firstItemObject);
                if (z || !CollectionUtils.a((Collection) arrayList, (Collection) this.expandedListData) || z3) {
                    this.expandedListData = arrayList;
                    this.firstItemObject = o;
                    z2 = z3;
                } else {
                    return;
                }
            } else {
                this.expandedListData.clear();
                if (this.firstItemObject == null) {
                    z2 = false;
                }
                this.firstItemObject = null;
            }
            if (this.expandCardList != null) {
                fillExpandedAreaWithData(z2);
            }
        }
    }
}
