package com.callapp.contacts.util.ads;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/util/ads/BidObjectCache;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/BidObjectCache.class */
public final class BidObjectCache {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16056a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, Object> f16057b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantLock f16058c = new ReentrantLock();

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\u000b\u001a\u00020\u0001J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010\n\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/callapp/contacts/util/ads/BidObjectCache$Companion;", "", "()V", "bidObjectCache", "Ljava/util/HashMap;", "", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "add", "", "key", "bidObject", "getAndRemove", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/BidObjectCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Object a(String key) {
            p.d(key, "key");
            try {
                BidObjectCache.f16058c.lock();
                Object obj = BidObjectCache.f16057b.get(key);
                if (obj != null) {
                    BidObjectCache.f16057b.remove(key);
                }
                BidObjectCache.f16058c.unlock();
                return obj;
            } catch (Throwable th) {
                BidObjectCache.f16058c.unlock();
                throw th;
            }
        }

        public static void a(String key, Object bidObject) {
            p.d(key, "key");
            p.d(bidObject, "bidObject");
            try {
                BidObjectCache.f16058c.lock();
                BidObjectCache.f16057b.put(key, bidObject);
                BidObjectCache.f16058c.unlock();
            } catch (Throwable th) {
                BidObjectCache.f16058c.unlock();
                throw th;
            }
        }
    }
}
