package com.callapp.contacts.loader.api;

import android.webkit.WebView;
import b.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.event.Callback;
import com.callapp.contacts.framework.event.DelayedListenerRegistry;
import com.callapp.contacts.framework.event.FieldListenerRegistry;
import com.callapp.contacts.framework.event.NopListenerRegistry;
import com.callapp.contacts.loader.BlockedNumberLoader;
import com.callapp.contacts.loader.CompoundAsyncLoader;
import com.callapp.contacts.loader.CompoundSyncLoader;
import com.callapp.contacts.loader.EagerContactLoader;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.GmailLoader;
import com.callapp.contacts.loader.GoogleStaticMapLoader;
import com.callapp.contacts.loader.IMExtractorLoader;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.SuggestionLoader;
import com.callapp.contacts.loader.TwilioTrustedCommLoader;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.loader.UserMediaLoader;
import com.callapp.contacts.loader.UserSpamLoader;
import com.callapp.contacts.loader.WebsitesSocialIDParsingLoader;
import com.callapp.contacts.loader.business.FacebookPlacesLoader;
import com.callapp.contacts.loader.business.GooglePlacesLoader;
import com.callapp.contacts.loader.business.HuaweiPlacesLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.CallHistoryLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoaderIfNoOtherPhotoYet;
import com.callapp.contacts.loader.device.NoteLoader;
import com.callapp.contacts.loader.device.NumberGeocodingLoader;
import com.callapp.contacts.loader.device.SmsLoader;
import com.callapp.contacts.loader.device.UserProfileLoader;
import com.callapp.contacts.loader.external.CHLocalLoader;
import com.callapp.contacts.loader.external.GravatarLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.loader.external.WhitePagesLoader;
import com.callapp.contacts.loader.external.person.lookup.AuPersonLookupLoader;
import com.callapp.contacts.loader.im.SkypeLoader;
import com.callapp.contacts.loader.im.YahooLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.SelfContactData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.af;
import kotlinx.coroutines.az;
import kotlinx.coroutines.bo;
import kotlinx.coroutines.h;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/ContactLoader.class */
public class ContactLoader implements ContactDataChangeListener {
    private static final Set<ContactField> ALL_FIELDS = EnumSet.allOf(ContactField.class);
    private static final List<Class<? extends ContactDataLoader>> PRIORITY_SYNC_LOADERS = Arrays.asList(DeviceIdLoader.class, IncognitoContactLoader.class);
    public static Boolean preferPhotosFromDevice = null;
    private Callback<ContactData> callback;
    private ContactData contact;
    private Map<Object, Object> values;
    private final ArrayList<ContactDataLoader> asyncLoaders = new ArrayList<>();
    private final ArrayList<ContactDataLoader> syncPriorityLoaders = new ArrayList<>();
    private final ArrayList<ContactDataLoader> syncLoaders = new ArrayList<>();
    private final ArrayList<EagerContactLoader> eagerLoaders = new ArrayList<>();
    private final Set<ContactField> listenToFields = ContactFieldEnumSets.NONE.clone();
    private final Set<ContactField> fieldsToLoad = ContactFieldEnumSets.NONE.clone();
    final Set<LoaderFlags> flags = ContactFieldEnumSets.LOADER_FLAGSES_NONE.clone();
    private final Map<ContactDataChangeListener, Set<ContactField>> listeners = new ConcurrentHashMap();
    private Set<Class<? extends ContactDataLoader>> stoppedLoaders = new HashSet();
    private final Object loadContextsLock = new Object();
    private Set<LoadContext> loadContexts = new HashSet();
    private HashMap<ContactDataLoader, WebView> loadersWebViews = new HashMap<>();

