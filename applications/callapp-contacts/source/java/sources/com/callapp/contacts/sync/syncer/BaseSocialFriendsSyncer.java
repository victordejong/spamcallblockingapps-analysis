package com.callapp.contacts.sync.syncer;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.util.Joiner;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.p238im.SkypeLoader;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.MatchAndSuggestHelper;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer.class */
public abstract class BaseSocialFriendsSyncer<T extends RemoteAccountHelper> extends Syncer {

    /* renamed from: h */
    protected static Map<Long, String> f27613h;

    /* renamed from: a */
    protected T f27614a;

    /* renamed from: b */
    protected Map<String, List<Friend>> f27615b;

    /* renamed from: c */
    protected Map<String, Friend> f27616c;

    /* renamed from: d */
    protected int f27617d;

    /* renamed from: e */
    protected IntegerPref f27618e = new IntegerPref(getName() + ".connectionsCount", 0);

    /* renamed from: f */
    protected Joiner f27619f = Joiner.m31918a(StringUtils.SPACE).m31920a();

    /* renamed from: g */
    protected Joiner f27620g = Joiner.m31918a("").m31920a();

    /* renamed from: i */
    protected Map<String, Friend> f27621i;

    /* renamed from: a */
    private static String m27743a(String str) {
        return RegexUtils.m31889l(RegexUtils.m31893i(str.toLowerCase()));
    }

    /* renamed from: a */
    private void m27747a(Friend friend, String str) {
        if (!this.f27615b.containsKey(str)) {
            this.f27615b.put(str, new ArrayList());
        }
        this.f27615b.get(str).add(friend);
    }

