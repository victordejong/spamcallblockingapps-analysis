package com.callapp.contacts.sync.syncer.cache.social;

import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.sync.syncer.cache.SyncerLoader;
import com.callapp.contacts.util.CLog;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader.class */
public class SocialSyncerLoader extends SyncerLoader {
    private Class<? extends BaseSocialLoader> f;

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        if (this.f14428a instanceof ArrayList) {
            ((ArrayList) this.f14428a).trimToSize();
        }
        CacheLoader.a(loadContext, this.f14428a, this.f14493d);
        Set<ContactField> set = loadContext.f14537c;
        for (SimpleContactLoader simpleContactLoader : this.f14428a) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.a(simpleContactLoader, set) && (!(simpleContactLoader instanceof BaseSocialLoader) || this.f == simpleContactLoader.getClass())) {
                try {
                    a(simpleContactLoader, loadContext);
                } catch (RuntimeException e) {
                    CLog.c(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                }
            }
        }
    }

    public void setLoadNotFromCache(Class<? extends BaseSocialLoader> cls) {
        this.f = cls;
    }
}