    private void doLoad(ContactData contactData, Set<ContactField> set) {
        long currentTimeMillis = System.currentTimeMillis();
        this.asyncLoaders.trimToSize();
        this.syncLoaders.trimToSize();
        LoadContext loadContext = new LoadContext(contactData, this.fieldsToLoad, set, new CountDownCallback(this.asyncLoaders.size() + this.syncLoaders.size(), new Callback<LoadContext>() { // from class: com.callapp.contacts.loader.api.ContactLoader.2
            @Override // com.callapp.contacts.event.Callback
            public final /* synthetic */ void a(LoadContext loadContext2) {
                LoadContext loadContext3 = loadContext2;
                synchronized (ContactLoader.this.loadContextsLock) {
                    ContactLoader.this.loadContexts.remove(loadContext3);
                }
                if (ContactLoader.this.callback != null) {
                    ContactLoader.this.callback.a(loadContext3.f14535a);
                }
            }

            @Override // com.callapp.contacts.event.Callback
            public final /* synthetic */ void a(LoadContext loadContext2, Exception exc) {
                LoadContext loadContext3 = loadContext2;
                synchronized (ContactLoader.this.loadContextsLock) {
                    ContactLoader.this.loadContexts.remove(loadContext3);
                }
                if (ContactLoader.this.callback != null) {
                    ContactLoader.this.callback.a(loadContext3.f14535a, exc);
                }
            }
        }), this);
        synchronized (this.loadContextsLock) {
            this.loadContexts.add(loadContext);
        }
        boolean a2 = CollectionUtils.a(set);
        ArrayList<EagerContactLoader> arrayList = this.eagerLoaders;
        EagerContactLoader[] eagerContactLoaderArr = (EagerContactLoader[]) arrayList.toArray(new EagerContactLoader[arrayList.size()]);
        if (runEagerLoaders(loadContext, eagerContactLoaderArr)) {
            ArrayList<ContactDataLoader> arrayList2 = this.syncPriorityLoaders;
            if (runSyncLoaders(loadContext, (ContactDataLoader[]) arrayList2.toArray(new ContactDataLoader[arrayList2.size()]))) {
                boolean z = contactData.isContactInDevice() || contactData.isIncognito();
                if (z || updateEagerLoaders(loadContext, eagerContactLoaderArr)) {
                    ArrayList<ContactDataLoader> arrayList3 = this.syncLoaders;
                    if (runSyncLoaders(loadContext, (ContactDataLoader[]) arrayList3.toArray(new ContactDataLoader[arrayList3.size()]))) {
                        if (!z || updateEagerLoaders(loadContext, eagerContactLoaderArr)) {
                            if (a2 && this.flags.contains(LoaderFlags.iterativeLoad)) {
                                contactData.addListener(this, this.listenToFields);
                            }
                            if (!this.flags.contains(LoaderFlags.loadOnlyFromCache)) {
                                runAsyncLoaders(loadContext);
                            }
                            CLog.a(ContactLoader.class, "ContactLoader.doLoad() took " + (System.currentTimeMillis() - currentTimeMillis));
                        }
                    }
                }
            }
        }
    }

    public static boolean getPreferPhotosFromDevice() {
        if (preferPhotosFromDevice == null) {
            preferPhotosFromDevice = Prefs.i.get();
        }
        return preferPhotosFromDevice.booleanValue();
    }

    private FieldListenerRegistry newListenerRegistry() {
        return this.flags.contains(LoaderFlags.disableContactEvents) ? NopListenerRegistry.get() : new DelayedListenerRegistry(this);
    }

    private void runAsyncLoaders(LoadContext loadContext) {
        ContactDataLoader[] contactDataLoaderArr;
        ArrayList<ContactDataLoader> arrayList = this.asyncLoaders;
        for (ContactDataLoader loader : (ContactDataLoader[]) arrayList.toArray(new ContactDataLoader[arrayList.size()])) {
            if (shouldLoad(loader, loadContext.f14537c)) {
                if (!loadContext.isStopped()) {
                    af coroutineContext = loader instanceof NetworkDataLoader ? az.c() : az.a();
                    a.C0124a aVar = a.f6247a;
                    p.d(coroutineContext, "coroutineContext");
                    p.d(loader, "loader");
                    p.d(loadContext, "loadContext");
                    h.a(bo.f38751a, coroutineContext, new a.C0124a.b(loader, loadContext, null));
                } else {
                    return;
                }
            }
        }
    }

