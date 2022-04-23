package com.callapp.contacts.manager;

import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.framework.phone.Phone;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/OverlayManager.class */
public class OverlayManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private final Object f14917a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private WeakHashMap<ContactDetailsOverlayView, Phone> f14918b = new WeakHashMap<>();

    public static OverlayManager get() {
        return Singletons.get().getOverlayManager();
    }

    public final ContactDetailsOverlayView a(Object obj) {
        Map.Entry<ContactDetailsOverlayView, Phone> next;
        synchronized (this.f14917a) {
            Iterator<Map.Entry<ContactDetailsOverlayView, Phone>> it2 = this.f14918b.entrySet().iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (next.getKey().getClass() != obj);
            return next.getKey();
        }
    }

    public final void a() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this.f14917a) {
            copyOnWriteArrayList = new CopyOnWriteArrayList(this.f14918b.keySet());
        }
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            ContactDetailsOverlayView contactDetailsOverlayView = (ContactDetailsOverlayView) it2.next();
            if (contactDetailsOverlayView != null) {
                contactDetailsOverlayView.finishViewContainer(true);
            }
        }
    }

    public final void a(ContactDetailsOverlayView contactDetailsOverlayView) {
        synchronized (this.f14917a) {
            this.f14918b.remove(contactDetailsOverlayView);
        }
    }

    public final void a(ContactDetailsOverlayView contactDetailsOverlayView, Phone phone) {
        synchronized (this.f14917a) {
            this.f14918b.put(contactDetailsOverlayView, phone);
        }
    }

    public final boolean a(Phone phone) {
        boolean containsValue;
        synchronized (this.f14917a) {
            containsValue = this.f14918b.containsValue(phone);
        }
        return containsValue;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
