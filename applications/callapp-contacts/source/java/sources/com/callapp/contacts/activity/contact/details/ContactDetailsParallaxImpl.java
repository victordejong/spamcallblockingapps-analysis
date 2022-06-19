package com.callapp.contacts.activity.contact.details;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.contact.details.AppBarCollapseObserver;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl.class */
public class ContactDetailsParallaxImpl extends BaseContactDetailsParallaxImpl {
    public ContactDetailsParallaxImpl(PresentersContainer presentersContainer, View view, BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, AbstractC1253j abstractC1253j, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        super(presentersContainer, view, positionChangedListener, flingListener, z, abstractC1253j, contactdetailsthemechangelistener);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl
    protected AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver() {
        return new BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsParallaxImpl.1
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            /* renamed from: a */
            public final void mo30931a(float f, float f2) {
                super.mo30931a(f, f2);
                float f3 = f;
                if (ContactDetailsParallaxImpl.this.f21686p != 0) {
                    f3 = f;
                    if (Activities.isOrientationLandscape()) {
                        f3 = f;
                        if (f > ContactDetailsParallaxImpl.this.f21686p) {
                            f3 = ContactDetailsParallaxImpl.this.f21686p;
                        }
                    }
                }
                ContactDetailsParallaxImpl.this.f21672b.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f21675e.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f21673c.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f21674d.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f21678h.setAlpha(f2);
                ContactDetailsParallaxImpl.this.f21678h.setTranslationY(f3);
            }

            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            /* renamed from: b */
            public final void mo30930b(float f, float f2) {
                super.mo30930b(f, f2);
            }
        };
    }
}
