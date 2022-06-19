package com.callapp.contacts.loader;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Objects;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.WebsitesSocialIDsData;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/WebsitesSocialIDParsingLoader.class */
public class WebsitesSocialIDParsingLoader extends SimpleContactLoader {
    /* renamed from: a */
    private void m28875a(LoadContext loadContext, WebsitesSocialIDsData websitesSocialIDsData) {
        final ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        WebsitesSocialIDsData websitesSocialIDsData2 = contactData.getWebsitesSocialIDsData();
        contactData.setWebsitesSocialIDsData(websitesSocialIDsData);
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (set.contains(ContactField.facebookId)) {
            if (!Objects.m31915a(websitesSocialIDsData2 == null ? null : websitesSocialIDsData2.getFacebookId(), websitesSocialIDsData == null ? null : websitesSocialIDsData.getFacebookId())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.WebsitesSocialIDParsingLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFacebookId();
                    }
                });
            }
        }
        if (set.contains(ContactField.twitterScreenName)) {
            if (!Objects.m31915a(websitesSocialIDsData2 == null ? null : websitesSocialIDsData2.getTwitterScreenName(), websitesSocialIDsData == null ? null : websitesSocialIDsData.getTwitterScreenName())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.WebsitesSocialIDParsingLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateTwitterScreenName();
                    }
                });
            }
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        synchronized (contactData.getLock(WebsitesSocialIDParsingLoader.class)) {
            WebsitesSocialIDsData websitesSocialIDsData = contactData.getWebsitesSocialIDsData();
            Collection<JSONWebsite> websites = contactData.getWebsites();
            WebsitesSocialIDsData websitesSocialIDsData2 = websitesSocialIDsData;
            if (CollectionUtils.m26068b(websites)) {
                Iterator<JSONWebsite> it2 = websites.iterator();
                while (true) {
                    websitesSocialIDsData2 = websitesSocialIDsData;
                    if (!it2.hasNext()) {
                        break;
                    }
                    String websiteUrl = it2.next().getWebsiteUrl();
                    if (contactData.getFacebookId() == null && (websitesSocialIDsData == null || websitesSocialIDsData.getFacebookId() == null)) {
                        String j = FacebookHelper.get().m29234j(websiteUrl);
                        if (StringUtils.m26045b((CharSequence) j)) {
                            WebsitesSocialIDsData websitesSocialIDsData3 = websitesSocialIDsData;
                            if (websitesSocialIDsData == null) {
                                websitesSocialIDsData3 = new WebsitesSocialIDsData();
                            }
                            websitesSocialIDsData3.setFacebookId(new JSONSocialNetworkID(j, false));
                            websitesSocialIDsData = websitesSocialIDsData3;
                        }
                    }
                    if (contactData.getTwitterScreenName() == null && (websitesSocialIDsData == null || websitesSocialIDsData.getTwitterScreenName() == null)) {
                        String j2 = TwitterHelper.get().m29234j(websiteUrl);
                        if (StringUtils.m26045b((CharSequence) j2)) {
                            WebsitesSocialIDsData websitesSocialIDsData4 = websitesSocialIDsData;
                            if (websitesSocialIDsData == null) {
                                websitesSocialIDsData4 = new WebsitesSocialIDsData();
                            }
                            websitesSocialIDsData4.setTwitterScreenName(new JSONSocialNetworkID(j2, false));
                            websitesSocialIDsData = websitesSocialIDsData4;
                        }
                    }
                }
            }
            m28875a(loadContext, websitesSocialIDsData2);
            String cacheKey = loadContext.f25322a.getCacheKey(WebsitesSocialIDsData.class);
            if (websitesSocialIDsData2 != null) {
                CacheManager.get().m28388a(WebsitesSocialIDsData.class, cacheKey, websitesSocialIDsData2, 2131427414);
            } else {
                CacheManager.get().m28390a(WebsitesSocialIDsData.class, cacheKey);
            }
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28789b(LoadContext loadContext) {
        WebsitesSocialIDsData websitesSocialIDsData = (WebsitesSocialIDsData) CacheManager.get().m28378b(WebsitesSocialIDsData.class, loadContext.f25322a.getCacheKey(WebsitesSocialIDsData.class), false);
        if (websitesSocialIDsData != null) {
            m28875a(loadContext, websitesSocialIDsData);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.websites);
    }
}
