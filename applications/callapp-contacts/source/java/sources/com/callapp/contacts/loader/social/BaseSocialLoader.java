package com.callapp.contacts.loader.social;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.BaseLoaderTask;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.LoaderFlags;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader.class */
public abstract class BaseSocialLoader<T extends SocialData> extends SimpleContactLoader implements NetworkDataLoader {

    /* renamed from: b */
    private JSONSocialNetworkID f25519b = null;

    /* renamed from: a */
    protected List<BaseSocialLoader<T>.BaseSearcher> f25518a = new LinkedList();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher.class */
    public abstract class BaseSearcher {
        public BaseSearcher() {
            BaseSocialLoader.this = r4;
        }

        /* renamed from: a */
        private static SocialSearchResults m28781a(String str, Collection<String> collection, boolean z, List<PersonData> list) {
            String id = list.get(0).getId();
            return (!StringUtils.m26045b((CharSequence) id) || collection.contains(id)) ? null : new SocialSearchResults(str, list, new JSONSocialNetworkID(id, z));
        }

        /* renamed from: a */
        public SocialSearchResults mo28774a(String str, ContactData contactData, Collection<String> collection, boolean z, List<PersonData> list) {
            SocialSearchResults socialSearchResults;
            if (list.size() == 1) {
                socialSearchResults = m28781a(str, collection, z, list);
            } else {
                ArrayList arrayList = new ArrayList();
                for (PersonData personData : list) {
                    if (StringUtils.m26044b((Object) str, (Object) personData.getName())) {
                        arrayList.add(personData);
                    }
                }
                SocialSearchResults m28781a = arrayList.size() == 1 ? m28781a(str, collection, false, (List<PersonData>) arrayList) : null;
                SocialSearchResults socialSearchResults2 = m28781a;
                if (m28781a == null) {
                    socialSearchResults2 = new SocialSearchResults(str, list);
                }
                socialSearchResults = socialSearchResults2;
            }
            return socialSearchResults;
        }

        /* renamed from: a */
        public abstract boolean mo28777a(ContactData contactData);

        /* renamed from: a */
        public boolean mo28776a(ContactData contactData, String str) {
            return true;
        }

