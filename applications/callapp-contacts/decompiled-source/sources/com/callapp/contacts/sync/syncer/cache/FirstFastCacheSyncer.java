package com.callapp.contacts.sync.syncer.cache;

import android.util.Pair;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.sync.MatchAndSuggestHelper;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.sync.syncer.cache.SocialFoundThenOtherSyncerLoader;
import com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer.class */
public class FirstFastCacheSyncer extends Syncer {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<ContactLoader> f15799a = new ThreadLocal<ContactLoader>() { // from class: com.callapp.contacts.sync.syncer.cache.FirstFastCacheSyncer.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ContactLoader initialValue() {
            BaseSocialShouldLoadLogic baseSocialShouldLoadLogic = new BaseSocialShouldLoadLogic();
            return new ContactLoader().setDisableContactEvents().setIgnoreQuotaException().setInSync().addFields(ContactFieldEnumSets.NAME_FIELDS).addFields(ContactField.emails, ContactField.photoUrl, ContactField.birthday).addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS).addFields(ContactFieldEnumSets.SYNC_SEARCH_SOCIAL_NETWORKS).addFields(ContactField.spamScore).addSyncLoader(new SocialFoundThenOtherSyncerLoader().a(new CacheLoader(), (SocialFoundThenOtherSyncerLoader.ShouldLoadLogic) null).a(new DeviceDataLoader(), (SocialFoundThenOtherSyncerLoader.ShouldLoadLogic) null).a(new LocalGenomeLoader(true), (SocialFoundThenOtherSyncerLoader.ShouldLoadLogic) null).a(new GravatarLoader(), new PhotoOrIdShouldLoadLogic()).a(new FacebookLoader(), baseSocialShouldLoadLogic).a(new VKLoader(), baseSocialShouldLoadLogic).a(new InstagramLoader(), baseSocialShouldLoadLogic).a(new TwitterLoader(), baseSocialShouldLoadLogic).a(new PinterestLoader(), baseSocialShouldLoadLogic));
        }
    };

    public static void a(SyncerContext syncerContext, ContactData contactData) {
        if (!syncerContext.hasPhoto) {
            syncerContext.hasPhoto = contactData.getPhotoUrls() != null;
        }
        if (syncerContext.social == null) {
            for (Integer num : ApiConstants.f10379c) {
                int intValue = num.intValue();
                JSONSocialNetworkID socialNetworkID = ContactDataUtils.getSocialNetworkID(contactData, intValue);
                if (socialNetworkID != null && socialNetworkID.isSure()) {
                    syncerContext.social = new Pair<>(Integer.valueOf(intValue), socialNetworkID);
                    return;
                }
            }
        }
    }

    private ContactLoader getContactLoaderFromThreadLocal() {
        return f15799a.get();
    }

    private static Map<String, AggregateCallLogData> getFirstCallLogWithoutDisplayName() {
        HashMap hashMap = new HashMap();
        try {
            Stack<AggregateCallLogData> callLog = CallLogUtils.getCallLog();
            if (callLog != null && !callLog.isEmpty()) {
                int max = Math.max(0, callLog.size() - 51);
                for (int size = callLog.size() - 1; size >= max; size--) {
                    AggregateCallLogData aggregateCallLogData = callLog.get(size);
                    if (StringUtils.a((CharSequence) aggregateCallLogData.displayName)) {
                        String rawNumber = aggregateCallLogData.getPhone().getRawNumber();
                        if (hashMap.get(rawNumber) == null && StringUtils.a((CharSequence) CallLogUtils.a(rawNumber)[0])) {
                            hashMap.put(rawNumber, aggregateCallLogData);
                        }
                    }
                }
            }
        } catch (Exception e) {
            CLog.a(CallLogUtils.class, e);
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        ContactLoader contactLoaderFromThreadLocal = getContactLoaderFromThreadLocal();
        ContactData contactData = syncerContext.contact;
        ContactDataUtils.setLoadInternals(contactData, false, contactLoaderFromThreadLocal.getFieldsToLoad());
        Class<?> cls = getClass();
        CLog.a(cls, "ThreadId: " + Thread.currentThread().getId() + " Load contact " + syncerContext.contact.getDeviceId() + ", loadTiles: false");
        contactLoaderFromThreadLocal.load((ContactLoader) contactData);
        a(syncerContext, contactData);
        BaseSocialSyncer.a(contactData);
        if (HttpUtils.a()) {
            MatchAndSuggestHelper.a(contactData);
            syncerContext.markFullySynced();
            return;
        }
        setSyncEnabled(false);
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        super.onSyncStart();
        Map<String, AggregateCallLogData> firstCallLogWithoutDisplayName = getFirstCallLogWithoutDisplayName();
        if (CollectionUtils.b(firstCallLogWithoutDisplayName)) {
            for (AggregateCallLogData aggregateCallLogData : firstCallLogWithoutDisplayName.values()) {
                ContactLoader contactLoaderFromThreadLocal = getContactLoaderFromThreadLocal();
                ContactData load = contactLoaderFromThreadLocal.load(aggregateCallLogData.getPhone(), 0L);
                ContactDataUtils.setLoadInternals(load, false, contactLoaderFromThreadLocal.getFieldsToLoad());
                load.updatePhoto();
                BaseSocialSyncer.a(load);
                FastCacheDataManager.a(load);
                FastCacheDataManager.c(load);
            }
        }
    }
}
