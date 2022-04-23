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

    /* renamed from: b  reason: collision with root package name */
    private JSONSocialNetworkID f14724b = null;

    /* renamed from: a  reason: collision with root package name */
    protected List<BaseSocialLoader<T>.BaseSearcher> f14723a = new LinkedList();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher.class */
    public abstract class BaseSearcher {
        public BaseSearcher() {
        }

        private static SocialSearchResults a(String str, Collection<String> collection, boolean z, List<PersonData> list) {
            String id = list.get(0).getId();
            return (!StringUtils.b((CharSequence) id) || collection.contains(id)) ? null : new SocialSearchResults(str, list, new JSONSocialNetworkID(id, z));
        }

        public SocialSearchResults a(String str, ContactData contactData, Collection<String> collection, boolean z, List<PersonData> list) {
            SocialSearchResults socialSearchResults;
            if (list.size() == 1) {
                socialSearchResults = a(str, collection, z, list);
            } else {
                ArrayList arrayList = new ArrayList();
                for (PersonData personData : list) {
                    if (StringUtils.b((Object) str, (Object) personData.getName())) {
                        arrayList.add(personData);
                    }
                }
                SocialSearchResults a2 = arrayList.size() == 1 ? a(str, collection, false, (List<PersonData>) arrayList) : null;
                socialSearchResults = a2;
                if (a2 == null) {
                    socialSearchResults = new SocialSearchResults(str, list);
                }
            }
            return socialSearchResults;
        }

        public abstract boolean a(ContactData contactData);

        public boolean a(ContactData contactData, String str) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean a(String str, ContactData contactData, Collection<String> collection, boolean z) {
            if (StringUtils.a((CharSequence) str)) {
                return false;
            }
            List<PersonData> a2 = BaseSocialLoader.this.a(str);
            if (CollectionUtils.a(a2)) {
                return false;
            }
            DataSource dataSource = BaseSocialLoader.this.getDataSource();
            SocialSearchResults a3 = a(str, contactData, collection, z, a2);
            BaseSocialLoader.this.a(contactData, a3);
            CacheManager.get().a((Class<String>) SocialSearchResults.class, contactData.getCacheKey(dataSource.socialSearchField), (String) a3);
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher.class */
    public class FriendsExactNameSearcher extends BaseSocialLoader<T>.BaseSearcher {
        public FriendsExactNameSearcher() {
            super();
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public boolean a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            for (String str : contactData.getNames()) {
                if (a(str, contactData, contactData.isNameSure(str), negatives)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public /* bridge */ /* synthetic */ boolean a(ContactData contactData, String str) {
            return super.a(contactData, str);
        }

        final boolean a(String str, ContactData contactData, boolean z, Set<String> set) {
            try {
                Map<String, Friend> a2 = BaseSocialLoader.this.getSocialHelper().a(true, true);
                if (CollectionUtils.a(a2)) {
                    return false;
                }
                String l = StringUtils.l(str);
                if (!StringUtils.k(l)) {
                    return false;
                }
                for (Friend friend : a2.values()) {
                    if (Objects.a(l, friend.fullName) && StringUtils.b((CharSequence) friend.id) && !set.contains(friend.id)) {
                        if (BaseSocialLoader.this.getSocialHelper().a(contactData) != null) {
                            return true;
                        }
                        JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(friend.id, z);
                        contactData.assertDeviceDataExist();
                        BaseSocialLoader.this.getSocialHelper().a(contactData, jSONSocialNetworkID.getId(), z);
                        return true;
                    }
                }
                return false;
            } catch (QuotaReachedException e) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher.class */
    public class FullNameSearcher extends BaseSocialLoader<T>.BaseSearcher {
        private FullNameSearcher() {
            super();
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            String l = StringUtils.l(contactData.getFullName());
            return StringUtils.b((CharSequence) l) && StringUtils.k(l) && a(l, contactData, (Collection<String>) negatives, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher.class */
    public class NamesSearcher extends BaseSocialLoader<T>.BaseSearcher {
        private NamesSearcher() {
            super();
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData) {
            Collection<String> names = contactData.getNames();
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            String l = StringUtils.l(contactData.getFullName());
            for (String str : names) {
                String l2 = StringUtils.l(str);
                if (StringUtils.k(l2) && !l2.equals(l) && a(l2, contactData, (Collection<String>) negatives, false)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher.class */
    public class UserNameFromEmailSearcher extends BaseSocialLoader<T>.FriendsExactNameSearcher {
        private UserNameFromEmailSearcher() {
            super();
        }

        private static String a(JSONEmail jSONEmail) {
            if (jSONEmail == null || StringUtils.a((CharSequence) jSONEmail.getEmail())) {
                return null;
            }
            String p = StringUtils.p(jSONEmail.getEmail());
            if (StringUtils.a((CharSequence) p)) {
                return null;
            }
            String trim = RegexUtils.n(p).trim();
            if (StringUtils.a((CharSequence) trim)) {
                return null;
            }
            return trim;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.FriendsExactNameSearcher, com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData) {
            Collection<JSONEmail> emails = contactData.getEmails();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (JSONEmail jSONEmail : emails) {
                String a2 = a(jSONEmail);
                if (StringUtils.b((CharSequence) a2)) {
                    linkedHashMap.put(a2, Boolean.valueOf(contactData.isEmailFromDevice(jSONEmail)));
                }
            }
            if (CollectionUtils.a(linkedHashMap)) {
                return false;
            }
            Set<String> negatives = contactData.getNegatives(BaseSocialLoader.this.getDataSource());
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                if (a((String) entry.getKey(), contactData, ((Boolean) entry.getValue()).booleanValue(), negatives)) {
                    return true;
                }
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String l = StringUtils.l((String) entry2.getKey());
                if (StringUtils.k(l) && a(l, contactData, (Collection<String>) negatives, false)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.FriendsExactNameSearcher, com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData, String str) {
            for (JSONEmail jSONEmail : contactData.getEmails()) {
                if (str.equals(a(jSONEmail))) {
                    return true;
                }
            }
            return false;
        }
    }

    public BaseSocialLoader() {
        a();
    }

    private void a(LoadContext loadContext, T t) {
        ContactData contactData = loadContext.f14535a;
        T f = f(contactData);
        a(contactData, (ContactData) t);
        if (!Objects.a(f, t)) {
            a(loadContext, f, t);
        }
    }

    private void a(ContactData contactData, T t) {
        ReflectionUtils.a(contactData, getDataSource().socialDataField.name(), t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ContactData contactData) {
        if (!c(contactData)) {
            for (BaseSocialLoader<T>.BaseSearcher baseSearcher : this.f14723a) {
                if (!Thread.currentThread().isInterrupted()) {
                    synchronized (contactData.getCacheKey((Class) baseSearcher.getClass()).intern()) {
                        if (baseSearcher.a(contactData)) {
                            return;
                        }
                    }
                } else {
                    CLog.a(getClass(), "The search thread is interrrupted and therefore will stopped");
                    return;
                }
            }
            a(contactData, (SocialSearchResults) null);
        }
    }

    private void b(ContactData contactData, SocialSearchResults socialSearchResults) {
        ReflectionUtils.a(contactData, getDataSource().socialSearchField.name(), socialSearchResults);
    }

    private boolean c(ContactData contactData) {
        SocialSearchResults d2 = d(contactData);
        if (d2 == null || d2.isExpired(2131427389)) {
            return false;
        }
        String str = d2.term;
        for (BaseSocialLoader<T>.BaseSearcher baseSearcher : this.f14723a) {
            if (baseSearcher.a(contactData, str)) {
                return true;
            }
        }
        return false;
    }

    private SocialSearchResults d(ContactData contactData) {
        return (SocialSearchResults) ReflectionUtils.a(contactData, getDataSource().socialSearchField.name());
    }

    private JSONSocialNetworkID e(ContactData contactData) {
        return (JSONSocialNetworkID) ReflectionUtils.a(contactData, getDataSource().socialIdField.name());
    }

    private T f(ContactData contactData) {
        return (T) ((SocialData) ReflectionUtils.a(contactData, getDataSource().socialDataField.name()));
    }

    protected final List<PersonData> a(String str) {
        try {
            return getSocialHelper().b(str, false);
        } catch (SearchIsNotAvailableExecption e) {
            return null;
        }
    }

    public void a() {
        this.f14723a.add(new FriendsExactNameSearcher());
        this.f14723a.add(new FullNameSearcher());
        this.f14723a.add(new NamesSearcher());
        this.f14723a.add(new UserNameFromEmailSearcher());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        T f;
        boolean a2 = loadContext.a((Class<? extends ContactDataLoader>) getClass());
        if (a2) {
            CLog.a(getClass(), "Skipped loading %s", loadContext.f14535a.getId());
        }
        if (CollectionUtils.a((Set) loadContext.f14536b, (Set) getLoadedFields()) && !a2) {
            Set<ContactField> set = loadContext.f14537c;
            final ContactData contactData = loadContext.f14535a;
            JSONSocialNetworkID e = e(contactData);
            boolean z = set == null;
            boolean z2 = z || set.contains(getDataSource().socialIdField);
            JSONSocialNetworkID jSONSocialNetworkID = e;
            boolean z3 = z2;
            if ((e == null || (contactData.getDataSource(getDataSource().socialIdField) == DataSource.socialSearch)) && loadContext.f14536b.contains(getDataSource().socialSearchField) && (contactData.getDataSource(ContactField.genomeData) == DataSource.genome) && !contactData.isForceNoSocialId(getDataSource())) {
                if (z) {
                    b(contactData);
                    JSONSocialNetworkID e2 = e(contactData);
                    jSONSocialNetworkID = e;
                    z3 = z2;
                    if (!Objects.a(e2, e)) {
                        jSONSocialNetworkID = e2;
                        z3 = true;
                    }
                } else {
                    if (set != null && set.contains(ContactField.fullName)) {
                        b(contactData, null);
                    }
                    try {
                        LoadContext.a(new BaseLoaderTask(this, loadContext) { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                try {
                                    BaseSocialLoader.this.b(contactData);
                                } catch (QuotaReachedException | UnauthorizedAccessErrorException e3) {
                                    this.f14431a.a((Class<? extends ContactDataLoader>) BaseSocialLoader.this.getClass(), (Throwable) e3);
                                    this.f14431a.a(e3);
                                }
                            }
                        });
                        jSONSocialNetworkID = e;
                        z3 = z2;
                    } catch (RejectedExecutionException e3) {
                        CLog.a(getClass(), e3, "Safely ignoring RejectedExecutionException");
                        return;
                    }
                }
            }
            if (!z3) {
                return;
            }
            if (jSONSocialNetworkID == null) {
                this.f14724b = null;
                a(loadContext, (LoadContext) null);
                CacheManager.get().a((Class<?>) getDataClass(), contactData.getCacheKey(getDataSource().socialDataField));
                return;
            }
            if (!Objects.a(this.f14724b, jSONSocialNetworkID) || f(contactData) == null) {
                this.f14724b = jSONSocialNetworkID;
                a(loadContext, jSONSocialNetworkID);
            }
            if (!loadContext.a((Class<? extends ContactDataLoader>) getClass()) && (f = f(contactData)) != null && f.isDirty()) {
                String cacheKey = contactData.getCacheKey(getDataSource().socialDataField);
                if (!CollectionUtils.a(loadContext.getFlags(), LoaderFlags.disableSpecificCaches)) {
                    CacheManager.get().a((Class<String>) getDataClass(), cacheKey, (String) f);
                    f.setDirty(false);
                }
            }
        }
    }

    protected abstract void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID);

    public void a(LoadContext loadContext, T t, T t2) {
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        ContactField contactField = getDataSource().socialDataField;
        if (set.contains(contactField)) {
            contactData.fireChange(contactField);
        }
        MultiTaskRunner b2 = loadContext.b();
        List<PersonData> list = null;
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            if (!StringUtils.b(t == null ? null : t.getFullName(), t2 == null ? null : t2.getFullName())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFullName();
                    }
                });
            }
        }
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            if (!Objects.a(t == null ? null : t.getPhotoUrl(), t2 == null ? null : t2.getPhotoUrl())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhoto();
                    }
                });
            }
        }
        if (set.contains(ContactField.mutualFriends)) {
            List<PersonData> mutualFriends = t == null ? null : t.getMutualFriends();
            if (t2 != null) {
                list = t2.getMutualFriends();
            }
            if (!CollectionUtils.a((Collection) mutualFriends, (Collection) list)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.BaseSocialLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateMutualFriends();
                    }
                });
            }
        }
        loadContext.a(b2, this.f14493d);
    }

    protected abstract void a(ContactData contactData);

    protected final void a(ContactData contactData, SocialSearchResults socialSearchResults) {
        b(contactData, socialSearchResults);
        a(contactData);
        contactData.fireChange(getDataSource().socialSearchField);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        DataSource dataSource = getDataSource();
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        ContactField contactField = dataSource.socialSearchField;
        SocialSearchResults socialSearchResults = set.contains(contactField) ? (SocialSearchResults) CacheManager.get().b(SocialSearchResults.class, contactData.getCacheKey(contactField), false) : null;
        if (socialSearchResults != null) {
            a(loadContext.f14535a, socialSearchResults);
        }
        SocialData socialData = (SocialData) CacheManager.get().b(getDataClass(), loadContext.f14535a.getCacheKey(getDataSource().socialDataField), CollectionUtils.a(loadContext.getFlags(), LoaderFlags.disableSpecificCaches));
        if (socialData != null) {
            a(loadContext, (LoadContext) socialData);
        }
    }

    protected abstract Class<T> getDataClass();

    protected abstract DataSource getDataSource();

    public abstract RemoteAccountHelper getSocialHelper();
}
