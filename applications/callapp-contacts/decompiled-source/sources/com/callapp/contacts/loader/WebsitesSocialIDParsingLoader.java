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
    private void a(LoadContext loadContext, WebsitesSocialIDsData websitesSocialIDsData) {
        final ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        WebsitesSocialIDsData websitesSocialIDsData2 = contactData.getWebsitesSocialIDsData();
        contactData.setWebsitesSocialIDsData(websitesSocialIDsData);
        MultiTaskRunner b2 = loadContext.b();
        JSONSocialNetworkID jSONSocialNetworkID = null;
        if (set.contains(ContactField.facebookId)) {
            if (!Objects.a(websitesSocialIDsData2 == null ? null : websitesSocialIDsData2.getFacebookId(), websitesSocialIDsData == null ? null : websitesSocialIDsData.getFacebookId())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.WebsitesSocialIDParsingLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFacebookId();
                    }
                });
            }
        }
        if (set.contains(ContactField.twitterScreenName)) {
            JSONSocialNetworkID twitterScreenName = websitesSocialIDsData2 == null ? null : websitesSocialIDsData2.getTwitterScreenName();
            if (websitesSocialIDsData != null) {
                jSONSocialNetworkID = websitesSocialIDsData.getTwitterScreenName();
            }
            if (!Objects.a(twitterScreenName, jSONSocialNetworkID)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.WebsitesSocialIDParsingLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateTwitterScreenName();
                    }
                });
            }
        }
        loadContext.a(b2, this.f14493d);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        synchronized (contactData.getLock(WebsitesSocialIDParsingLoader.class)) {
            WebsitesSocialIDsData websitesSocialIDsData = contactData.getWebsitesSocialIDsData();
            Collection<JSONWebsite> websites = contactData.getWebsites();
            WebsitesSocialIDsData websitesSocialIDsData2 = websitesSocialIDsData;
            if (CollectionUtils.b(websites)) {
                Iterator<JSONWebsite> it2 = websites.iterator();
                while (true) {
                    websitesSocialIDsData2 = websitesSocialIDsData;
                    if (!it2.hasNext()) {
                        break;
                    }
                    String websiteUrl = it2.next().getWebsiteUrl();
                    if (contactData.getFacebookId() == null && (websitesSocialIDsData == null || websitesSocialIDsData.getFacebookId() == null)) {
                        String j = FacebookHelper.get().j(websiteUrl);
                        if (StringUtils.b((CharSequence) j)) {
                            WebsitesSocialIDsData websitesSocialIDsData3 = websitesSocialIDsData;
                            if (websitesSocialIDsData == null) {
                                websitesSocialIDsData3 = new WebsitesSocialIDsData();
                            }
                            websitesSocialIDsData3.setFacebookId(new JSONSocialNetworkID(j, false));
                            websitesSocialIDsData = websitesSocialIDsData3;
                        }
                    }
                    if (contactData.getTwitterScreenName() == null && (websitesSocialIDsData == null || websitesSocialIDsData.getTwitterScreenName() == null)) {
                        String j2 = TwitterHelper.get().j(websiteUrl);
                        if (StringUtils.b((CharSequence) j2)) {
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
            a(loadContext, websitesSocialIDsData2);
            String cacheKey = loadContext.f14535a.getCacheKey(WebsitesSocialIDsData.class);
            if (websitesSocialIDsData2 != null) {
                CacheManager.get().a(WebsitesSocialIDsData.class, cacheKey, websitesSocialIDsData2, 2131427414);
            } else {
                CacheManager.get().a(WebsitesSocialIDsData.class, cacheKey);
            }
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        WebsitesSocialIDsData websitesSocialIDsData = (WebsitesSocialIDsData) CacheManager.get().b(WebsitesSocialIDsData.class, loadContext.f14535a.getCacheKey(WebsitesSocialIDsData.class), false);
        if (websitesSocialIDsData != null) {
            a(loadContext, websitesSocialIDsData);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.websites);
    }
}
