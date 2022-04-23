package com.callapp.contacts.sync.syncer.cache.social;

import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.sync.MatchAndSuggestHelper;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.sync.syncer.cache.FirstFastCacheSyncer;
import com.callapp.contacts.util.glide.CallAppRequestListener;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.lang.Class;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer.class */
public abstract class BaseSocialSyncer<T extends Class<? extends BaseSocialLoader>> extends Syncer {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<ContactLoader> f15800a = new ThreadLocal<ContactLoader>() { // from class: com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ContactLoader initialValue() {
            ContactLoader addFields = new ContactLoader().setInSync().setDisableContactEvents().addFields(ContactFieldEnumSets.NAME_FIELDS).addFields(ContactField.emails, ContactField.photoUrl, ContactField.birthday).addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS).addFields(ContactFieldEnumSets.SYNC_SEARCH_SOCIAL_NETWORKS);
            addFields.addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new SocialSyncerLoader().a(new LocalGenomeLoader(true)).a(new GravatarLoader()).a(new FacebookLoader()).a(new VKLoader()).a(new InstagramLoader()).a(new TwitterLoader()).a(new PinterestLoader())).setDisableSpecificCaches();
            return addFields;
        }
    };

    public static void a(final ContactData contactData) {
        HashSet<String> hashSet = new HashSet();
        if (StringUtils.b((CharSequence) contactData.getPhotoUrl())) {
            hashSet.add(contactData.getPhotoUrl());
        }
        if (StringUtils.b((CharSequence) contactData.getThumbnailUrl())) {
            hashSet.add(contactData.getThumbnailUrl());
        }
        if (!CollectionUtils.a(hashSet)) {
            final CountDownLatch countDownLatch = new CountDownLatch(hashSet.size());
            final boolean[] zArr = {false};
            for (String str : hashSet) {
                GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(str).a(contactData.getPhotoDataSource());
                a2.n = new CallAppRequestListener(str, contactData, new g() { // from class: com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer.2
                    @Override // com.bumptech.glide.e.g
                    public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                        if (ContactData.this != null && HttpUtils.a()) {
                            ContactData.this.resetPhotoWithoutFiringAndUpdating();
                        }
                        countDownLatch.countDown();
                        return false;
                    }

                    @Override // com.bumptech.glide.e.g
                    public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                        zArr[0] = true;
                        countDownLatch.countDown();
                        return false;
                    }
                });
                a2.e = CallAppApplication.get();
                a2.b();
            }
            try {
                countDownLatch.await(20L, TimeUnit.SECONDS);
                if (zArr[0]) {
                    FastCacheDataManager.b(contactData);
                }
            } catch (InterruptedException e) {
            }
        }
    }

    protected ContactLoader getContactLoaderFromThreadLocal() {
        return f15800a.get();
    }

    public abstract T getLoaderClass();

    public abstract int getNetworkId();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        ContactLoader contactLoaderFromThreadLocal = getContactLoaderFromThreadLocal();
        if (CollectionUtils.b(contactLoaderFromThreadLocal.getLoaders())) {
            ContactDataLoader contactDataLoader = contactLoaderFromThreadLocal.getLoaders().get(0);
            if (contactDataLoader instanceof SocialSyncerLoader) {
                ((SocialSyncerLoader) contactDataLoader).setLoadNotFromCache(getLoaderClass());
            }
        }
        ContactData contactData = syncerContext.contact;
        ContactDataUtils.setLoadInternals(contactData, false, contactLoaderFromThreadLocal.getFieldsToLoad());
        contactLoaderFromThreadLocal.load((ContactLoader) contactData);
        FirstFastCacheSyncer.a(syncerContext, contactData);
        if (contactData.getPastChangedFields().contains(ContactField.photoUrl)) {
            a(contactData);
        }
        if (!HttpUtils.a() || contactLoaderFromThreadLocal.isLoaderStopped(getLoaderClass())) {
            setSyncEnabled(false);
            return;
        }
        MatchAndSuggestHelper.a(getNetworkId(), contactData);
        syncerContext.markFullySynced();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        return super.shouldSync() && Singletons.get().getRemoteAccountHelper(getNetworkId()).isLoggedIn();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        if (!isSyncEnabled()) {
            return false;
        }
        return this.syncContext.startDate - getSyncPeriodMillis() >= this.syncContext.getSyncData(contactData).getSyncDate(getName());
    }
}
