package com.callapp.contacts.sync.syncer;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.util.Joiner;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.im.SkypeLoader;
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
    protected static Map<Long, String> h;

    /* renamed from: a  reason: collision with root package name */
    protected T f15786a;

    /* renamed from: b  reason: collision with root package name */
    protected Map<String, List<Friend>> f15787b;

    /* renamed from: c  reason: collision with root package name */
    protected Map<String, Friend> f15788c;

    /* renamed from: d  reason: collision with root package name */
    protected int f15789d;
    protected IntegerPref e = new IntegerPref(getName() + ".connectionsCount", 0);
    protected Joiner f = Joiner.a(StringUtils.SPACE).a();
    protected Joiner g = Joiner.a("").a();
    protected Map<String, Friend> i;

    private static String a(String str) {
        return RegexUtils.l(RegexUtils.i(str.toLowerCase()));
    }

    private void a(Friend friend, String str) {
        if (!this.f15787b.containsKey(str)) {
            this.f15787b.put(str, new ArrayList());
        }
        this.f15787b.get(str).add(friend);
    }

    private void a(Friend friend, String str, String str2) {
        String[] split = str.split(str2);
        for (int i = 0; i < split.length; i++) {
            if (com.callapp.framework.util.StringUtils.b((CharSequence) split[i]) && split[i].length() > 1) {
                for (int i2 = i + 1; i2 < split.length; i2++) {
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) split[i2]) && split[i2].length() > 1) {
                        List asList = Arrays.asList(split[i], split[i2]);
                        a(friend, this.g.a(asList));
                        Collections.reverse(asList);
                        a(friend, this.g.a(asList));
                    }
                }
                if (this.f15788c.containsKey(split[i])) {
                    this.f15788c.put(split[i], null);
                } else {
                    this.f15788c.put(split[i], friend);
                }
            }
        }
        if (split.length == 1) {
            a(friend, str);
        }
    }

    private boolean a(SyncerContext syncerContext, ContactData contactData, String str, boolean z, String str2) {
        boolean z2 = false;
        if (CollectionUtils.b(this.f15787b)) {
            boolean a2 = a(syncerContext, contactData, this.f15787b.get(str), true);
            z2 = a2;
            if (z) {
                HashSet<Friend> hashSet = new HashSet();
                HashSet<Friend> hashSet2 = new HashSet();
                boolean z3 = a2;
                if (com.callapp.framework.util.StringUtils.b((CharSequence) str2)) {
                    boolean z4 = com.callapp.framework.util.StringUtils.a(str, StringUtils.SPACE) > 0;
                    Iterator<String> it2 = this.f15787b.keySet().iterator();
                    while (true) {
                        z3 = a2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        String next = it2.next();
                        if (RegexUtils.i(str, next) && !a2) {
                            a2 = a(syncerContext, contactData, this.f15787b.get(next), true);
                        } else if (str2.startsWith(next)) {
                            List<Friend> list = this.f15787b.get(next);
                            if (CollectionUtils.b(list)) {
                                Collections.addAll(hashSet, list.toArray(new Friend[list.size()]));
                            }
                        } else if (z4 && next.startsWith(str2)) {
                            List<Friend> list2 = this.f15787b.get(next);
                            if (CollectionUtils.b(list2)) {
                                Collections.addAll(hashSet2, list2.toArray(new Friend[list2.size()]));
                            }
                        }
                    }
                }
                if (hashSet.size() == 1) {
                    Friend friend = (Friend) hashSet.iterator().next();
                    MatchAndSuggestHelper.a(this.f15786a.getHelperSocialNetDBId(), contactData, friend.id, friend.fullName);
                } else if (hashSet.size() > 1) {
                    HashSet hashSet3 = new HashSet();
                    for (Friend friend2 : hashSet) {
                        if (MatchAndSuggestHelper.a(this.f15786a.getHelperSocialNetDBId(), contactData, friend2.id)) {
                            hashSet3.add(friend2);
                        }
                    }
                    if (hashSet3.size() == 1) {
                        Friend friend3 = (Friend) hashSet3.iterator().next();
                        MatchAndSuggestHelper.a(this.f15786a.getHelperSocialNetDBId(), contactData, friend3.id, friend3.fullName);
                    }
                }
                z2 = z3;
                if (!z3) {
                    if (hashSet2.size() == 1) {
                        z2 = a(syncerContext, contactData, Collections.singletonList(hashSet2.iterator().next()), false);
                    } else {
                        z2 = z3;
                        if (hashSet2.size() > 1) {
                            HashSet hashSet4 = new HashSet();
                            for (Friend friend4 : hashSet2) {
                                if (canMatchProfileToContact(this.f15786a, contactData, friend4.id)) {
                                    hashSet4.add(friend4);
                                }
                            }
                            z2 = z3;
                            if (hashSet4.size() == 1) {
                                z2 = a(syncerContext, contactData, Collections.singletonList(hashSet4.iterator().next()), false);
                            }
                        }
                    }
                }
            }
        }
        return z2;
    }

    private boolean a(SyncerContext syncerContext, ContactData contactData, List<Friend> list, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        if (CollectionUtils.b(list)) {
            Iterator<Friend> it2 = list.iterator();
            while (true) {
                z2 = z3;
                if (!it2.hasNext()) {
                    break;
                }
                Friend next = it2.next();
                z3 = z3;
                if (!z3) {
                    z3 = z3;
                    if (markProfileAsSureOrUnsure(this.f15786a, contactData, next.id, z)) {
                        syncerContext.markFullySynced();
                        z3 = true;
                    }
                }
                MatchAndSuggestHelper.a(this.f15786a.getHelperSocialNetDBId(), contactData, next.id, next.fullName);
            }
        }
        return z2;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void destroy() {
        super.destroy();
        this.f15787b = null;
    }

    protected abstract T getSocialHelper();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        Friend friend;
        ContactData contactData = syncerContext.contact;
        Map<String, Integer> map = syncerContext.singleNameCount;
        String a2 = a(contactData.getFullName());
        String[] split = a2.split(StringUtils.SPACE);
        if (!a(syncerContext, contactData, a2, true, this.g.a(split))) {
            for (JSONEmail jSONEmail : contactData.getEmails()) {
                String p = com.callapp.framework.util.StringUtils.p(jSONEmail.getEmail());
                if (com.callapp.framework.util.StringUtils.b((CharSequence) p) && a(syncerContext, contactData, a(p), false, null)) {
                    return;
                }
            }
            long deviceId = contactData.getDeviceId();
            if (!h.containsKey(Long.valueOf(deviceId)) || !a(syncerContext, contactData, a(h.get(Long.valueOf(deviceId))), false, null)) {
                int i = 0;
                while (i < split.length) {
                    int i2 = i + 1;
                    for (int i3 = i2; i3 < split.length && split.length > 2; i3++) {
                        if (a(syncerContext, contactData, this.f.a(Arrays.asList(split[i], split[i3])), false, null)) {
                            return;
                        }
                    }
                    Integer num = map.get(split[i]);
                    if (this.f15788c.containsKey(split[i]) && num != null && num.intValue() == 1 && (friend = this.f15788c.get(split[i])) != null) {
                        MatchAndSuggestHelper.a(this.f15786a.getHelperSocialNetDBId(), contactData, friend.id, friend.fullName);
                    }
                    i = i2;
                }
                syncerContext.markFullySynced();
            }
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean onSyncEnd() {
        if (!super.onSyncEnd()) {
            return false;
        }
        this.e.set(Integer.valueOf(this.f15789d));
        return true;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        super.onSyncStart();
        this.f15787b = new HashMap();
        this.f15788c = new HashMap();
        for (Friend friend : this.i.values()) {
            String a2 = a(friend.fullName);
            if (!com.callapp.framework.util.StringUtils.a((CharSequence) a2) && a2.length() > 1) {
                a(friend, a2, StringUtils.SPACE);
                a(friend, a2);
            }
        }
        if (h == null && SkypeLoader.isSkypeInstalled()) {
            h = ContactUtils.getAllSkypeNames();
        }
        if (CollectionUtils.a(h)) {
            h = Collections.emptyMap();
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        boolean z = super.shouldSync() && getSocialHelper().isLoggedIn();
        if (z) {
            T socialHelper = getSocialHelper();
            this.f15786a = socialHelper;
            try {
                Map<String, Friend> a2 = socialHelper.a(true, true);
                this.i = a2;
                this.f15789d = a2.size();
                int intValue = this.e.get().intValue();
                int i = this.f15789d;
                if (i == 0) {
                    CLog.a(getClass(), "Number of friends is zero, terminating %s sync", getName());
                    setSyncEnabled(false);
                    return false;
                } else if (i == intValue) {
                    CLog.a(getClass(), "Number of friends (%s) has remained the same, terminating %s sync", Integer.valueOf(this.f15789d), getName());
                    setSyncEnabled(false);
                    return false;
                }
            } catch (QuotaReachedException e) {
                CLog.a(getClass(), "Terminating %s sync cuz QuotaReachedException", getName());
                setSyncEnabled(false);
                return false;
            }
        }
        return z;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return super.shouldSyncContact(contactData) && this.f15786a.a(contactData) == null;
    }
}
