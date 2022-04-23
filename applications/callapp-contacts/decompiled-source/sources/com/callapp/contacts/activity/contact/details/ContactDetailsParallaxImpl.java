package com.callapp.contacts.activity.contact.details;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.contact.details.AppBarCollapseObserver;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl.class */
public class ContactDetailsParallaxImpl extends BaseContactDetailsParallaxImpl {
    public ContactDetailsParallaxImpl(PresentersContainer presentersContainer, View view, BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, j jVar, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        super(presentersContainer, view, positionChangedListener, flingListener, z, jVar, contactdetailsthemechangelistener);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl
    protected AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver() {
        return new BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsParallaxImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            public final void a(float f, float f2) {
                super.a(f, f2);
                float f3 = f;
                if (ContactDetailsParallaxImpl.this.p != 0) {
                    f3 = f;
                    if (Activities.isOrientationLandscape()) {
                        f3 = f;
                        if (f > ContactDetailsParallaxImpl.this.p) {
                            f3 = ContactDetailsParallaxImpl.this.p;
                        }
                    }
                }
                ContactDetailsParallaxImpl.this.f11983b.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.e.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f11984c.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.f11985d.setTranslationY(f3);
                ContactDetailsParallaxImpl.this.h.setAlpha(f2);
                ContactDetailsParallaxImpl.this.h.setTranslationY(f3);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            public final void b(float f, float f2) {
                super.b(f, f2);
            }
        };
    }
}
