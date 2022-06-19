package com.callapp.contacts.sync.syncer.cache.social;

import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.p239vk.VKLoader;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
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

    /* renamed from: a */
    public static final ThreadLocal<ContactLoader> f27633a = new ThreadLocal<ContactLoader>() { // from class: com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ContactLoader initialValue() {
            ContactLoader addFields = new ContactLoader().setInSync().setDisableContactEvents().addFields(ContactFieldEnumSets.NAME_FIELDS).addFields(ContactField.emails, ContactField.photoUrl, ContactField.birthday).addFields(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS).addFields(ContactFieldEnumSets.SYNC_SEARCH_SOCIAL_NETWORKS);
            addFields.addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new SocialSyncerLoader().m28957a(new LocalGenomeLoader(true)).m28957a(new GravatarLoader()).m28957a(new FacebookLoader()).m28957a(new VKLoader()).m28957a(new InstagramLoader()).m28957a(new TwitterLoader()).m28957a(new PinterestLoader())).setDisableSpecificCaches();
            return addFields;
        }
    };

    /* renamed from: a */
    public static void m27727a(final ContactData contactData) {
        HashSet<String> hashSet = new HashSet();
        if (StringUtils.m26045b((CharSequence) contactData.getPhotoUrl())) {
            hashSet.add(contactData.getPhotoUrl());
        }
        if (StringUtils.m26045b((CharSequence) contactData.getThumbnailUrl())) {
            hashSet.add(contactData.getThumbnailUrl());
        }
        if (CollectionUtils.m26076a(hashSet)) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(hashSet.size());
        final boolean[] zArr = {false};
        for (String str : hashSet) {
            GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(str).m27023a(contactData.getPhotoDataSource());
            m27023a.f28248n = new CallAppRequestListener(str, contactData, new AbstractC3604g() { // from class: com.callapp.contacts.sync.syncer.cache.social.BaseSocialSyncer.2
                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                    if (contactData != null && HttpUtils.m26985a()) {
                        contactData.resetPhotoWithoutFiringAndUpdating();
                    }
                    countDownLatch.countDown();
                    return false;
                }

                @Override // com.bumptech.glide.p112e.AbstractC3604g
                /* renamed from: a */
                public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                    zArr[0] = true;
                    countDownLatch.countDown();
                    return false;
                }
            });
            m27023a.f28239e = CallAppApplication.get();
            m27023a.m27019b();
        }
        try {
            countDownLatch.await(20L, TimeUnit.SECONDS);
            if (!zArr[0]) {
                return;
            }
            FastCacheDataManager.m28942b(contactData);
        } catch (InterruptedException e) {
        }
    }

    protected ContactLoader getContactLoaderFromThreadLocal() {
        return f27633a.get();
    }

    public abstract T getLoaderClass();

    public abstract int getNetworkId();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        ContactLoader contactLoaderFromThreadLocal = getContactLoaderFromThreadLocal();
        if (CollectionUtils.m26068b(contactLoaderFromThreadLocal.getLoaders())) {
            ContactDataLoader contactDataLoader = contactLoaderFromThreadLocal.getLoaders().get(0);
            if (contactDataLoader instanceof SocialSyncerLoader) {
                ((SocialSyncerLoader) contactDataLoader).setLoadNotFromCache(getLoaderClass());
            }
        }
        ContactData contactData = syncerContext.contact;
        ContactDataUtils.setLoadInternals(contactData, false, contactLoaderFromThreadLocal.getFieldsToLoad());
        contactLoaderFromThreadLocal.load((ContactLoader) contactData);
        FirstFastCacheSyncer.m27733a(syncerContext, contactData);
        if (contactData.getPastChangedFields().contains(ContactField.photoUrl)) {
            m27727a(contactData);
        }
        if (!HttpUtils.m26985a() || contactLoaderFromThreadLocal.isLoaderStopped(getLoaderClass())) {
            setSyncEnabled(false);
            return;
        }
        MatchAndSuggestHelper.m27776a(getNetworkId(), contactData);
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
