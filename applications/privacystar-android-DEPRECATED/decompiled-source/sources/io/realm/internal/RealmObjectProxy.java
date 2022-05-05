package io.realm.internal;

import io.realm.ProxyState;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmObjectProxy.class */
public interface RealmObjectProxy extends RealmModel {

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmObjectProxy$CacheData.class */
    public static class CacheData<E extends RealmModel> {
        public int minDepth;
        public final E object;

        public CacheData(int i, E e) {
            this.minDepth = i;
            this.object = e;
        }
    }

    void realm$injectObjectContext();

    ProxyState realmGet$proxyState();
}
