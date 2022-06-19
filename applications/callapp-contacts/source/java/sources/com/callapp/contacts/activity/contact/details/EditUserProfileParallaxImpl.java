package com.callapp.contacts.activity.contact.details;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.contact.details.AppBarCollapseObserver;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl.class */
public class EditUserProfileParallaxImpl extends BaseContactDetailsParallaxImpl {
    public EditUserProfileParallaxImpl(PresentersContainer presentersContainer, View view, BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, AbstractC1253j abstractC1253j, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        super(presentersContainer, view, positionChangedListener, flingListener, z, abstractC1253j, contactdetailsthemechangelistener);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl
    protected AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver() {
        return new BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl() { // from class: com.callapp.contacts.activity.contact.details.EditUserProfileParallaxImpl.1
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            /* renamed from: a */
            public final void mo30931a(float f, float f2) {
                super.mo30931a(f, f2);
                float f3 = f;
                if (EditUserProfileParallaxImpl.this.f21686p != 0) {
                    f3 = f;
                    if (Activities.isOrientationLandscape()) {
                        f3 = f;
                        if (f > EditUserProfileParallaxImpl.this.f21686p) {
                            f3 = EditUserProfileParallaxImpl.this.f21686p;
                        }
                    }
                }
                EditUserProfileParallaxImpl.this.f21682l.setTranslationY(f3);
            }

            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            /* renamed from: b */
            public final void mo30930b(float f, float f2) {
                super.mo30930b(f, f2);
                EditUserProfileParallaxImpl.this.f21679i.getBadgeView().setAlpha(1.0f - f2);
            }
        };
    }
}