    private boolean runEagerLoaders(LoadContext loadContext, EagerContactLoader[] eagerContactLoaderArr) {
        for (EagerContactLoader loader : eagerContactLoaderArr) {
            if (shouldLoad(loader, loadContext.f14537c)) {
                if (loadContext.isStopped()) {
                    return false;
                }
                af coroutineContext = loader instanceof NetworkDataLoader ? az.c() : az.a();
                a.C0124a aVar = a.f6247a;
                p.d(coroutineContext, "coroutineContext");
                p.d(loader, "loader");
                p.d(loadContext, "loadContext");
                h.a(bo.f38751a, coroutineContext, new a.C0124a.c(loader, loadContext, null));
            }
        }
        return true;
    }

    private boolean runSyncLoaders(LoadContext loadContext, ContactDataLoader[] contactDataLoaderArr) {
        for (ContactDataLoader contactDataLoader : contactDataLoaderArr) {
            if (shouldLoad(contactDataLoader, loadContext.f14537c)) {
                long currentTimeMillis = System.currentTimeMillis();
                contactDataLoader.a(loadContext, true);
                CLog.a(ContactLoader.class, contactDataLoader.toString() + ".load() took " + (System.currentTimeMillis() - currentTimeMillis));
            }
            if (loadContext.isStopped()) {
                return false;
            }
        }
        return true;
    }

    private boolean updateEagerLoaders(LoadContext loadContext, EagerContactLoader[] eagerContactLoaderArr) {
        for (EagerContactLoader loader : eagerContactLoaderArr) {
            if (shouldLoad(loader, loadContext.f14537c)) {
                if (loadContext.isStopped()) {
                    return false;
                }
                af coroutineContext = loader instanceof NetworkDataLoader ? az.c() : az.a();
                a.C0124a aVar = a.f6247a;
                p.d(coroutineContext, "coroutineContext");
                p.d(loader, "loader");
                p.d(loadContext, "loadContext");
                h.a(bo.f38751a, coroutineContext, new a.C0124a.i(loader, loadContext, null));
            }
        }
        return true;
    }

    public ContactLoader addAllFields() {
        return addFields(ALL_FIELDS);
    }

    public ContactLoader addBirthdayStack() {
        CompoundSyncLoader compoundSyncLoader = new CompoundSyncLoader();
        compoundSyncLoader.a(new FastCacheDataLoader()).a(new CacheLoader()).a(new DevicePhotoLoader());
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(compoundSyncLoader);
        addSyncLoader(new CompoundAsyncLoader().a(new DeviceDataLoader()).a(new UserCorrectedInfoLoader()).a(new UserMediaLoader()).a(new IMExtractorLoader()));
        addSyncLoader(new CompoundAsyncLoader().a(new NotificationTelegramLoader()).a(new NotificationViberLoader()));
        addSyncLoader(new CompoundAsyncLoader(true, new LocalGenomeLoader(false)));
        addSyncLoader(new CompoundAsyncLoader(true, new FacebookLoader(), new InstagramLoader(), new VKLoader())).setDisableSpecificCaches();
        return this;
    }

    public ContactLoader addContactDetailsStack(boolean z) {
        boolean preferPhotosFromDevice2 = getPreferPhotosFromDevice();
        CompoundSyncLoader compoundSyncLoader = new CompoundSyncLoader();
        if (preferPhotosFromDevice2) {
            compoundSyncLoader.a(new DevicePhotoLoader()).a(new FastCacheDataLoader()).a(new CacheLoader());
        } else {
            compoundSyncLoader.a(new FastCacheDataLoader()).a(new CacheLoader()).a(new DevicePhotoLoader());
        }
        if (z) {
            addSyncLoader(new UserProfileLoader());
        }
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(new IncognitoContactLoader());
        addSyncLoader(compoundSyncLoader);
        addSyncLoader(new CompoundAsyncLoader().a(new UserCorrectedInfoLoader()).a(new UserSpamLoader()).a(new UserMediaLoader()).a(new DeviceDataLoader()).a(new IMExtractorLoader()));
        addEagerLoader(new LocalGenomeLoader(false));
        addLoader(new BlockedNumberLoader());
        addLoader(new NotificationViberLoader());
        addLoader(new NotificationTelegramLoader());
        addLoader(new CallHistoryLoader());
        addLoader(new SmsLoader());
        addLoader(new NoteLoader());
        addLoader(new NumberGeocodingLoader());
        addLoader(new FacebookLoader());
        addLoader(new TwitterLoader());
        addLoader(new InstagramLoader());
        addLoader(new PinterestLoader());
        addLoader(new VKLoader());
        addLoader(new GravatarLoader());
        addLoader(new GoogleStaticMapLoader());
        addLoader(new GooglePlacesLoader());
        addLoader(new FacebookPlacesLoader());
        addLoader(new HuaweiPlacesLoader());
        addLoader(new TwilioTrustedCommLoader());
        addLoader(new WebsitesSocialIDParsingLoader());
        addLoader(new WhitePagesLoader(this));
        addLoader(new CHLocalLoader());
        addLoader(new AuPersonLookupLoader());
        addLoader(new SkypeLoader());
        addLoader(new YahooLoader());
        addLoader(new GmailLoader());
        addLoader(new SuggestionLoader());
        addLoader(new CallRecorderLoader());
        return this;
    }

