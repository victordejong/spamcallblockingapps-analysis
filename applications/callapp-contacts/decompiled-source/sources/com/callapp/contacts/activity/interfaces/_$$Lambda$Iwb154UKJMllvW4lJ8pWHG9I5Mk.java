package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk.class */
public final /* synthetic */ class _$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk implements EventType {
    public static final /* synthetic */ -$.Lambda.Iwb154UKJMllvW4lJ8pWHG9I5Mk INSTANCE = new _$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk();

    private /* synthetic */ _$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnSlideMenuOpenedListener) obj).a(((Boolean) obj2).booleanValue());
    }
}
