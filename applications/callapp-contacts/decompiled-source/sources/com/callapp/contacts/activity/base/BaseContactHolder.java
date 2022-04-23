package com.callapp.contacts.activity.base;

import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactHolder.class */
public abstract class BaseContactHolder extends BaseCallAppViewHolder {
    private static Set<String> v;
    protected boolean s;
    public BaseAdapterItemData t;
    private final AdapterDataLoadTask u = l();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask.class */
    public abstract class AdapterDataLoadTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        protected final ContactLoader f11107a;

        /* renamed from: b  reason: collision with root package name */
        public Phone f11108b;

        /* renamed from: d  reason: collision with root package name */
        private String f11110d;
        private long e;

        public AdapterDataLoadTask() {
            ContactLoader disableContactEvents = new ContactLoader().addFields(BaseContactHolder.this.getLoaderLoadFields()).setLoadOnlyFromCache().setDisableContactEvents();
            this.f11107a = disableContactEvents;
            a(disableContactEvents);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getCacheKey() {
            return this.f11110d;
        }

        public String a(ContactData contactData) {
            return contactData.getThumbnailUrl();
        }

        public abstract void a(ContactLoader contactLoader);

        public boolean a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber()) && contactData.getDeviceId() == j;
        }

        public boolean b(final ContactData contactData) {
            final String a2 = a(contactData);
            if (StringUtils.a((CharSequence) a2)) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdapterDataLoadTask adapterDataLoadTask = AdapterDataLoadTask.this;
                        if (adapterDataLoadTask.a(adapterDataLoadTask.getDeviceId(), AdapterDataLoadTask.this.getPhone(), contactData)) {
                            if (BaseContactHolder.this.r != null) {
                                BaseContactHolder.this.r.a(BaseContactHolder.this.t);
                            }
                            CacheManager.get().a(AdapterDataLoadTask.this.getCacheKey());
                            BaseContactHolder.this.getProfilePicture().a();
                        }
                    }
                });
                return true;
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask.2
                @Override // java.lang.Runnable
                public void run() {
                    AdapterDataLoadTask adapterDataLoadTask = AdapterDataLoadTask.this;
                    if (adapterDataLoadTask.a(adapterDataLoadTask.getDeviceId(), AdapterDataLoadTask.this.getPhone(), contactData)) {
                        if (BaseContactHolder.this.r != null) {
                            BaseContactHolder.this.r.a(BaseContactHolder.this.t);
                        }
                        CacheManager.get().a(AdapterDataLoadTask.this.getCacheKey(), new CacheManager.PhotoUrlCache(a2, contactData.getPhotoDataSource(), contactData.getPhotoBGColor()));
                        if (contactData.isIncognito()) {
                            BaseContactHolder.this.getProfilePicture().a();
                            BaseContactHolder.v.add(AdapterDataLoadTask.this.getCacheKey());
                            return;
                        }
                        BaseContactHolder baseContactHolder = BaseContactHolder.this;
                        ProfilePictureView profilePicture = BaseContactHolder.this.getProfilePicture();
                        GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(a2).a(contactData.getPhotoDataSource());
                        a3.g = contactData.getPhotoBGColor();
                        a3.j = true;
                        a3.k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        a3.l = true;
                        baseContactHolder.s = profilePicture.a(a3);
                        BaseContactHolder.v.remove(AdapterDataLoadTask.this.getCacheKey());
                    }
                }
            });
            return true;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doCancel() {
            this.f11107a.stopLoading(null);
            super.doCancel();
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            this.f11107a.stopLoading(null);
            if (!BaseContactHolder.this.t.isLoaded()) {
                b(this.f11107a.load(getPhone(), getDeviceId()));
            }
        }

        public long getDeviceId() {
            return this.e;
        }

        public Phone getPhone() {
            return this.f11108b;
        }

        public void setCacheKey(String str) {
            this.f11110d = str;
        }

        public void setDeviceId(long j) {
            this.e = j;
        }

        public void setPhone(Phone phone) {
            this.f11108b = phone;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener.class */
    public interface OnDataLoadListener {
        void a(BaseAdapterItemData baseAdapterItemData);
    }

    public BaseContactHolder(View view) {
        super(view);
        if (v == null) {
            v = new HashSet();
        }
    }

    protected static boolean a(String str) {
        return v.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final String str, final BaseAdapterItemData baseAdapterItemData, final ScrollEvents scrollEvents, final long j, final Phone phone) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.1
            @Override // java.lang.Runnable
            public void run() {
                BaseContactHolder.this.t = baseAdapterItemData;
                BaseContactHolder.this.u.cancel();
                BaseContactHolder.this.getProfilePicture().a();
                if (!BaseContactHolder.a(str)) {
                    CacheManager cacheManager = CacheManager.get();
                    CacheManager.PhotoUrlCache photoUrlCache = cacheManager.f14994c.get(str);
                    if (photoUrlCache != null && StringUtils.b((CharSequence) photoUrlCache.getPhotoUrl())) {
                        ProfilePictureView profilePicture = BaseContactHolder.this.getProfilePicture();
                        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(photoUrlCache.getPhotoUrl()).a(photoUrlCache.getDataSource());
                        a2.g = photoUrlCache.getPhotoBGColor();
                        a2.j = true;
                        a2.l = true;
                        a2.k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        profilePicture.a(a2);
                    }
                }
                BaseContactHolder.this.u.setPhone(phone);
                BaseContactHolder.this.u.setDeviceId(j);
                BaseContactHolder.this.u.setCacheKey(str);
                BaseContactHolder.this.a(scrollEvents.isScrolling(), phone);
            }
        });
    }

    public void a(boolean z, Phone phone) {
        if (a(phone)) {
            return;
        }
        if (z) {
            this.u.schedule(250);
        } else {
            this.u.execute();
        }
    }

    protected boolean a(Phone phone) {
        return this.t.isLoaded() || PhoneManager.get().a(phone);
    }

    protected abstract EnumSet<ContactField> getLoaderLoadFields();

    public abstract ProfilePictureView getProfilePicture();

    protected abstract AdapterDataLoadTask l();

    public void setOnDataLoadListener(OnDataLoadListener onDataLoadListener) {
        if (onDataLoadListener != null) {
            this.r = onDataLoadListener;
        }
    }
}
