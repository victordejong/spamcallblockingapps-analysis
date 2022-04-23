package com.callapp.contacts.activity.contact.details;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.contact.details.AppBarCollapseObserver;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl.class */
public class EditUserProfileParallaxImpl extends BaseContactDetailsParallaxImpl {
    public EditUserProfileParallaxImpl(PresentersContainer presentersContainer, View view, BaseContactDetailsParallaxImpl.PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, j jVar, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        super(presentersContainer, view, positionChangedListener, flingListener, z, jVar, contactdetailsthemechangelistener);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl
    protected AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver() {
        return new BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl() { // from class: com.callapp.contacts.activity.contact.details.EditUserProfileParallaxImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            public final void a(float f, float f2) {
                super.a(f, f2);
                float f3 = f;
                if (EditUserProfileParallaxImpl.this.p != 0) {
                    f3 = f;
                    if (Activities.isOrientationLandscape()) {
                        f3 = f;
                        if (f > EditUserProfileParallaxImpl.this.p) {
                            f3 = EditUserProfileParallaxImpl.this.p;
                        }
                    }
                }
                EditUserProfileParallaxImpl.this.l.setTranslationY(f3);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl
            public final void b(float f, float f2) {
                super.b(f, f2);
                EditUserProfileParallaxImpl.this.i.getBadgeView().setAlpha(1.0f - f2);
            }
        };
    }
}