    public ContactLoader addDeviceDataAndFastPhotoNameLoaders() {
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(new DeviceDataLoader());
        addSyncLoader(new UserCorrectedInfoLoader());
        addSyncLoader(new UserMediaLoader());
        addSyncLoader(new IncognitoContactLoader());
        if (getPreferPhotosFromDevice()) {
            addSyncLoader(new DevicePhotoLoader());
            addSyncLoader(new FastCacheDataLoader());
        } else {
            addSyncLoader(new FastCacheDataLoader());
            addSyncLoader(new DevicePhotoLoaderIfNoOtherPhotoYet());
        }
        addSyncLoader(new IMExtractorLoader());
        return this;
    }

    public ContactLoader addDeviceIdAndDataLoaders() {
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(new DeviceDataLoader());
        addSyncLoader(new IncognitoContactLoader());
        return this;
    }

    public ContactLoader addDeviceIdAndPhotoLoaders() {
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(new UserMediaLoader());
        addSyncLoader(new IncognitoContactLoader());
        if (getPreferPhotosFromDevice()) {
            addSyncLoader(new DevicePhotoLoader());
            addSyncLoader(new FastCacheDataLoader());
        } else {
            addSyncLoader(new FastCacheDataLoader());
            addSyncLoader(new DevicePhotoLoaderIfNoOtherPhotoYet());
        }
        addSyncLoader(new IMExtractorLoader());
        return this;
    }

    public ContactLoader addEagerLoader(EagerContactLoader eagerContactLoader) {
        this.eagerLoaders.add(eagerContactLoader);
        this.listenToFields.addAll(eagerContactLoader.getListenFields());
        return this;
    }

    public ContactLoader addFields(ContactField contactField) {
        this.fieldsToLoad.add(contactField);
        return this;
    }

    public ContactLoader addFields(Collection<ContactField> collection) {
        this.fieldsToLoad.addAll(collection);
        return this;
    }

    public ContactLoader addFields(ContactField... contactFieldArr) {
        Collections.addAll(this.fieldsToLoad, contactFieldArr);
        return this;
    }

    public boolean addListener(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        if (this.contact == null || this.listeners.containsKey(contactDataChangeListener)) {
            return false;
        }
        this.listeners.put(contactDataChangeListener, set);
        this.contact.addListener(contactDataChangeListener, set);
        return true;
    }

    public ContactLoader addLoader(ContactDataLoader contactDataLoader) {
        this.asyncLoaders.add(contactDataLoader);
        this.listenToFields.addAll(contactDataLoader.getListenFields());
        return this;
    }

    public ContactLoader addLoader(ContactDataLoader... contactDataLoaderArr) {
        for (ContactDataLoader contactDataLoader : contactDataLoaderArr) {
            addLoader(contactDataLoader);
        }
        return this;
    }

