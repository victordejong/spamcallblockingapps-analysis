package com.callapp.contacts.sync.syncer.cache;

import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.CLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader.class */
public class SocialFoundThenOtherSyncerLoader extends SyncerLoader {
    private Map<Class<? extends SimpleContactLoader>, ShouldLoadLogic> f = new HashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic.class */
    public interface ShouldLoadLogic {
        boolean a(SimpleContactLoader simpleContactLoader, ContactData contactData);
    }

    private static void a(LoadContext loadContext, List<SimpleContactLoader> list) {
        for (SimpleContactLoader simpleContactLoader : (SimpleContactLoader[]) list.toArray(new SimpleContactLoader[list.size()])) {
            BaseSocialLoader baseSocialLoader = (BaseSocialLoader) simpleContactLoader;
            if (ContactDataUtils.getSocialNetworkID(loadContext.f14535a, baseSocialLoader.getSocialHelper().getApiConstantNetworkId()) == null) {
                list.remove(baseSocialLoader);
                list.add(baseSocialLoader);
            }
        }
    }

    private void b(LoadContext loadContext, List<SimpleContactLoader> list) {
        Set<ContactField> set = loadContext.f14537c;
        for (SimpleContactLoader simpleContactLoader : list) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.a(simpleContactLoader, set)) {
                if (this.f.containsKey(simpleContactLoader.getClass()) ? this.f.get(simpleContactLoader.getClass()).a(simpleContactLoader, loadContext.f14535a) : true) {
                    try {
                        a(simpleContactLoader, loadContext);
                    } catch (RuntimeException e) {
                        CLog.a(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SocialFoundThenOtherSyncerLoader a(SimpleContactLoader simpleContactLoader, ShouldLoadLogic shouldLoadLogic) {
        if (shouldLoadLogic != null) {
            this.f.put(simpleContactLoader.getClass(), shouldLoadLogic);
        }
        return (SocialFoundThenOtherSyncerLoader) super.a(simpleContactLoader);
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        if (this.f14428a instanceof ArrayList) {
            ((ArrayList) this.f14428a).trimToSize();
        }
        boolean z = false;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (SimpleContactLoader simpleContactLoader : this.f14428a) {
            if (simpleContactLoader instanceof BaseSocialLoader) {
                arrayList2.add(simpleContactLoader);
                z = true;
            } else if (z) {
                arrayList3.add(simpleContactLoader);
            } else {
                arrayList.add(simpleContactLoader);
            }
        }
        b(loadContext, arrayList);
        a(loadContext, arrayList2);
        b(loadContext, arrayList2);
        b(loadContext, arrayList3);
    }
}
