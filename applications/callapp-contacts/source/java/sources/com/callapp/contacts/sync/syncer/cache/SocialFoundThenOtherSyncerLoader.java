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

    /* renamed from: f */
    private Map<Class<? extends SimpleContactLoader>, ShouldLoadLogic> f27632f = new HashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic.class */
    public interface ShouldLoadLogic {
        /* renamed from: a */
        boolean mo27729a(SimpleContactLoader simpleContactLoader, ContactData contactData);
    }

    /* renamed from: a */
    private static void m27731a(LoadContext loadContext, List<SimpleContactLoader> list) {
        for (SimpleContactLoader simpleContactLoader : (SimpleContactLoader[]) list.toArray(new SimpleContactLoader[list.size()])) {
            BaseSocialLoader baseSocialLoader = (BaseSocialLoader) simpleContactLoader;
            if (ContactDataUtils.getSocialNetworkID(loadContext.f25322a, baseSocialLoader.getSocialHelper().getApiConstantNetworkId()) == null) {
                list.remove(baseSocialLoader);
                list.add(baseSocialLoader);
            }
        }
    }

    /* renamed from: b */
    private void m27730b(LoadContext loadContext, List<SimpleContactLoader> list) {
        Set<ContactField> set = loadContext.f25324c;
        for (SimpleContactLoader simpleContactLoader : list) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.m28867a(simpleContactLoader, set)) {
                if (this.f27632f.containsKey(simpleContactLoader.getClass()) ? this.f27632f.get(simpleContactLoader.getClass()).mo27729a(simpleContactLoader, loadContext.f25322a) : true) {
                    try {
                        mo27728a(simpleContactLoader, loadContext);
                    } catch (RuntimeException e) {
                        CLog.m27607a(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final SocialFoundThenOtherSyncerLoader m27732a(SimpleContactLoader simpleContactLoader, ShouldLoadLogic shouldLoadLogic) {
        if (shouldLoadLogic != null) {
            this.f27632f.put(simpleContactLoader.getClass(), shouldLoadLogic);
        }
        return (SocialFoundThenOtherSyncerLoader) super.m28957a(simpleContactLoader);
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        if (this.f25211a instanceof ArrayList) {
            ((ArrayList) this.f25211a).trimToSize();
        }
        boolean z = false;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (SimpleContactLoader simpleContactLoader : this.f25211a) {
            if (simpleContactLoader instanceof BaseSocialLoader) {
                arrayList2.add(simpleContactLoader);
                z = true;
            } else if (z) {
                arrayList3.add(simpleContactLoader);
            } else {
                arrayList.add(simpleContactLoader);
            }
        }
        m27730b(loadContext, arrayList);
        m27731a(loadContext, arrayList2);
        m27730b(loadContext, arrayList2);
        m27730b(loadContext, arrayList3);
    }
}