    public ContactLoader addSelfContactStack() {
        boolean preferPhotosFromDevice2 = getPreferPhotosFromDevice();
        CompoundSyncLoader compoundSyncLoader = new CompoundSyncLoader();
        if (preferPhotosFromDevice2) {
            compoundSyncLoader.a(new DevicePhotoLoader()).a(new FastCacheDataLoader()).a(new CacheLoader());
        } else {
            compoundSyncLoader.a(new FastCacheDataLoader()).a(new CacheLoader()).a(new DevicePhotoLoader());
        }
        addSyncLoader(new DeviceIdLoader());
        addSyncLoader(new IncognitoContactLoader());
        addSyncLoader(new UserCorrectedInfoLoader());
        addSyncLoader(new UserMediaLoader());
        addSyncLoader(new UserProfileLoader());
        addSyncLoader(new CompoundAsyncLoader().a(compoundSyncLoader).a(new DeviceDataLoader()));
        addLoader(new FacebookLoader());
        addLoader(new TwitterLoader());
        addLoader(new InstagramLoader());
        addLoader(new PinterestLoader());
        addLoader(new VKLoader());
        return this;
    }

    public ContactLoader addSyncLoader(ContactDataLoader contactDataLoader) {
        if (PRIORITY_SYNC_LOADERS.contains(contactDataLoader.getClass())) {
            this.syncPriorityLoaders.add(contactDataLoader);
        } else {
            this.syncLoaders.add(contactDataLoader);
        }
        this.listenToFields.addAll(contactDataLoader.getListenFields());
        return this;
    }

    public ContactLoader addSyncLoader(ContactDataLoader... contactDataLoaderArr) {
        for (ContactDataLoader contactDataLoader : contactDataLoaderArr) {
            addSyncLoader(contactDataLoader);
        }
        return this;
    }

    public void addWebview(ContactDataLoader contactDataLoader, WebView webView) {
        this.loadersWebViews.put(contactDataLoader, webView);
    }

    public ContactData getContact() {
        return this.contact;
    }

    public Set<ContactField> getFieldsToLoad() {
        return this.fieldsToLoad;
    }

    public int getListenersCount() {
        return this.listeners.size();
    }

    public List<ContactDataLoader> getLoaders() {
        ArrayList arrayList = new ArrayList(this.asyncLoaders);
        arrayList.addAll(this.syncLoaders);
        arrayList.addAll(this.eagerLoaders);
        return arrayList;
    }

    public <T> T getValue(Object obj) {
        Map<Object, Object> map = this.values;
        if (map == null) {
            return null;
        }
        return (T) map.get(obj);
    }

    boolean isAnyLoaderStopped() {
        return this.stoppedLoaders.size() > 0;
    }

