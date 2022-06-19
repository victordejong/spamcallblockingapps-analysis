package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.util.ViewUtils;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import it.gmariotti.cardslib.library.recyclerview.p513a.C18114b;
import it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority.class */
public class CardArrayRecyclerViewAdapterWithPriority extends C18114b {

    /* renamed from: g */
    private boolean f21330g;

    /* renamed from: h */
    private CardEventsListener f21331h;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener.class */
    public interface CardEventsListener {
        /* renamed from: a */
        void mo30941a();

        /* renamed from: b */
        void mo30940b();
    }

    public CardArrayRecyclerViewAdapterWithPriority(Context context, List<C18073b> list, CardEventsListener cardEventsListener) {
        super(context, list);
        this.f21331h = cardEventsListener;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a
    /* renamed from: a */
    public final AbstractC18112a.C18113a onCreateViewHolder(ViewGroup viewGroup, int i) {
        AbstractC18112a.C18113a a = super.onCreateViewHolder(viewGroup, i);
        if (this.f21331h != null) {
            ((CallAppNativeCard) a.f63051r).setCardEventsListener(this.f21331h);
        }
        return a;
    }

    /* renamed from: a */
    public final void m31148a(ContactCard contactCard) {
        boolean z;
        if (m4434a((C18073b) contactCard)) {
            return;
        }
        int priority = contactCard.getPriority();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= this.f63053f.size()) {
                z = false;
                break;
            } else if (priority < ((ContactCard) this.f63053f.get(i)).getPriority()) {
                z = true;
                break;
            } else {
                i2++;
                i++;
            }
        }
        m4435a(i2, contactCard);
        CardRecyclerView cardRecyclerView = getCardRecyclerView();
        if (!z || !(cardRecyclerView instanceof com.callapp.contacts.widget.recyclerviewext.CardRecyclerView)) {
            return;
        }
        com.callapp.contacts.widget.recyclerviewext.CardRecyclerView cardRecyclerView2 = (com.callapp.contacts.widget.recyclerviewext.CardRecyclerView) cardRecyclerView;
        if (cardRecyclerView2.isUserTouchedItOrItsChildrenOnce() || cardRecyclerView2.isAutoScrolling()) {
            return;
        }
        cardRecyclerView.m40464b(0);
        CardEventsListener cardEventsListener = this.f21331h;
        if (cardEventsListener == null) {
            return;
        }
        cardEventsListener.mo30940b();
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a
    /* renamed from: a */
    public final void onBindViewHolder(AbstractC18112a.C18113a c18113a, int i) {
        int cardInitHeight;
        AbstractC18152a abstractC18152a = c18113a.f63051r;
        C18073b item = getItem(i);
        if (abstractC18152a != null) {
            abstractC18152a.setForceReplaceInnerLayout(C18073b.equalsInnerLayout(abstractC18152a.getCard(), item));
            abstractC18152a.setRecycle(c18113a.f63052s);
            boolean z = true;
            c18113a.f63052s = true;
            abstractC18152a.setCard(item);
            if ((item.getCardHeader() != null && item.getCardHeader().m4462d()) || item.getViewToClickToExpand() != null) {
                setupExpandCollapseListAnimation(abstractC18152a);
            }
            if (!abstractC18152a.isNative()) {
                return;
            }
            CallAppNativeCard callAppNativeCard = (CallAppNativeCard) abstractC18152a;
            if (!(item instanceof ContactCard)) {
                return;
            }
            ContactCard contactCard = (ContactCard) item;
            View internalContentLayout = callAppNativeCard.getInternalContentLayout();
            if (internalContentLayout != null && (cardInitHeight = contactCard.getCardInitHeight()) > 0) {
                ViewUtils.m27287g(internalContentLayout, cardInitHeight);
            }
            contactCard.onCardBounded();
            if (!contactCard.isCardLockedWhenScreenIsLocked() || !this.f21330g) {
                z = false;
            }
            callAppNativeCard.setLocked(z);
        }
    }

    public boolean getIsScreenLocked() {
        return this.f21330g;
    }

    public void setIsScreenLocked(boolean z) {
        this.f21330g = z;
        for (int i = 0; i < this.f63053f.size(); i++) {
            ContactCard contactCard = (ContactCard) this.f63053f.get(i);
            AbstractC18152a cardView = contactCard.getCardView();
            if (cardView != null && (cardView instanceof CallAppNativeCard)) {
                ((CallAppNativeCard) cardView).setLocked(contactCard.isCardLockedWhenScreenIsLocked() && z);
            }
        }
    }
}