    /* renamed from: a */
    private void m27746a(Friend friend, String str, String str2) {
        String[] split = str.split(str2);
        for (int i = 0; i < split.length; i++) {
            if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) split[i]) && split[i].length() > 1) {
                for (int i2 = i + 1; i2 < split.length; i2++) {
                    if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) split[i2]) && split[i2].length() > 1) {
                        List asList = Arrays.asList(split[i], split[i2]);
                        m27747a(friend, this.f27620g.m31919a(asList));
                        Collections.reverse(asList);
                        m27747a(friend, this.f27620g.m31919a(asList));
                    }
                }
                if (this.f27616c.containsKey(split[i])) {
                    this.f27616c.put(split[i], null);
                } else {
                    this.f27616c.put(split[i], friend);
                }
            }
        }
        if (split.length == 1) {
            m27747a(friend, str);
        }
    }

    /* renamed from: a */
    private boolean m27745a(SyncerContext syncerContext, ContactData contactData, String str, boolean z, String str2) {
        boolean z2 = false;
        if (CollectionUtils.m26067b(this.f27615b)) {
            boolean m27744a = m27744a(syncerContext, contactData, this.f27615b.get(str), true);
            z2 = m27744a;
            if (z) {
                HashSet<Friend> hashSet = new HashSet();
                HashSet<Friend> hashSet2 = new HashSet();
                boolean z3 = m27744a;
                if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) str2)) {
                    boolean z4 = com.callapp.framework.util.StringUtils.m26053a(str, StringUtils.SPACE) > 0;
                    Iterator<String> it2 = this.f27615b.keySet().iterator();
                    while (true) {
                        z3 = m27744a;
                        if (!it2.hasNext()) {
                            break;
                        }
                        String next = it2.next();
                        if (RegexUtils.m31892i(str, next) && !m27744a) {
                            m27744a = m27744a(syncerContext, contactData, this.f27615b.get(next), true);
                        } else if (str2.startsWith(next)) {
                            List<Friend> list = this.f27615b.get(next);
                            if (CollectionUtils.m26068b(list)) {
                                Collections.addAll(hashSet, list.toArray(new Friend[list.size()]));
                            }
                        } else if (z4 && next.startsWith(str2)) {
                            List<Friend> list2 = this.f27615b.get(next);
                            if (CollectionUtils.m26068b(list2)) {
                                Collections.addAll(hashSet2, list2.toArray(new Friend[list2.size()]));
                            }
                        }
                    }
                }
                if (hashSet.size() == 1) {
                    Friend friend = (Friend) hashSet.iterator().next();
                    MatchAndSuggestHelper.m27774a(this.f27614a.getHelperSocialNetDBId(), contactData, friend.f26734id, friend.fullName);
                } else if (hashSet.size() > 1) {
                    HashSet hashSet3 = new HashSet();
                    for (Friend friend2 : hashSet) {
                        if (MatchAndSuggestHelper.m27775a(this.f27614a.getHelperSocialNetDBId(), contactData, friend2.f26734id)) {
                            hashSet3.add(friend2);
                        }
                    }
                    if (hashSet3.size() == 1) {
                        Friend friend3 = (Friend) hashSet3.iterator().next();
                        MatchAndSuggestHelper.m27774a(this.f27614a.getHelperSocialNetDBId(), contactData, friend3.f26734id, friend3.fullName);
                    }
                }
                z2 = z3;
                if (!z3) {
                    if (hashSet2.size() == 1) {
                        z2 = m27744a(syncerContext, contactData, Collections.singletonList(hashSet2.iterator().next()), false);
                    } else {
                        z2 = z3;
                        if (hashSet2.size() > 1) {
                            HashSet hashSet4 = new HashSet();
                            for (Friend friend4 : hashSet2) {
                                if (canMatchProfileToContact(this.f27614a, contactData, friend4.f26734id)) {
                                    hashSet4.add(friend4);
                                }
                            }
                            z2 = z3;
                            if (hashSet4.size() == 1) {
                                z2 = m27744a(syncerContext, contactData, Collections.singletonList(hashSet4.iterator().next()), false);
                            }
                        }
                    }
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m27744a(SyncerContext syncerContext, ContactData contactData, List<Friend> list, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        if (CollectionUtils.m26068b(list)) {
            Iterator<Friend> it2 = list.iterator();
            while (true) {
                z2 = z3;
                if (!it2.hasNext()) {
                    break;
                }
                Friend next = it2.next();
                boolean z4 = z3;
                if (!z3) {
                    z4 = z3;
                    if (markProfileAsSureOrUnsure(this.f27614a, contactData, next.f26734id, z)) {
                        syncerContext.markFullySynced();
                        z4 = true;
                    }
                }
                MatchAndSuggestHelper.m27774a(this.f27614a.getHelperSocialNetDBId(), contactData, next.f26734id, next.fullName);
                z3 = z4;
            }
        }
        return z2;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void destroy() {
        super.destroy();
        this.f27615b = null;
    }

    protected abstract T getSocialHelper();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        Friend friend;
        ContactData contactData = syncerContext.contact;
        Map<String, Integer> map = syncerContext.singleNameCount;
        String m27743a = m27743a(contactData.getFullName());
        String[] split = m27743a.split(StringUtils.SPACE);
        if (m27745a(syncerContext, contactData, m27743a, true, this.f27620g.m31917a(split))) {
            return;
        }
        for (JSONEmail jSONEmail : contactData.getEmails()) {
            String m26012p = com.callapp.framework.util.StringUtils.m26012p(jSONEmail.getEmail());
            if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) m26012p) && m27745a(syncerContext, contactData, m27743a(m26012p), false, null)) {
                return;
            }
        }
        long deviceId = contactData.getDeviceId();
        if (f27613h.containsKey(Long.valueOf(deviceId)) && m27745a(syncerContext, contactData, m27743a(f27613h.get(Long.valueOf(deviceId))), false, null)) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= split.length) {
                syncerContext.markFullySynced();
                return;
            }
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < split.length && split.length > 2; i4++) {
                if (m27745a(syncerContext, contactData, this.f27619f.m31919a(Arrays.asList(split[i2], split[i4])), false, null)) {
                    return;
                }
            }
            Integer num = map.get(split[i2]);
            if (this.f27616c.containsKey(split[i2]) && num != null && num.intValue() == 1 && (friend = this.f27616c.get(split[i2])) != null) {
                MatchAndSuggestHelper.m27774a(this.f27614a.getHelperSocialNetDBId(), contactData, friend.f26734id, friend.fullName);
            }
            i = i3;
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean onSyncEnd() {
        if (super.onSyncEnd()) {
            this.f27618e.set(Integer.valueOf(this.f27617d));
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        super.onSyncStart();
        this.f27615b = new HashMap();
        this.f27616c = new HashMap();
        for (Friend friend : this.f27621i.values()) {
            String m27743a = m27743a(friend.fullName);
            if (!com.callapp.framework.util.StringUtils.m26059a((CharSequence) m27743a) && m27743a.length() > 1) {
                m27746a(friend, m27743a, StringUtils.SPACE);
                m27747a(friend, m27743a);
            }
        }
        if (f27613h == null && SkypeLoader.isSkypeInstalled()) {
            f27613h = ContactUtils.getAllSkypeNames();
        }
        if (CollectionUtils.m26071a(f27613h)) {
            f27613h = Collections.emptyMap();
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        boolean z = super.shouldSync() && getSocialHelper().isLoggedIn();
        if (z) {
            T socialHelper = getSocialHelper();
            this.f27614a = socialHelper;
            try {
                Map<String, Friend> mo29103a = socialHelper.mo29103a(true, true);
                this.f27621i = mo29103a;
                this.f27617d = mo29103a.size();
                int intValue = this.f27618e.get().intValue();
                int i = this.f27617d;
                if (i == 0) {
                    CLog.m27610a(getClass(), "Number of friends is zero, terminating %s sync", getName());
                    setSyncEnabled(false);
                    return false;
                } else if (i == intValue) {
                    CLog.m27610a(getClass(), "Number of friends (%s) has remained the same, terminating %s sync", Integer.valueOf(this.f27617d), getName());
                    setSyncEnabled(false);
                    return false;
                }
            } catch (QuotaReachedException e) {
                CLog.m27610a(getClass(), "Terminating %s sync cuz QuotaReachedException", getName());
                setSyncEnabled(false);
                return false;
            }
        }
        return z;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return super.shouldSyncContact(contactData) && this.f27614a.mo29108a(contactData) == null;
    }
}
