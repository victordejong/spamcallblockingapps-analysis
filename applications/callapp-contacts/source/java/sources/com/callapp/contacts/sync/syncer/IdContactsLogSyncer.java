package com.callapp.contacts.sync.syncer;

import com.callapp.contacts.loader.BlockedNumberLoader;
import com.callapp.contacts.loader.CompoundAsyncLoader;
import com.callapp.contacts.loader.CompoundSyncLoader;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.GmailLoader;
import com.callapp.contacts.loader.GoogleStaticMapLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.SuggestionLoader;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.loader.UserMediaLoader;
import com.callapp.contacts.loader.UserSpamLoader;
import com.callapp.contacts.loader.WebsitesSocialIDParsingLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoader;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.loader.external.WhitePagesLoader;
import com.callapp.contacts.loader.p238im.SkypeLoader;
import com.callapp.contacts.loader.p238im.YahooLoader;
import com.callapp.contacts.loader.p239vk.VKLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/IdContactsLogSyncer.class */
public class IdContactsLogSyncer extends Syncer {
    /* renamed from: b */
    public static void m27738b() {
        ContactLoader inSync = new ContactLoader().addFields(ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS).addFields(ContactFieldEnumSets.DEVICE_ID).setInSync();
        inSync.addSyncLoader(new DeviceIdLoader());
        inSync.addSyncLoader(new FastCacheDataLoader());
        ContactLoader inSync2 = new ContactLoader().addFields(ContactFieldEnumSets.NAME_FIELDS).addFields(ContactField.emails, ContactField.photoUrl, ContactField.birthday).addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS).addFields(ContactFieldEnumSets.SYNC_SEARCH_SOCIAL_NETWORKS).setInSync();
        boolean booleanValue = Prefs.f26647i.get().booleanValue();
        CompoundSyncLoader compoundSyncLoader = new CompoundSyncLoader();
        if (booleanValue) {
            compoundSyncLoader.m28957a(new DevicePhotoLoader()).m28957a(new FastCacheDataLoader()).m28957a(new CacheLoader());
        } else {
            compoundSyncLoader.m28957a(new FastCacheDataLoader()).m28957a(new CacheLoader()).m28957a(new DevicePhotoLoader());
        }
        inSync2.addSyncLoader(new DeviceIdLoader());
        inSync2.addSyncLoader(new CompoundAsyncLoader().m28957a(compoundSyncLoader).m28957a(new DeviceDataLoader()));
        inSync2.addSyncLoader(new BlockedNumberLoader());
        inSync2.addSyncLoader(new UserCorrectedInfoLoader());
        inSync2.addSyncLoader(new UserSpamLoader());
        inSync2.addSyncLoader(new UserMediaLoader());
        inSync2.addSyncLoader(new NotificationViberLoader());
        inSync2.addSyncLoader(new NotificationTelegramLoader());
        inSync2.addSyncLoader(new LocalGenomeLoader(true));
        inSync2.addSyncLoader(new FacebookLoader());
        inSync2.addSyncLoader(new VKLoader());
        inSync2.addSyncLoader(new TwitterLoader());
        inSync2.addSyncLoader(new InstagramLoader());
        inSync2.addSyncLoader(new PinterestLoader());
        inSync2.addSyncLoader(new GravatarLoader());
        inSync2.addSyncLoader(new GoogleStaticMapLoader());
        inSync2.addSyncLoader(new WebsitesSocialIDParsingLoader());
        inSync2.addSyncLoader(new WhitePagesLoader(inSync2));
        inSync2.addSyncLoader(new SkypeLoader());
        inSync2.addSyncLoader(new YahooLoader());
        inSync2.addSyncLoader(new GmailLoader());
        inSync2.addSyncLoader(new SuggestionLoader());
        for (ExtractedInfo extractedInfo : IMDataExtractionUtils.getAllImNotificationData()) {
            ContactData load = inSync.load(PhoneManager.get().m28239a(extractedInfo.phoneAsRaw));
            if (load.getFastCacheData() == null || !StringUtils.m26045b((CharSequence) load.getFastCacheData().getFullName()) || load.getFastCacheData().getPhotoUrls() == null || !StringUtils.m26045b((CharSequence) load.getFastCacheData().getPhotoUrls().getPhotoUrl())) {
                ContactData load2 = inSync2.load(PhoneManager.get().m28239a(extractedInfo.phoneAsRaw));
                if (StringUtils.m26045b((CharSequence) load2.getFullName())) {
                    FastCacheDataManager.m28948a(load2);
                }
                if (load2.hasAnyPhotoUrl()) {
                    BaseSocialSyncer.m27727a(load2);
                }
            }
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        syncerContext.markFullySynced();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean onSyncEnd() {
        if (this.syncContext.isLongRunningSyncersAlreadyRunning(this)) {
            return false;
        }
        if (shouldSync()) {
            if (this.syncContext.isFirstSync) {
                new Task() { // from class: com.callapp.contacts.sync.syncer.IdContactsLogSyncer.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        IdContactsLogSyncer.m27738b();
                    }
                }.execute();
            } else {
                m27738b();
            }
        }
        return super.onSyncEnd();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return false;
    }
}
