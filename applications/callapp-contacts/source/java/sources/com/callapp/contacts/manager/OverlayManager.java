package com.callapp.contacts.manager;

import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
import com.callapp.framework.phone.Phone;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/OverlayManager.class */
public class OverlayManager implements ManagedLifecycle {

    /* renamed from: a */
    private final Object f25758a = new Object();

    /* renamed from: b */
    private WeakHashMap<ContactDetailsOverlayView, Phone> f25759b = new WeakHashMap<>();

    public static OverlayManager get() {
        return Singletons.get().getOverlayManager();
    }

    /* renamed from: a */
    public final ContactDetailsOverlayView m28523a(Object obj) {
        Map.Entry<ContactDetailsOverlayView, Phone> next;
        synchronized (this.f25758a) {
            Iterator<Map.Entry<ContactDetailsOverlayView, Phone>> it2 = this.f25759b.entrySet().iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (next.getKey().getClass() != obj);
            return next.getKey();
        }
    }

    /* renamed from: a */
    public final void m28527a() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this.f25758a) {
            copyOnWriteArrayList = new CopyOnWriteArrayList(this.f25759b.keySet());
        }
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            ContactDetailsOverlayView contactDetailsOverlayView = (ContactDetailsOverlayView) it2.next();
            if (contactDetailsOverlayView != null) {
                contactDetailsOverlayView.finishViewContainer(true);
            }
        }
    }

    /* renamed from: a */
    public final void m28526a(ContactDetailsOverlayView contactDetailsOverlayView) {
        synchronized (this.f25758a) {
            this.f25759b.remove(contactDetailsOverlayView);
        }
    }

    /* renamed from: a */
    public final void m28525a(ContactDetailsOverlayView contactDetailsOverlayView, Phone phone) {
        synchronized (this.f25758a) {
            this.f25759b.put(contactDetailsOverlayView, phone);
        }
    }

    /* renamed from: a */
    public final boolean m28524a(Phone phone) {
        boolean containsValue;
        synchronized (this.f25758a) {
            containsValue = this.f25759b.containsValue(phone);
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
