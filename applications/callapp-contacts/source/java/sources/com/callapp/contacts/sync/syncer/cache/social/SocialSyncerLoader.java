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

    /* renamed from: f */
    private Class<? extends BaseSocialLoader> f27637f;

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        if (this.f25211a instanceof ArrayList) {
            ((ArrayList) this.f25211a).trimToSize();
        }
        CacheLoader.m28858a(loadContext, this.f25211a, this.f25279d);
        Set<ContactField> set = loadContext.f25324c;
        for (SimpleContactLoader simpleContactLoader : this.f25211a) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.m28867a(simpleContactLoader, set) && (!(simpleContactLoader instanceof BaseSocialLoader) || this.f27637f == simpleContactLoader.getClass())) {
                try {
                    mo27728a(simpleContactLoader, loadContext);
                } catch (RuntimeException e) {
                    CLog.m27586c(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                }
            }
        }
    }

    public void setLoadNotFromCache(Class<? extends BaseSocialLoader> cls) {
        this.f27637f = cls;
    }
}
