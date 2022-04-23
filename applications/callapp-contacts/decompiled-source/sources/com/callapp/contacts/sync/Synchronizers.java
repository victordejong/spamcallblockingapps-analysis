package com.callapp.contacts.sync;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.callapp.common.model.json.IdentifiedJSONContact;
import com.callapp.common.model.json.JSONAccount;
import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.common.model.json.JSONMetaData;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.model.json.WhoViewedMyProfileJSONContact;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.identify.IdentifyContactsTaskManager;
import com.callapp.contacts.activity.interfaces.CallLogFirstTimeExperienceEventListener;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.external.ExternalSourcesUtils;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.model.BirthdayManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.contact.CallHistoryData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.BirthdayData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserCorrectedPositiveData;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.CallRecorderUtils;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer;
import com.callapp.contacts.sync.syncer.DeviceDataSyncer;
import com.callapp.contacts.sync.syncer.IdContactsLogSyncer;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.sync.syncer.ValidateSocialCallAppId;
import com.callapp.contacts.sync.syncer.cache.FirstFastCacheSyncer;
import com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer;
import com.callapp.contacts.sync.syncer.download.BlockedDownloadSyncer;
import com.callapp.contacts.sync.syncer.download.CommonSpammersSyncer;
import com.callapp.contacts.sync.syncer.download.IdentifiedContactsDownloadSyncer;
import com.callapp.contacts.sync.syncer.download.LastLinkagesSyncer;
import com.callapp.contacts.sync.syncer.download.ReferAndEarnPointDownloadSyncer;
import com.callapp.contacts.sync.syncer.download.UserCorrectedInfoDownloadSyncer;
import com.callapp.contacts.sync.syncer.download.UserSpamDownloadSyncer;
import com.callapp.contacts.sync.syncer.download.WhoViewedDownloadSyncer;
import com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer;
import com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher;
import com.callapp.contacts.sync.syncer.upload.UploadSyncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.PackageUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.objectbox.relation.ToMany;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/Synchronizers.class */
public enum Synchronizers {
    firstTimeExperienceContacts(new Syncer() { // from class: com.callapp.contacts.sync.syncer.FirstTimeExperienceContactsSyncer
        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncContact(SyncerContext syncerContext) {
            syncerContext.markFullySynced();
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean onSyncEnd() {
            AnalyticsDataManager.d();
            return super.onSyncEnd();
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncStart() {
            if (shouldSync()) {
                if (!CollectionUtils.a(this.syncContext.contactItems)) {
                    List<ContactData> a2 = CallLogUtils.a(3);
                    if (a2.size() >= 3) {
                        ContactData contactData = a2.get(0);
                        ContactData contactData2 = a2.get(1);
                        ContactData contactData3 = a2.get(2);
                        if (!(contactData == null || contactData2 == null || contactData3 == null)) {
                            CallHistoryData lastCallHistoryData = contactData.getLastCallHistoryData(contactData.getPhone());
                            CallHistoryData lastCallHistoryData2 = contactData2.getLastCallHistoryData(contactData2.getPhone());
                            CallHistoryData lastCallHistoryData3 = contactData3.getLastCallHistoryData(contactData3.getPhone());
                            PrefsUtils.a(new String[]{contactData.getNameOrNumber(), contactData2.getNameOrNumber(), contactData3.getNameOrNumber()}, Prefs.eu);
                            PrefsUtils.a(new String[]{contactData.getPhone().e(), contactData2.getPhone().e(), contactData3.getPhone().e()}, Prefs.ev);
                            PrefsUtils.a(new String[]{contactData.getThumbnailUrl(), contactData2.getThumbnailUrl(), contactData3.getThumbnailUrl()}, Prefs.ez);
                            PrefsUtils.a(new long[]{contactData.getDeviceId(), contactData2.getDeviceId(), contactData3.getDeviceId()}, Prefs.ew);
                            long j = -1;
                            long time = lastCallHistoryData != null ? lastCallHistoryData.getLastCallTimeStamp().getTime() : -1L;
                            long time2 = lastCallHistoryData2 != null ? lastCallHistoryData2.getLastCallTimeStamp().getTime() : -1L;
                            if (lastCallHistoryData3 != null) {
                                j = lastCallHistoryData3.getLastCallTimeStamp().getTime();
                            }
                            PrefsUtils.a(new long[]{time, time2, j}, Prefs.ex);
                            int i = -1;
                            int callType = lastCallHistoryData != null ? lastCallHistoryData.getCallType() : -1;
                            int callType2 = lastCallHistoryData2 != null ? lastCallHistoryData2.getCallType() : -1;
                            if (lastCallHistoryData3 != null) {
                                i = lastCallHistoryData3.getCallType();
                            }
                            PrefsUtils.a(new int[]{callType, callType2, i}, Prefs.ey);
                            EventBusManager.f14368a.a((EventType<L, EventType<CallLogFirstTimeExperienceEventListener, Object>>) CallLogFirstTimeExperienceEventListener.f12936b, (EventType<CallLogFirstTimeExperienceEventListener, Object>) null, false);
                        }
                    } else {
                        Prefs.es.set(Boolean.TRUE);
                    }
                    if (CollectionUtils.b(a2)) {
                        a2.clear();
                    }
                }
                super.onSyncStart();
            }
        }
    }, SyncConfig.onlyFirst),
    lastUploadedLinkages(new LastLinkagesSyncer(), SyncConfig.onlyFirst),
    blockedDownload(new BlockedDownloadSyncer(), SyncConfig.onlyFirst),
    userCorrectedInfoDownload(new UserCorrectedInfoDownloadSyncer(), SyncConfig.onlyFirst),
    userSpamDownload(new UserSpamDownloadSyncer(), SyncConfig.onlyFirst),
    callRecordingSyncer(new Syncer() { // from class: com.callapp.contacts.sync.syncer.CallRecordingSyncer
        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncContact(SyncerContext syncerContext) {
            syncerContext.markFullySynced();
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncStart() {
            File[] listFiles;
            if (shouldSync()) {
                File audioRecordingFolder = CallRecorderUtils.getAudioRecordingFolder();
                if (!(audioRecordingFolder == null || (listFiles = audioRecordingFolder.listFiles()) == null || listFiles.length <= 0)) {
                    for (File file : listFiles) {
                        CallRecorder a2 = CallRecorderUtils.a(file);
                        if (a2 != null) {
                            CallRecorderManager.get().b(a2);
                        } else {
                            IoUtils.b(file);
                        }
                    }
                }
                super.onSyncStart();
            }
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean shouldSyncContact(ContactData contactData) {
            return false;
        }
    }, SyncConfig.onlyFirst),
    deviceData(new DeviceDataSyncer(), SyncConfig.bothSyncs),
    facebook(new BaseSocialFriendsSyncer<FacebookHelper>() { // from class: com.callapp.contacts.sync.syncer.FacebookFriendsSyncer
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer
        public FacebookHelper getSocialHelper() {
            return FacebookHelper.get();
        }
    }, SyncConfig.bothSyncs),
    foursquare(new BaseSocialFriendsSyncer<FoursquareHelper>() { // from class: com.callapp.contacts.sync.syncer.FoursquareFriendsSyncer
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer
        public FoursquareHelper getSocialHelper() {
            return FoursquareHelper.get();
        }
    }, SyncConfig.bothSyncs),
    twitter(new BaseSocialFriendsSyncer<TwitterHelper>() { // from class: com.callapp.contacts.sync.syncer.TwitterFriendsSyncer
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer
        public TwitterHelper getSocialHelper() {
            return TwitterHelper.get();
        }
    }, SyncConfig.bothSyncs),
    instagram(new BaseSocialFriendsSyncer<InstagramHelper>() { // from class: com.callapp.contacts.sync.syncer.InstagramFriendsSyncer
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer
        public InstagramHelper getSocialHelper() {
            return InstagramHelper.get();
        }
    }, SyncConfig.bothSyncs),
    pinterest(new BaseSocialFriendsSyncer<PinterestHelper>() { // from class: com.callapp.contacts.sync.syncer.PinterestFriendsSyncer
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.callapp.contacts.sync.syncer.BaseSocialFriendsSyncer
        public PinterestHelper getSocialHelper() {
            return PinterestHelper.get();
        }
    }, SyncConfig.bothSyncs),
    websites(new Syncer() { // from class: com.callapp.contacts.sync.syncer.WebsitesSyncer
        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncContact(SyncerContext syncerContext) {
            ContactData contactData = syncerContext.contact;
            for (JSONWebsite jSONWebsite : contactData.getWebsites()) {
                String websiteUrl = jSONWebsite.getWebsiteUrl();
                if (contactData.getFacebookId() == null) {
                    FacebookHelper facebookHelper = Singletons.get().getFacebookHelper();
                    if (!markProfileAsSureOrUnsure(facebookHelper, contactData, facebookHelper.i(websiteUrl), true)) {
                    }
                }
                if (contactData.getTwitterScreenName() == null) {
                    TwitterHelper twitterHelper = Singletons.get().getTwitterHelper();
                    markProfileAsSureOrUnsure(twitterHelper, contactData, twitterHelper.i(websiteUrl), true);
                }
            }
            if (HttpUtils.a()) {
                syncerContext.markFullySynced();
            } else {
                setSyncEnabled(false);
            }
        }
    }, SyncConfig.onlyFull),
    facebookCache(new BaseSocialSyncer<Class<FacebookLoader>>() { // from class: com.callapp.contacts.sync.syncer.cache.social.FacebookSyncer
        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public Class<FacebookLoader> getLoaderClass() {
            return FacebookLoader.class;
        }

        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public int getNetworkId() {
            return 1;
        }
    }, SyncConfig.onlyFull),
    twitterCache(new BaseSocialSyncer<Class<TwitterLoader>>() { // from class: com.callapp.contacts.sync.syncer.cache.social.TwitterSyncer
        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public Class<TwitterLoader> getLoaderClass() {
            return TwitterLoader.class;
        }

        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public int getNetworkId() {
            return 4;
        }
    }, SyncConfig.onlyFull),
    instagramCache(new BaseSocialSyncer<Class<InstagramLoader>>() { // from class: com.callapp.contacts.sync.syncer.cache.social.InstagramSyncer
        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public Class<InstagramLoader> getLoaderClass() {
            return InstagramLoader.class;
        }

        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public int getNetworkId() {
            return 7;
        }
    }, SyncConfig.onlyFull),
    pinterestCache(new BaseSocialSyncer<Class<PinterestLoader>>() { // from class: com.callapp.contacts.sync.syncer.cache.social.PinterestSyncer
        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public Class<PinterestLoader> getLoaderClass() {
            return PinterestLoader.class;
        }

        @Override // com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer
        public int getNetworkId() {
            return 9;
        }
    }, SyncConfig.onlyFull),
    firstFastCache(new FirstFastCacheSyncer(), SyncConfig.onlyFirst),
    birthday(new Syncer() { // from class: com.callapp.contacts.sync.syncer.BirthdaySyncer

        /* renamed from: a  reason: collision with root package name */
        private ContactLoader f15790a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Integer, Map<String, PersonData>> f15791b;

        private void a(RemoteAccountHelper remoteAccountHelper) {
            if (remoteAccountHelper.isLoggedIn()) {
                try {
                    List<PersonData> friendsListAsPersonData = remoteAccountHelper.getFriendsListAsPersonData();
                    HashMap hashMap = new HashMap();
                    for (PersonData personData : friendsListAsPersonData) {
                        hashMap.put(personData.getId(), personData);
                    }
                    this.f15791b.put(Integer.valueOf(remoteAccountHelper.getApiConstantNetworkId()), hashMap);
                } catch (QuotaReachedException e) {
                    CLog.a(getClass(), e);
                }
            }
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public long getSyncPeriodMillis() {
            return 86400000L;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00e9 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0063 A[SYNTHETIC] */
        @Override // com.callapp.contacts.sync.syncer.Syncer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSyncContact(com.callapp.contacts.sync.model.SyncerContext r7) {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.syncer.BirthdaySyncer.onSyncContact(com.callapp.contacts.sync.model.SyncerContext):void");
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean onSyncEnd() {
            if (this.syncContext.isLongRunningSyncersAlreadyRunning(this)) {
                return false;
            }
            if (isSyncEnabled()) {
                Map<String, PersonData> map = this.f15791b.get(1);
                ArrayList arrayList = new ArrayList();
                if (CollectionUtils.b(map)) {
                    for (PersonData personData : map.values()) {
                        String id = personData.getId();
                        if (personData.getBirthdayDayInMonth() != null) {
                            BirthdayData existingNonContactWithSocialNetworkOrCreateNew = BirthdayManager.getExistingNonContactWithSocialNetworkOrCreateNew(1, id);
                            existingNonContactWithSocialNetworkOrCreateNew.setDisplayName(personData.getName());
                            existingNonContactWithSocialNetworkOrCreateNew.setMonth(personData.getBirthdayMonth().intValue());
                            existingNonContactWithSocialNetworkOrCreateNew.setDayOfMonth(personData.getBirthdayDayInMonth().intValue());
                            arrayList.add(existingNonContactWithSocialNetworkOrCreateNew);
                        }
                    }
                    if (CollectionUtils.b(arrayList)) {
                        BirthdayManager.insert(arrayList);
                    }
                }
            }
            for (Map.Entry<Integer, Map<String, PersonData>> entry : this.f15791b.entrySet()) {
                entry.getValue().clear();
            }
            this.f15791b.clear();
            this.f15791b = null;
            this.f15790a = null;
            return super.onSyncEnd();
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncStart() {
            super.onSyncStart();
            this.f15790a = new ContactLoader().addFields(ContactFieldEnumSets.NAME_FIELDS).addFields(ContactField.emails, ContactField.birthday).addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS).addFields(ContactFieldEnumSets.SYNC_SEARCH_SOCIAL_NETWORKS).addSyncLoader(new CacheLoader()).addLoader(new LocalGenomeLoader(true)).addLoader(new GravatarLoader()).addLoader(new FacebookLoader()).addLoader(new VKLoader()).addLoader(new TwitterLoader()).addLoader(new InstagramLoader()).addLoader(new PinterestLoader()).setInSync().setDisableContactEvents().setLoadOnlyFromCache();
            this.f15791b = new HashMap();
            a(FacebookHelper.get());
        }
    }, SyncConfig.bothSyncs),
    identifyContacts(new Syncer() { // from class: com.callapp.contacts.sync.syncer.IdentifyContactsSyncer
        @Override // com.callapp.contacts.sync.syncer.Syncer
        public long getSyncPeriodMillis() {
            return TimeUnit.DAYS.toMillis(70L);
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public void onSyncContact(SyncerContext syncerContext) {
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean onSyncEnd() {
            IdentifyContactsTaskManager.a();
            return super.onSyncEnd();
        }
    }, SyncConfig.bothSyncs),
    genomeUpload(new BaseGenomeUploadSyncer() { // from class: com.callapp.contacts.sync.syncer.upload.GenomeUploadSyncer
        @Override // com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer
        protected final BaseGenomeUploadSyncer.UPLOAD_TYPE a(ContactData contactData) {
            return BaseGenomeUploadSyncer.UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x010c A[Catch: all -> 0x019d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x019d, blocks: (B:5:0x000d, B:7:0x001c, B:9:0x0023, B:11:0x0029, B:13:0x0088, B:16:0x00b8, B:18:0x00c0, B:21:0x00ca, B:22:0x00da, B:25:0x010c, B:28:0x0157), top: B:35:0x000d }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0157 A[Catch: all -> 0x019d, TRY_ENTER, TryCatch #0 {all -> 0x019d, blocks: (B:5:0x000d, B:7:0x001c, B:9:0x0023, B:11:0x0029, B:13:0x0088, B:16:0x00b8, B:18:0x00c0, B:21:0x00ca, B:22:0x00da, B:25:0x010c, B:28:0x0157), top: B:35:0x000d }] */
        @Override // com.callapp.contacts.sync.syncer.Syncer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onSyncEnd() {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.syncer.upload.GenomeUploadSyncer.onSyncEnd():boolean");
        }

        @Override // com.callapp.contacts.sync.syncer.upload.UploadSyncer, com.callapp.contacts.sync.syncer.Syncer
        public boolean shouldSync() {
            JSONUploadConfiguration jSONUploadConfiguration = (JSONUploadConfiguration) Parser.a(StringUtils.u(CallAppRemoteConfigManager.get().a("uploadConfiguration")), JSONUploadConfiguration.class);
            if (jSONUploadConfiguration != null) {
                if (jSONUploadConfiguration.isDisabled()) {
                    CLog.a(GenomeUploadSyncer.class, "shouldSync return false. jsonUploadConfiguration.isDisabled");
                    return false;
                }
                String u = StringUtils.u(Activities.getInstallerPackageName());
                if (CollectionUtils.a(jSONUploadConfiguration.getDisabledInstallPackageNames(), u)) {
                    CLog.a(GenomeUploadSyncer.class, "shouldSync return false. installPackageName: ".concat(String.valueOf(u)));
                    return false;
                }
                String u2 = StringUtils.u(Activities.getString(2131887752));
                if (StringUtils.b((CharSequence) u2) && CollectionUtils.a(jSONUploadConfiguration.getDisabledStoreNames(), u2)) {
                    CLog.a(GenomeUploadSyncer.class, "shouldSync return false. storeName: ".concat(String.valueOf(u2)));
                    return false;
                }
            }
            return super.shouldSync();
        }
    }, SyncConfig.bothSyncs),
    genomeNCUpload(new BaseGenomeUploadSyncer() { // from class: com.callapp.contacts.sync.syncer.upload.GenomeNCUploadSyncer
        private boolean a(Collection<ContactData> collection) {
            if (!HttpUtils.a()) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.SYNCERS, getClass().getSimpleName() + " failed", "no internet connection");
                return false;
            }
            HashSet hashSet = new HashSet(collection);
            for (String str : new HashSet(UserPositiveNegativeManager.getAllNonContactsWithNegativeOrPositive())) {
                hashSet.add(new ContactData(PhoneManager.get().a(str), 0L, null));
            }
            return sendFileToServer("unced", a((Collection<ContactData>) hashSet, false));
        }

        @Override // com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer
        protected final BaseGenomeUploadSyncer.UPLOAD_TYPE a(ContactData contactData) {
            return contactData.isContactInDevice() ? BaseGenomeUploadSyncer.UPLOAD_TYPE.ONLY_DATA_NOT_FROM_DEVICE : BaseGenomeUploadSyncer.UPLOAD_TYPE.ALL_DATA;
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean onSyncEnd() {
            if (this.syncContext.isLongRunningSyncersAlreadyRunning(this)) {
                return false;
            }
            try {
                if (StringUtils.b((CharSequence) Prefs.aR.get()) && isSyncEnabled() && HttpUtils.a()) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.SYNCERS, getClass().getSimpleName() + " start", "uploadContacts start", this.syncContext.allContacts.size(), new String[0]);
                    if (a(this.syncContext.allContacts.values())) {
                        AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                        analyticsManager2.a(Constants.SYNCERS, getClass().getSimpleName() + " end", "uploadContacts end", this.syncContext.allContacts.size(), new String[0]);
                        return super.onSyncEnd();
                    }
                    AnalyticsManager analyticsManager3 = AnalyticsManager.get();
                    analyticsManager3.a(Constants.SYNCERS, getClass().getSimpleName() + " failed", "uploadContacts failed", this.syncContext.allContacts.size(), new String[0]);
                }
                this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
                return false;
            } finally {
                this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
            }
        }
    }, SyncConfig.bothSyncs),
    externalSourcesUpload(new JsonContactsUploadSyncher<JSONExternalSourceContact>() { // from class: com.callapp.contacts.sync.syncer.upload.ExternalSourcesUploadSyncer
        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<JSONExternalSourceContact> getContacts() {
            return ExternalSourcesUtils.getExternalSourcesNumbers();
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "esuejd";
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public void onUploadCompleted(boolean z) {
            if (z) {
                ExternalSourcesUtils.a();
            }
        }
    }, SyncConfig.onlyFull),
    userCorrectedInfoUploadSyncer(new JsonContactsUploadSyncher<JSONContact>() { // from class: com.callapp.contacts.sync.syncer.upload.UserCorrectedInfoUploadSyncer
        private void enrichContactWithUserPositive(JSONContact jSONContact, ToMany<UserCorrectedPositiveData> toMany) {
            Iterator<UserCorrectedPositiveData> it2 = toMany.iterator();
            while (it2.hasNext()) {
                UserCorrectedPositiveData next = it2.next();
                int socialNetworkId = next.getSocialNetworkId();
                String profileId = next.getProfileId();
                if (socialNetworkId == 1) {
                    jSONContact.setFacebookID(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 4) {
                    jSONContact.setTwitterScreenName(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 5) {
                    jSONContact.setGooglePlusID(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 6) {
                    jSONContact.setFoursquareID(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 7) {
                    jSONContact.setInstagramID(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 9) {
                    jSONContact.setPinterestID(new JSONSocialNetworkID(profileId, true));
                } else if (socialNetworkId == 10) {
                    jSONContact.setVkID(new JSONSocialNetworkID(profileId, true));
                }
            }
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public boolean allowEmptyUpload() {
            return true;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<JSONContact> getContacts() {
            Map<Long, ContactData> map = this.syncContext.allContacts;
            HashMap hashMap = new HashMap();
            List<UserCorrectedData> allUserCorrectedData = UserCorrectedDataManager.getAllUserCorrectedData();
            if (CollectionUtils.b(allUserCorrectedData)) {
                for (UserCorrectedData userCorrectedData : allUserCorrectedData) {
                    JSONContact jSONContact = new JSONContact();
                    if (StringUtils.b((CharSequence) userCorrectedData.getFullName())) {
                        jSONContact.setName(userCorrectedData.getFullName());
                    }
                    if (userCorrectedData.getContactId() > 0) {
                        ContactData contactData = map.get(Long.valueOf(userCorrectedData.getContactId()));
                        if (contactData != null) {
                            ArrayList arrayList = new ArrayList();
                            for (Phone phone : contactData.getPhones()) {
                                arrayList.add(new JSONPhoneNumber(phone));
                            }
                            jSONContact.setPhoneNumbers(arrayList);
                        }
                    } else if (StringUtils.b((CharSequence) userCorrectedData.getPhoneNumber())) {
                        jSONContact.setPhoneNumbers(Collections.singletonList(new JSONPhoneNumber(userCorrectedData.getPhoneNumber())));
                    }
                    if (userCorrectedData.getUserCorrectedType() > 0) {
                        jSONContact.setType(userCorrectedData.getUserCorrectedType());
                    }
                    if (userCorrectedData.getUserCorrectedPositive() != null) {
                        enrichContactWithUserPositive(jSONContact, userCorrectedData.getUserCorrectedPositive());
                    }
                    Phone phone2 = null;
                    if (StringUtils.b((CharSequence) userCorrectedData.getPhoneNumber())) {
                        phone2 = PhoneManager.get().a(userCorrectedData.getPhoneNumber());
                    } else {
                        ContactData contactData2 = map.get(Long.valueOf(userCorrectedData.getContactId()));
                        if (contactData2 != null) {
                            phone2 = contactData2.getPhone();
                        }
                    }
                    if (phone2 != null) {
                        hashMap.put(phone2, jSONContact);
                    }
                }
            }
            return hashMap.values();
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "uciuejd";
        }
    }, SyncConfig.onlyFull),
    userSpamUploadSyncer(new JsonContactsUploadSyncher<JSONContact>() { // from class: com.callapp.contacts.sync.syncer.upload.UserSpamUploadSyncer
        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<JSONContact> getContacts() {
            ArrayList arrayList = new ArrayList();
            for (UserSpamData userSpamData : UserCorrectedInfoUtil.getAllUserSpam()) {
                JSONContact jSONContact = new JSONContact();
                jSONContact.setPhoneNumbers(Collections.singletonList(new JSONPhoneNumber(PhoneManager.get().a(userSpamData.getPhone()))));
                if (userSpamData.isSpam()) {
                    jSONContact.setSpamScore(1);
                } else {
                    jSONContact.setSpamScore(-1);
                }
                arrayList.add(jSONContact);
            }
            return arrayList;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "usuejd";
        }
    }, SyncConfig.onlyFull),
    blockedUpload(new JsonContactsUploadSyncher<JSONContact>() { // from class: com.callapp.contacts.sync.syncer.upload.BlockedUploadSyncer
        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public boolean allowEmptyUpload() {
            return true;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<JSONContact> getContacts() {
            ArrayList arrayList = new ArrayList();
            for (ReminderData reminderData : ContactUtils.getBlockedContacts()) {
                JSONContact jSONContact = new JSONContact();
                jSONContact.setName(reminderData.displayName);
                jSONContact.setPhoneNumbers(Collections.singletonList(new JSONPhoneNumber(reminderData.getPhone())));
                arrayList.add(jSONContact);
            }
            AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Number of blocked", (String) null, arrayList.size(), new String[0]);
            return arrayList;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "buejd";
        }
    }, SyncConfig.onlyFull),
    UserMetaDataUpload(new UploadSyncer() { // from class: com.callapp.contacts.sync.syncer.upload.UserMetaDataUploadSyncer
        private File a(Context context) {
            File file;
            BufferedWriter bufferedWriter;
            Throwable e;
            Closeable closeable;
            Account[] accounts;
            JSONMetaData jSONMetaData = new JSONMetaData();
            jSONMetaData.setAndroidId(Settings.Secure.getString(context.getContentResolver(), "android_id"));
            jSONMetaData.setGoogleAdvertisingId(GooglePlayUtils.a(context));
            jSONMetaData.setImei(PhoneManager.get().getDeviceId());
            jSONMetaData.setOsVersion(Integer.toString(Build.VERSION.SDK_INT));
            jSONMetaData.setGoogleServiceFrameworkId(GooglePlayUtils.b(context));
            jSONMetaData.setManufacturer(Build.MANUFACTURER);
            jSONMetaData.setModel(Build.MODEL);
            jSONMetaData.setDevice(Build.DEVICE);
            jSONMetaData.setCountryISO(Prefs.aP.get());
            jSONMetaData.setInstalledApps(PackageUtils.a(context));
            jSONMetaData.setCarrier(PhoneManager.get().getCarrierName());
            jSONMetaData.setLanguage(LocaleUtils.a(LocaleUtils.a(context, "system_locale")));
            ArrayList<JSONAccount> arrayList = new ArrayList<>();
            try {
                for (Account account : AccountManager.get(CallAppApplication.get()).getAccounts()) {
                    JSONAccount jSONAccount = new JSONAccount();
                    jSONAccount.setName(account.name);
                    jSONAccount.setType(account.type);
                    arrayList.add(jSONAccount);
                }
                if (CollectionUtils.b(arrayList)) {
                    jSONMetaData.setAccounts(arrayList);
                }
            } catch (RuntimeException e2) {
                CLog.a(UserMetaDataUploadSyncer.class, "Error getting accouns".concat(String.valueOf(e2)));
            }
            try {
                try {
                    try {
                        file = getFile();
                        try {
                            if (file == null) {
                                CLog.a(getClass(), "Cannot create json file, aborting upload");
                                IoUtils.a((Closeable) null);
                                return null;
                            }
                            ObjectMapper jsonObjectMapper = getJsonObjectMapper();
                            bufferedWriter = getBufferedWriter(file);
                            try {
                                bufferedWriter.write("[");
                                jsonObjectMapper.writeValue(bufferedWriter, jSONMetaData);
                                bufferedWriter.write("]");
                                IoUtils.a(bufferedWriter);
                                return file;
                            } catch (IOException e3) {
                                e = e3;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (InvalidAlgorithmParameterException e4) {
                                e = e4;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (InvalidKeyException e5) {
                                e = e5;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (NoSuchAlgorithmException e6) {
                                e = e6;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (NoSuchPaddingException e7) {
                                e = e7;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            }
                        } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e8) {
                            e = e8;
                            bufferedWriter = null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        closeable = null;
                        IoUtils.a(closeable);
                        throw th;
                    }
                } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e9) {
                    e = e9;
                    file = null;
                    bufferedWriter = null;
                }
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
            }
        }

        public String getUploadMethod() {
            return "muejd";
        }

        @Override // com.callapp.contacts.sync.syncer.Syncer
        public boolean onSyncEnd() {
            boolean z;
            if (this.syncContext.isLongRunningSyncersAlreadyRunning(this)) {
                return false;
            }
            try {
                if (StringUtils.b((CharSequence) Prefs.aR.get()) && isSyncEnabled() && HttpUtils.a()) {
                    Context context = this.syncContext.context;
                    if (!HttpUtils.a()) {
                        z = false;
                    } else {
                        z = sendFileToServer(getUploadMethod(), a(context));
                    }
                    if (z) {
                        return super.onSyncEnd();
                    }
                }
                this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
                return false;
            } finally {
                this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
            }
        }
    }, SyncConfig.bothSyncs),
    commonSpammersDownload(new CommonSpammersSyncer(), SyncConfig.bothSyncs),
    identifiedContactDownloadSyncer(new IdentifiedContactsDownloadSyncer(), SyncConfig.onlyFirst),
    whoViewedDownloadSyncer(new WhoViewedDownloadSyncer(), SyncConfig.onlyFirst),
    referAndEarnPointDownloadSyncer(new ReferAndEarnPointDownloadSyncer(), SyncConfig.onlyFirst),
    idContactsLogSyncer(new IdContactsLogSyncer(), SyncConfig.bothSyncs),
    identifyContactUploadSyncer(new JsonContactsUploadSyncher<IdentifiedJSONContact>() { // from class: com.callapp.contacts.sync.syncer.upload.IdentifiedContactsUploadSyncer
        private IdentifiedJSONContact extractedInfoToJsonContact(ExtractedInfo extractedInfo) {
            IdentifiedJSONContact identifiedJSONContact = new IdentifiedJSONContact();
            identifiedJSONContact.setRecognizedPersonOrigin(extractedInfo.recognizedPersonOrigin.ordinal());
            identifiedJSONContact.setComType(extractedInfo.comType.ordinal());
            identifiedJSONContact.setSenderName(extractedInfo.senderName);
            identifiedJSONContact.setGroupName(extractedInfo.getGroupName());
            JSONPhoneNumber jSONPhoneNumber = new JSONPhoneNumber();
            jSONPhoneNumber.setPhoneNumber(extractedInfo.phoneAsRaw);
            identifiedJSONContact.setPhoneNumbers(Collections.singletonList(jSONPhoneNumber));
            identifiedJSONContact.setWhen(extractedInfo.when);
            identifiedJSONContact.setFirstSeen(extractedInfo.firstSeen);
            identifiedJSONContact.setLastNotificationShowed(extractedInfo.lastNotificationShowed);
            identifiedJSONContact.setSeenCount(extractedInfo.seenCount);
            identifiedJSONContact.setDisableNotification(extractedInfo.disableNotification);
            identifiedJSONContact.setFavorite(extractedInfo.starred);
            return identifiedJSONContact;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<IdentifiedJSONContact> getContacts() {
            List<ExtractedInfo> allImNotificationData = IMDataExtractionUtils.getAllImNotificationData();
            if (CollectionUtils.a(allImNotificationData)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (ExtractedInfo extractedInfo : allImNotificationData) {
                arrayList.add(extractedInfoToJsonContact(extractedInfo));
            }
            return arrayList;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "icuejd";
        }
    }, SyncConfig.onlyFull),
    whoViewedUploadSyncer(new JsonContactsUploadSyncher<WhoViewedMyProfileJSONContact>() { // from class: com.callapp.contacts.sync.syncer.upload.WhoViewedMyProfileUploadSyncer
        private WhoViewedMyProfileJSONContact whoViewedToJsonContact(ProfileViewedData profileViewedData) {
            WhoViewedMyProfileJSONContact whoViewedMyProfileJSONContact = new WhoViewedMyProfileJSONContact();
            whoViewedMyProfileJSONContact.setCount(profileViewedData.getCounter());
            whoViewedMyProfileJSONContact.setEntryPoint(profileViewedData.getEntrypoint().getValue());
            whoViewedMyProfileJSONContact.setLastSeen(profileViewedData.getLastViewed());
            whoViewedMyProfileJSONContact.setName(profileViewedData.getName());
            whoViewedMyProfileJSONContact.setType(profileViewedData.getType().getValue());
            whoViewedMyProfileJSONContact.setPhone(profileViewedData.getPhoneNumber());
            return whoViewedMyProfileJSONContact;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public Collection<WhoViewedMyProfileJSONContact> getContacts() {
            List<ProfileViewedData> allViewers = WhoViewedMyProfileDataManager.getAllViewers();
            if (CollectionUtils.a(allViewers)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (ProfileViewedData profileViewedData : allViewers) {
                arrayList.add(whoViewedToJsonContact(profileViewedData));
            }
            return arrayList;
        }

        @Override // com.callapp.contacts.sync.syncer.upload.JsonContactsUploadSyncher
        public String getUploadMethod() {
            return "wvmpu";
        }
    }, SyncConfig.onlyFull),
    validateSocialCallAppId(new ValidateSocialCallAppId(), SyncConfig.onlyFull);
    
    public SyncConfig syncConfig;
    public final Syncer syncer;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/Synchronizers$SyncConfig.class */
    public enum SyncConfig {
        onlyFirst,
        onlyFull,
        bothSyncs
    }

    Synchronizers(Syncer syncer, SyncConfig syncConfig) {
        this.syncer = syncer;
        this.syncConfig = syncConfig;
    }

    public static List<Synchronizers> getSyncers() {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, values());
        return arrayList;
    }
}