        /* renamed from: a */
        public final boolean m28782a(String str, ContactData contactData, Collection<String> collection, boolean z) {
            if (StringUtils.m26059a((CharSequence) str)) {
                return false;
            }
            List<PersonData> m28790a = BaseSocialLoader.this.m28790a(str);
            if (CollectionUtils.m26076a(m28790a)) {
                return false;
            }
            DataSource dataSource = BaseSocialLoader.this.getDataSource();
            SocialSearchResults mo28774a = mo28774a(str, contactData, collection, z, m28790a);
            BaseSocialLoader.this.m28792a(contactData, mo28774a);
            CacheManager.get().m28389a((Class<String>) SocialSearchResults.class, contactData.getCacheKey(dataSource.socialSearchField), (String) mo28774a);
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher.class */
    public class FriendsExactNameSearcher extends BaseSocialLoader<T>.BaseSearcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FriendsExactNameSearcher() {
            super();
            BaseSocialLoader.this = r4;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public boolean mo28777a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            for (String str : contactData.getNames()) {
                if (m28780a(str, contactData, contactData.isNameSure(str), negatives)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo28776a(ContactData contactData, String str) {
            return super.mo28776a(contactData, str);
        }

        /* renamed from: a */
        final boolean m28780a(String str, ContactData contactData, boolean z, Set<String> set) {
            try {
                Map<String, Friend> mo29103a = BaseSocialLoader.this.getSocialHelper().mo29103a(true, true);
                if (CollectionUtils.m26071a(mo29103a)) {
                    return false;
                }
                String m26016l = StringUtils.m26016l(str);
                if (!StringUtils.m26018k(m26016l)) {
                    return false;
                }
                for (Friend friend : mo29103a.values()) {
                    if (Objects.m31915a(m26016l, friend.fullName) && StringUtils.m26045b((CharSequence) friend.f26734id) && !set.contains(friend.f26734id)) {
                        if (BaseSocialLoader.this.getSocialHelper().mo29108a(contactData) != null) {
                            return true;
                        }
                        JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(friend.f26734id, z);
                        contactData.assertDeviceDataExist();
                        BaseSocialLoader.this.getSocialHelper().m29245a(contactData, jSONSocialNetworkID.getId(), z);
                        return true;
                    }
                }
                return false;
            } catch (QuotaReachedException e) {
                return false;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher.class */
    public class FullNameSearcher extends BaseSocialLoader<T>.BaseSearcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private FullNameSearcher() {
            super();
            BaseSocialLoader.this = r4;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28777a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            String m26016l = StringUtils.m26016l(contactData.getFullName());
            return StringUtils.m26045b((CharSequence) m26016l) && StringUtils.m26018k(m26016l) && m28782a(m26016l, contactData, (Collection<String>) negatives, false);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher.class */
    public class NamesSearcher extends BaseSocialLoader<T>.BaseSearcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private NamesSearcher() {
            super();
            BaseSocialLoader.this = r4;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28777a(ContactData contactData) {
            Collection<String> names = contactData.getNames();
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            String m26016l = StringUtils.m26016l(contactData.getFullName());
            for (String str : names) {
                String m26016l2 = StringUtils.m26016l(str);
                if (StringUtils.m26018k(m26016l2) && !m26016l2.equals(m26016l) && m28782a(m26016l2, contactData, (Collection<String>) negatives, false)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher.class */
    public class UserNameFromEmailSearcher extends BaseSocialLoader<T>.FriendsExactNameSearcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private UserNameFromEmailSearcher() {
            super();
            BaseSocialLoader.this = r4;
        }

        /* renamed from: a */
        private static String m28779a(JSONEmail jSONEmail) {
            if (jSONEmail == null || StringUtils.m26059a((CharSequence) jSONEmail.getEmail())) {
                return null;
            }
            String m26012p = StringUtils.m26012p(jSONEmail.getEmail());
            if (StringUtils.m26059a((CharSequence) m26012p)) {
                return null;
            }
            String trim = RegexUtils.m31887n(m26012p).trim();
            if (!StringUtils.m26059a((CharSequence) trim)) {
                return trim;
            }
            return null;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.FriendsExactNameSearcher, com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28777a(ContactData contactData) {
            Collection<JSONEmail> emails = contactData.getEmails();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (JSONEmail jSONEmail : emails) {
                String m28779a = m28779a(jSONEmail);
                if (StringUtils.m26045b((CharSequence) m28779a)) {
                    linkedHashMap.put(m28779a, Boolean.valueOf(contactData.isEmailFromDevice(jSONEmail)));
                }
            }
            if (CollectionUtils.m26071a(linkedHashMap)) {
                return false;
            }
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                if (m28780a((String) entry.getKey(), contactData, ((Boolean) entry.getValue()).booleanValue(), negatives)) {
                    return true;
                }
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String m26016l = StringUtils.m26016l((String) entry2.getKey());
                if (StringUtils.m26018k(m26016l) && m28782a(m26016l, contactData, (Collection<String>) negatives, false)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.FriendsExactNameSearcher, com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28776a(ContactData contactData, String str) {
            for (JSONEmail jSONEmail : contactData.getEmails()) {
                if (str.equals(m28779a(jSONEmail))) {
                    return true;
                }
            }
            return false;
        }
    }

    public BaseSocialLoader() {
        mo28778a();
    }

    /* renamed from: a */
    private void m28794a(LoadContext loadContext, T t) {
        ContactData contactData = loadContext.f25322a;
        T m28783f = m28783f(contactData);
        m28791a(contactData, (ContactData) t);
        if (!Objects.m31915a(m28783f, t)) {
            mo28772a(loadContext, m28783f, t);
        }
    }

    /* renamed from: a */
    private void m28791a(ContactData contactData, T t) {
        ReflectionUtils.m27422a(contactData, getDataSource().socialDataField.name(), t);
    }

    /* renamed from: b */
    public void m28788b(ContactData contactData) {
        if (m28786c(contactData)) {
            return;
        }
        for (BaseSocialLoader<T>.BaseSearcher baseSearcher : this.f25518a) {
            if (Thread.currentThread().isInterrupted()) {
                CLog.m27611a(getClass(), "The search thread is interrrupted and therefore will stopped");
                return;
            }
            synchronized (contactData.getCacheKey((Class) baseSearcher.getClass()).intern()) {
                if (baseSearcher.mo28777a(contactData)) {
                    return;
                }
            }
        }
        m28792a(contactData, (SocialSearchResults) null);
    }

    /* renamed from: b */
    private void m28787b(ContactData contactData, SocialSearchResults socialSearchResults) {
        ReflectionUtils.m27422a(contactData, getDataSource().socialSearchField.name(), socialSearchResults);
    }

    /* renamed from: c */
    private boolean m28786c(ContactData contactData) {
        SocialSearchResults m28785d = m28785d(contactData);
        if (m28785d == null || m28785d.isExpired(2131427389)) {
            return false;
        }
        String str = m28785d.term;
        for (BaseSocialLoader<T>.BaseSearcher baseSearcher : this.f25518a) {
            if (baseSearcher.mo28776a(contactData, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    private SocialSearchResults m28785d(ContactData contactData) {
        return (SocialSearchResults) ReflectionUtils.m27423a(contactData, getDataSource().socialSearchField.name());
    }

    /* renamed from: e */
    private JSONSocialNetworkID m28784e(ContactData contactData) {
        return (JSONSocialNetworkID) ReflectionUtils.m27423a(contactData, getDataSource().socialIdField.name());
    }

    /* renamed from: f */
    private T m28783f(ContactData contactData) {
        return (T) ReflectionUtils.m27423a(contactData, getDataSource().socialDataField.name());
    }

    /* renamed from: a */
    protected final List<PersonData> m28790a(String str) {
        try {
            return getSocialHelper().m29238b(str, false);
        } catch (SearchIsNotAvailableExecption e) {
            return null;
        }
    }

    /* renamed from: a */
    public void mo28778a() {
        this.f25518a.add(new FriendsExactNameSearcher());
        this.f25518a.add(new FullNameSearcher());
        this.f25518a.add(new NamesSearcher());
        this.f25518a.add(new UserNameFromEmailSearcher());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        T m28783f;
        boolean m28865a = loadContext.m28865a((Class<? extends ContactDataLoader>) getClass());
        if (m28865a) {
            CLog.m27610a(getClass(), "Skipped loading %s", loadContext.f25322a.getId());
        }
        if (!(CollectionUtils.m26070a((Set) loadContext.f25323b, (Set) getLoadedFields()) && !m28865a)) {
            return;
        }
        Set<ContactField> set = loadContext.f25324c;
        final ContactData contactData = loadContext.f25322a;
        JSONSocialNetworkID m28784e = m28784e(contactData);
        boolean z = set == null;
        boolean z2 = z || set.contains(getDataSource().socialIdField);
        JSONSocialNetworkID jSONSocialNetworkID = m28784e;
        boolean z3 = z2;
        if ((m28784e == null || (contactData.getDataSource(getDataSource().socialIdField) == DataSource.socialSearch)) && loadContext.f25323b.contains(getDataSource().socialSearchField) && (contactData.getDataSource(ContactField.genomeData) == DataSource.genome) && !contactData.isForceNoSocialId(getDataSource())) {
            if (z) {
                m28788b(contactData);
                JSONSocialNetworkID m28784e2 = m28784e(contactData);
                jSONSocialNetworkID = m28784e;
                z3 = z2;
                if (!Objects.m31915a(m28784e2, m28784e)) {
                    jSONSocialNetworkID = m28784e2;
                    z3 = true;
                }
            } else {
                if (set != null && set.contains(ContactField.fullName)) {
                    m28787b(contactData, null);
                }
                try {
                    LoadContext.m28866a(new BaseLoaderTask(this, loadContext) { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            try {
                                BaseSocialLoader.this.m28788b(contactData);
                            } catch (QuotaReachedException | UnauthorizedAccessErrorException e) {
                                this.f25214a.m28864a((Class<? extends ContactDataLoader>) BaseSocialLoader.this.getClass(), (Throwable) e);
                                this.f25214a.m28863a(e);
                            }
                        }
                    });
                    jSONSocialNetworkID = m28784e;
                    z3 = z2;
                } catch (RejectedExecutionException e) {
                    CLog.m27608a(getClass(), e, "Safely ignoring RejectedExecutionException");
                    return;
                }
            }
        }
        if (!z3) {
            return;
        }
        if (jSONSocialNetworkID == null) {
            this.f25519b = null;
            m28794a(loadContext, (LoadContext) null);
            CacheManager.get().m28390a((Class<?>) getDataClass(), contactData.getCacheKey(getDataSource().socialDataField));
            return;
        }
        if (!Objects.m31915a(this.f25519b, jSONSocialNetworkID) || m28783f(contactData) == null) {
            this.f25519b = jSONSocialNetworkID;
            mo28773a(loadContext, jSONSocialNetworkID);
        }
        if (loadContext.m28865a((Class<? extends ContactDataLoader>) getClass()) || (m28783f = m28783f(contactData)) == null || !m28783f.isDirty()) {
            return;
        }
        String cacheKey = contactData.getCacheKey(getDataSource().socialDataField);
        if (CollectionUtils.m26073a(loadContext.getFlags(), LoaderFlags.disableSpecificCaches)) {
            return;
        }
        CacheManager.get().m28389a((Class<String>) getDataClass(), cacheKey, (String) m28783f);
        m28783f.setDirty(false);
    }

    /* renamed from: a */
    protected abstract void mo28773a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID);

    /* renamed from: a */
    public void mo28772a(LoadContext loadContext, T t, T t2) {
        Set<ContactField> set = loadContext.f25323b;
        final ContactData contactData = loadContext.f25322a;
        ContactField contactField = getDataSource().socialDataField;
        if (set.contains(contactField)) {
            contactData.fireChange(contactField);
        }
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            if (!StringUtils.m26042b(t == null ? null : t.getFullName(), t2 == null ? null : t2.getFullName())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFullName();
                    }
                });
            }
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            if (!Objects.m31915a(t == null ? null : t.getPhotoUrl(), t2 == null ? null : t2.getPhotoUrl())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhoto();
                    }
                });
            }
        }
        if (set.contains(ContactField.mutualFriends)) {
            if (!CollectionUtils.m26074a((Collection) (t == null ? null : t.getMutualFriends()), (Collection) (t2 == null ? null : t2.getMutualFriends()))) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateMutualFriends();
                    }
                });
            }
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    /* renamed from: a */
    protected abstract void mo28771a(ContactData contactData);

    /* renamed from: a */
    protected final void m28792a(ContactData contactData, SocialSearchResults socialSearchResults) {
        m28787b(contactData, socialSearchResults);
        mo28771a(contactData);
        contactData.fireChange(getDataSource().socialSearchField);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28789b(LoadContext loadContext) {
        DataSource dataSource = getDataSource();
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        ContactField contactField = dataSource.socialSearchField;
        SocialSearchResults socialSearchResults = set.contains(contactField) ? (SocialSearchResults) CacheManager.get().m28378b(SocialSearchResults.class, contactData.getCacheKey(contactField), false) : null;
        if (socialSearchResults != null) {
            m28792a(loadContext.f25322a, socialSearchResults);
        }
        SocialData socialData = (SocialData) CacheManager.get().m28378b(getDataClass(), loadContext.f25322a.getCacheKey(getDataSource().socialDataField), CollectionUtils.m26073a(loadContext.getFlags(), LoaderFlags.disableSpecificCaches));
        if (socialData != null) {
            m28794a(loadContext, (LoadContext) socialData);
        }
    }

    protected abstract Class<T> getDataClass();

    protected abstract DataSource getDataSource();

    public abstract RemoteAccountHelper getSocialHelper();
}
