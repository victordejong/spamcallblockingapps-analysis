package com.callapp.contacts.util.ads;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcom/callapp/contacts/util/ads/BidObjectCache;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/BidObjectCache.class */
public final class BidObjectCache {

    /* renamed from: a */
    public static final Companion f28004a = new Companion(null);

    /* renamed from: b */
    private static final HashMap<String, Object> f28005b = new HashMap<>();

    /* renamed from: c */
    private static final ReentrantLock f28006c = new ReentrantLock();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\u000b\u001a\u00020\u0001J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010\n\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;", "", "()V", "bidObjectCache", "Ljava/util/HashMap;", "", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "add", "", "key", "bidObject", "getAndRemove", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/BidObjectCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static Object m27233a(String key) {
            C18524p.m3840d(key, "key");
            try {
                BidObjectCache.f28006c.lock();
                Object obj = BidObjectCache.f28005b.get(key);
                if (obj != null) {
                    BidObjectCache.f28005b.remove(key);
                }
                BidObjectCache.f28006c.unlock();
                return obj;
            } catch (Throwable th) {
                BidObjectCache.f28006c.unlock();
                throw th;
            }
        }

        /* renamed from: a */
        public static void m27232a(String key, Object bidObject) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(bidObject, "bidObject");
            try {
                BidObjectCache.f28006c.lock();
                BidObjectCache.f28005b.put(key, bidObject);
                BidObjectCache.f28006c.unlock();
            } catch (Throwable th) {
                BidObjectCache.f28006c.unlock();
                throw th;
            }
        }
    }
}
