package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import it.gmariotti.cardslib.library.view.CardViewNative;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard.class */
public class CallAppNativeCard extends CardViewNative {

    /* renamed from: x */
    private boolean f21328x;

    /* renamed from: y */
    private CardArrayRecyclerViewAdapterWithPriority.CardEventsListener f21329y;

    public CallAppNativeCard(Context context) {
        this(context, null, 0);
    }

    public CallAppNativeCard(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppNativeCard(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f21328x) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f21328x) {
            if (action == 0) {
                return true;
            }
            if (action == 1) {
                CardArrayRecyclerViewAdapterWithPriority.CardEventsListener cardEventsListener = this.f21329y;
                if (cardEventsListener == null) {
                    return true;
                }
                cardEventsListener.mo30941a();
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCardEventsListener(CardArrayRecyclerViewAdapterWithPriority.CardEventsListener cardEventsListener) {
        this.f21329y = cardEventsListener;
    }

    public void setLocked(boolean z) {
        this.f21328x = z;
    }
}
