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
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18087e;
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
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExpandedCardList(Context context) {
            super(context);
            SimpleExpandableCard.this = r4;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        /* renamed from: a */
        public final List<O> mo31061a() {
            ArrayList arrayList;
            synchronized (SimpleExpandableCard.this.expandedListDataLock) {
                arrayList = new ArrayList(SimpleExpandableCard.this.expandedListData);
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        /* renamed from: a */
        public final /* synthetic */ void mo31060a(SimpleLayoutViewHolder simpleLayoutViewHolder, CardWithList.ListObject listObject) {
            SimpleLayoutViewHolder simpleLayoutViewHolder2 = simpleLayoutViewHolder;
            simpleLayoutViewHolder2.m31049a((SimpleLayoutViewHolder) ((SimpleCardListObject) listObject), SimpleExpandableCard.this.getCardInitHeight(), simpleLayoutViewHolder2.getRoot().getContext());
            simpleLayoutViewHolder2.m31048a(SimpleExpandableCard.this, false);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        /* renamed from: b */
        public final /* synthetic */ SimpleLayoutViewHolder mo31059b(View view) {
            ViewUtils.m27287g(view, SimpleExpandableCard.this.getCardInitHeight());
            return new SimpleLayoutViewHolder(view);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public int getChildLayoutId() {
            return 2131559023;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData.class */
    public static class FooterData {

        /* renamed from: a */
        public ContactCard f21550a;

        /* renamed from: b */
        public String f21551b;

        /* renamed from: c */
        public View.OnClickListener f21552c;

        public FooterData(ContactCard contactCard) {
            this.f21550a = contactCard;
        }

        public FooterData(String str, View.OnClickListener onClickListener) {
            this.f21551b = str;
            this.f21552c = onClickListener;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList.class */
    public class SimpleExpandedCardList extends SimpleExpandableCard<O>.ExpandedCardList<SimpleExpandableCard<O>.SimpleFooterViewHolder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SimpleExpandedCardList(Context context) {
            super(context);
            SimpleExpandableCard.this = r5;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        /* renamed from: a */
        public final /* synthetic */ Object mo31058a(View view) {
            return new SimpleFooterViewHolder(view);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        /* renamed from: a */
        public final /* synthetic */ void mo31057a(Object obj) {
            ((SimpleFooterViewHolder) obj).setupFromData(SimpleExpandableCard.this.footerData);
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand
        public int getFooterLayoutId() {
            return 2131558526;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder.class */
    class SimpleFooterViewHolder {

        /* renamed from: a */
        View f21554a;

        /* renamed from: b */
        FrameLayout f21555b;

        /* renamed from: c */
        LinearLayout f21556c;

        public SimpleFooterViewHolder(View view) {
            SimpleExpandableCard.this = r5;
            this.f21554a = view;
            this.f21555b = (FrameLayout) view.findViewById(2131362852);
            this.f21556c = (LinearLayout) this.f21554a.findViewById(2131362858);
        }

        public void setupFromData(FooterData footerData) {
            if (footerData == null) {
                this.f21554a.setVisibility(8);
                return;
            }
            if (footerData.f21550a == null) {
                this.f21556c.setVisibility(0);
                TextView textView = (TextView) this.f21556c.findViewById(2131362859);
                textView.setText(footerData.f21551b);
                textView.setTextColor(ThemeUtils.getColor(2131099784));
                this.f21554a.setOnClickListener(footerData.f21552c);
            } else if (this.f21555b.getChildCount() == 0) {
                this.f21555b.setVisibility(0);
                footerData.f21550a.getInnerView(CallAppApplication.get(), this.f21555b);
            }
            this.f21554a.setVisibility(0);
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

    public void autoExpandIfNeeded() {
        if (shouldAutoExpand()) {
            doExpand();
        }
    }

    public void fillExpandedAreaWithData(final boolean z) {
        final ArrayList arrayList;
        final CardWithListExpand<SimpleLayoutViewHolder, FooterViewHolder, T>.MyLinearListAdapter linearListAdapter = this.expandCardList.getLinearListAdapter();
        if (linearListAdapter == null || !isCardVisibleOnScreen()) {
            return;
        }
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
                if (CollectionUtils.m26068b(arrayList)) {
                    linearListAdapter.addAll(arrayList);
                    SimpleExpandableCard.this.fillFooterWithData();
                    SimpleExpandableCard.this.autoExpandIfNeeded();
                } else {
                    ExpandedCardList unused = SimpleExpandableCard.this.expandCardList;
                    SimpleExpandableCard.this.fillFooterWithData();
                    SimpleExpandableCard.this.autoExpandIfNeeded();
                }
                if (SimpleExpandableCard.this.cardViewHolder != null) {
                    SimpleExpandableCard.this.cardViewHolder.m31048a(SimpleExpandableCard.this, true);
                }
            }
        });
    }

    private View getExpandButtonView() {
        if (getViewToClickToExpand() != null) {
            return getViewToClickToExpand().m4444c();
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
    public C18087e getExpandPart() {
        ExpandedCardList createExpandCardList = createExpandCardList();
        this.expandCardList = createExpandCardList;
        return createExpandCardList;
    }

    public FooterData getFooterData() {
        return this.footerData;
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public C18073b.AbstractC18076c getOnCollapseAnimatorStartListener() {
        if (!shouldAutoExpand()) {
            AndroidUtils.m27630a(getExpandButtonView(), 1);
        }
        return super.getOnCollapseAnimatorStartListener();
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public C18073b.AbstractC18078e getOnExpandAnimatorStartListener() {
        if (!shouldAutoExpand()) {
            AndroidUtils.m27630a(getExpandButtonView(), 1);
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

    public void onBindViewHolder(SimpleLayoutViewHolder simpleLayoutViewHolder) {
        this.cardViewHolder = simpleLayoutViewHolder;
        if (this.firstItemObject == null) {
            showMainContent(false);
        } else {
            showMainContent(true);
            simpleLayoutViewHolder.m31049a((SimpleLayoutViewHolder) this.firstItemObject, getCardInitHeight(), simpleLayoutViewHolder.getRoot().getContext());
            if (showShouldExpandButton()) {
                ((ImageView) simpleLayoutViewHolder.f21558a.findViewById(2131362268)).setColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108));
            }
        }
        simpleLayoutViewHolder.m31048a((SimpleExpandableCard) this, true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onCardBounded() {
        if (this.timeSinceFirstBound == null) {
            this.timeSinceFirstBound = Long.valueOf(System.currentTimeMillis());
        }
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard.2
            @Override // java.lang.Runnable
            public void run() {
                SimpleExpandableCard.this.fillExpandedAreaWithData(false);
            }
        });
    }

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

    public void updateCardData(Collection<? extends O> collection, boolean z) {
        boolean z2;
        synchronized (this.expandedListDataLock) {
            if (CollectionUtils.m26068b(collection)) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(collection);
                Iterator it2 = arrayList.iterator();
                O o = (O) it2.next();
                it2.remove();
                boolean z3 = !o.equals(this.firstItemObject);
                if (!z && CollectionUtils.m26074a((Collection) arrayList, (Collection) this.expandedListData) && !z3) {
                    return;
                }
                this.expandedListData = arrayList;
                this.firstItemObject = o;
                z2 = z3;
            } else {
                this.expandedListData.clear();
                z2 = this.firstItemObject != null;
                this.firstItemObject = null;
            }
            if (this.expandCardList != null) {
                fillExpandedAreaWithData(z2);
            }
        }
    }
}
