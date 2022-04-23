package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import it.gmariotti.cardslib.library.view.CardViewNative;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard.class */
public class CallAppNativeCard extends CardViewNative {
    private boolean x;
    private CardArrayRecyclerViewAdapterWithPriority.CardEventsListener y;

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
        if (this.x) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.x) {
            if (action == 0) {
                return true;
            }
            if (action == 1) {
                CardArrayRecyclerViewAdapterWithPriority.CardEventsListener cardEventsListener = this.y;
                if (cardEventsListener == null) {
                    return true;
                }
                cardEventsListener.a();
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCardEventsListener(CardArrayRecyclerViewAdapterWithPriority.CardEventsListener cardEventsListener) {
        this.y = cardEventsListener;
    }

    public void setLocked(boolean z) {
        this.x = z;
    }
}