    boolean isAnyLoaderStopped(Collection<Class<? extends ContactDataLoader>> collection) {
        if (!CollectionUtils.b(collection)) {
            return false;
        }
        for (Class<? extends ContactDataLoader> cls : collection) {
            if (this.stoppedLoaders.contains(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean isLoaderStopped(Class<? extends ContactDataLoader> cls) {
        return this.stoppedLoaders.contains(cls);
    }

    public <T extends ContactData> T load(T t) {
        if (this.flags.contains(LoaderFlags.inSync)) {
            t.setInSync(true);
        }
        this.contact = t;
        if (this.listeners.size() > 0) {
            for (Map.Entry<ContactDataChangeListener, Set<ContactField>> entry : this.listeners.entrySet()) {
                t.addListener(entry.getKey(), entry.getValue());
            }
        }
        doLoad(t, null);
        return t;
    }

    public ContactData load(Phone phone) {
        return load((ContactLoader) new ContactData(phone, 0L, this.fieldsToLoad, newListenerRegistry(), false, null));
    }

    public ContactData load(Phone phone, long j) {
        return load((ContactLoader) new ContactData(phone, j, this.fieldsToLoad, newListenerRegistry(), false, null));
    }

    public ContactData load(Phone phone, long j, ExtractedInfo extractedInfo) {
        return load((ContactLoader) new ContactData(phone, j, this.fieldsToLoad, newListenerRegistry(), false, extractedInfo));
    }

    public ContactData load(Phone phone, long j, boolean z) {
        return load((ContactLoader) new ContactData(phone, j, this.fieldsToLoad, newListenerRegistry(), z, null));
    }

    public ContactData load(String str) {
        return load((ContactLoader) new ContactData(PhoneManager.get().a(str), 0L, this.fieldsToLoad, newListenerRegistry(), false, null));
    }

    public SelfContactData loadSelfContact(Phone phone) {
        return (SelfContactData) load((ContactLoader) new SelfContactData(phone, this.fieldsToLoad, newListenerRegistry(), true));
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        doLoad(contactData, set);
    }

    public ContactLoader removeField(ContactField contactField) {
        this.fieldsToLoad.remove(contactField);
        return this;
    }

    public ContactLoader removeFields(Set<ContactField> set) {
        this.fieldsToLoad.removeAll(set);
        return this;
    }

    public int removeListener(ContactDataChangeListener contactDataChangeListener) {
        ContactData contactData = this.contact;
        if (contactData != null) {
            contactData.removeListener(contactDataChangeListener);
        }
        this.listeners.remove(contactDataChangeListener);
        return this.listeners.size();
    }

    public void removeWebview(final ContactDataLoader contactDataLoader) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.loader.api.ContactLoader.1
            @Override // java.lang.Runnable
            public void run() {
                WebView webView = (WebView) ContactLoader.this.loadersWebViews.remove(contactDataLoader);
                if (webView != null) {
                    webView.destroy();
                }
            }
        });
    }

    public ContactLoader setDisableContactEvents() {
        this.flags.add(LoaderFlags.disableContactEvents);
        return this;
    }

    public ContactLoader setDisableSpecificCaches() {
        this.flags.add(LoaderFlags.disableSpecificCaches);
        return this;
    }

    public ContactLoader setForceRefresh() {
        this.flags.add(LoaderFlags.forceRefresh);
        return this;
    }

    public ContactLoader setIgnoreQuotaException() {
        this.flags.add(LoaderFlags.ignoreQuotaException);
        return this;
    }

    public ContactLoader setInSync() {
        this.flags.add(LoaderFlags.inSync);
        return this;
    }

    public ContactLoader setIterativeLoad() {
        this.flags.add(LoaderFlags.iterativeLoad);
        return this;
    }

    public ContactLoader setListener(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        if (!this.listeners.containsKey(contactDataChangeListener)) {
            this.listeners.put(contactDataChangeListener, set);
        }
        return this;
    }

    public ContactLoader setLoadCallback(Callback<ContactData> callback) {
        this.callback = callback;
        return this;
    }

    public ContactLoader setLoadOnlyFromCache() {
        this.flags.add(LoaderFlags.loadOnlyFromCache);
        return this;
    }

    public void setValue(Object obj, Object obj2) {
        if (this.values == null) {
            synchronized (this) {
                if (this.values == null) {
                    this.values = new ConcurrentHashMap();
                }
            }
        }
        this.values.put(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean shouldLoad(ContactDataLoader contactDataLoader, Set<ContactField> set) {
        boolean z = true;
        boolean z2 = !isLoaderStopped(contactDataLoader.getClass());
        if (z2) {
            if (set != null) {
                z = false;
            }
            if (!z) {
                z = CollectionUtils.a((Set) set, (Set) contactDataLoader.getListenFields());
            }
        } else {
            z = z2;
            if (Prefs.n.get().booleanValue()) {
                CLog.a(ContactLoader.class, "shouldLoad=false because loader is stopped for loader=" + contactDataLoader.getClass().getSimpleName());
                z = z2;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopLoader(Class<? extends ContactDataLoader> cls) {
        this.stoppedLoaders.add(cls);
    }

    public void stopLoading(ContactData contactData) {
        CLog.a(ContactLoader.class, "stopLoading(" + contactData + ")");
        if (this.listeners.size() > 0 && contactData != null) {
            for (ContactDataChangeListener contactDataChangeListener : this.listeners.keySet()) {
                contactData.removeListener(contactDataChangeListener);
            }
        }
        HashMap<ContactDataLoader, WebView> hashMap = this.loadersWebViews;
        if (hashMap != null && hashMap.size() > 0) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.loader.api.ContactLoader.3
                @Override // java.lang.Runnable
                public void run() {
                    for (WebView webView : ContactLoader.this.loadersWebViews.values()) {
                        webView.destroy();
                    }
                    ContactLoader.this.loadersWebViews.clear();
                }
            });
        }
        synchronized (this.loadContextsLock) {
            for (LoadContext loadContext : this.loadContexts) {
                loadContext.f = true;
                loadContext.c();
            }
        }
    }
}
