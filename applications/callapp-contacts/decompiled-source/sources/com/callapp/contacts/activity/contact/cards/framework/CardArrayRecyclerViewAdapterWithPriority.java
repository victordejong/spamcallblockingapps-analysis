package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.util.ViewUtils;
import it.gmariotti.cardslib.library.recyclerview.a.a;
import it.gmariotti.cardslib.library.recyclerview.a.b;
import it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority.class */
public class CardArrayRecyclerViewAdapterWithPriority extends b {
    private boolean g;
    private CardEventsListener h;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener.class */
    public interface CardEventsListener {
        void a();

        void b();
    }

    public CardArrayRecyclerViewAdapterWithPriority(Context context, List<it.gmariotti.cardslib.library.a.b> list, CardEventsListener cardEventsListener) {
        super(context, list);
        this.h = cardEventsListener;
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.a.a
    /* renamed from: a */
    public final a.C0599a onCreateViewHolder(ViewGroup viewGroup, int i) {
        a.C0599a a2 = super.onCreateViewHolder(viewGroup, i);
        if (this.h != null) {
            ((CallAppNativeCard) a2.r).setCardEventsListener(this.h);
        }
        return a2;
    }

    public final void a(ContactCard contactCard) {
        boolean z;
        if (!a((it.gmariotti.cardslib.library.a.b) contactCard)) {
            int priority = contactCard.getPriority();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= this.f.size()) {
                    z = false;
                    break;
                } else if (priority < ((ContactCard) this.f.get(i)).getPriority()) {
                    z = true;
                    break;
                } else {
                    i2++;
                    i++;
                }
            }
            a(i2, contactCard);
            CardRecyclerView cardRecyclerView = getCardRecyclerView();
            if (z && (cardRecyclerView instanceof com.callapp.contacts.widget.recyclerviewext.CardRecyclerView)) {
                com.callapp.contacts.widget.recyclerviewext.CardRecyclerView cardRecyclerView2 = (com.callapp.contacts.widget.recyclerviewext.CardRecyclerView) cardRecyclerView;
                if (!cardRecyclerView2.isUserTouchedItOrItsChildrenOnce() && !cardRecyclerView2.isAutoScrolling()) {
                    cardRecyclerView.b(0);
                    CardEventsListener cardEventsListener = this.h;
                    if (cardEventsListener != null) {
                        cardEventsListener.b();
                    }
                }
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.recyclerview.a.a
    /* renamed from: a */
    public final void onBindViewHolder(a.C0599a aVar, int i) {
        int cardInitHeight;
        it.gmariotti.cardslib.library.view.a.a aVar2 = aVar.r;
        it.gmariotti.cardslib.library.a.b item = getItem(i);
        if (aVar2 != null) {
            aVar2.setForceReplaceInnerLayout(it.gmariotti.cardslib.library.a.b.equalsInnerLayout(aVar2.getCard(), item));
            aVar2.setRecycle(aVar.s);
            boolean z = true;
            aVar.s = true;
            aVar2.setCard(item);
            if ((item.getCardHeader() != null && item.getCardHeader().d()) || item.getViewToClickToExpand() != null) {
                setupExpandCollapseListAnimation(aVar2);
            }
            if (aVar2.isNative()) {
                CallAppNativeCard callAppNativeCard = (CallAppNativeCard) aVar2;
                if (item instanceof ContactCard) {
                    ContactCard contactCard = (ContactCard) item;
                    View internalContentLayout = callAppNativeCard.getInternalContentLayout();
                    if (internalContentLayout != null && (cardInitHeight = contactCard.getCardInitHeight()) > 0) {
                        ViewUtils.g(internalContentLayout, cardInitHeight);
                    }
                    contactCard.onCardBounded();
                    if (!contactCard.isCardLockedWhenScreenIsLocked() || !this.g) {
                        z = false;
                    }
                    callAppNativeCard.setLocked(z);
                }
            }
        }
    }

    public boolean getIsScreenLocked() {
        return this.g;
    }

    public void setIsScreenLocked(boolean z) {
        this.g = z;
        for (int i = 0; i < this.f.size(); i++) {
            ContactCard contactCard = (ContactCard) this.f.get(i);
            it.gmariotti.cardslib.library.view.a.a cardView = contactCard.getCardView();
            if (cardView != null && (cardView instanceof CallAppNativeCard)) {
                ((CallAppNativeCard) cardView).setLocked(contactCard.isCardLockedWhenScreenIsLocked() && z);
            }
        }
    }
}
