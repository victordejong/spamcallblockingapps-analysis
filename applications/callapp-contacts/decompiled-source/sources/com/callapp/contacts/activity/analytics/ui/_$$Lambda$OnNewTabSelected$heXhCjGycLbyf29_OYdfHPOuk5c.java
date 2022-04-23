package com.callapp.contacts.activity.analytics.ui;

import com.callapp.contacts.activity.analytics.ui.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/_$$Lambda$OnNewTabSelected$heXhCjGycLbyf29_OYdfHPOuk5c.class */
public final /* synthetic */ class _$$Lambda$OnNewTabSelected$heXhCjGycLbyf29_OYdfHPOuk5c implements EventType {
    public static final /* synthetic */ -$.Lambda.OnNewTabSelected.heXhCjGycLbyf29-OYdfHPOuk5c INSTANCE = new _$$Lambda$OnNewTabSelected$heXhCjGycLbyf29_OYdfHPOuk5c();

    private /* synthetic */ _$$Lambda$OnNewTabSelected$heXhCjGycLbyf29_OYdfHPOuk5c() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnNewTabSelected) obj).onNewSelected();
    }
}
