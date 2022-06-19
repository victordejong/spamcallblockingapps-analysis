package com.callapp.contacts.activity.contact.details.incallfragment;

import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.widget.DrawingViewWithCallback;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/AnsweringMethodViewControllerFactory.class */
class AnsweringMethodViewControllerFactory {
    AnsweringMethodViewControllerFactory() {
    }

    /* renamed from: a */
    public static BaseAnsweringMethodViewController m30899a(int i, ButtonSet buttonSet, ViewGroup viewGroup, DrawingViewWithCallback drawingViewWithCallback, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        return i != 1 ? new SlideAnsweringMethodViewController(viewGroup, buttonSet, inCallActionFragmentInterface) : new TwoButtonAnsweringMethodViewController(viewGroup, buttonSet, drawingViewWithCallback, inCallActionFragmentInterface);
    }
}
