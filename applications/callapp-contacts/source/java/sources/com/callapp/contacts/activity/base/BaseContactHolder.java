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

    /* renamed from: v */
    private static Set<String> f20278v;

    /* renamed from: s */
    protected boolean f20279s;

    /* renamed from: t */
    public BaseAdapterItemData f20280t;

    /* renamed from: u */
    private final AdapterDataLoadTask f20281u = mo29328l();

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask.class */
    public abstract class AdapterDataLoadTask extends Task {

        /* renamed from: a */
        protected final ContactLoader f20288a;

        /* renamed from: b */
        public Phone f20289b;

        /* renamed from: d */
        private String f20291d;

        /* renamed from: e */
        private long f20292e;

        public AdapterDataLoadTask() {
            BaseContactHolder.this = r4;
            ContactLoader disableContactEvents = new ContactLoader().addFields(r4.getLoaderLoadFields()).setLoadOnlyFromCache().setDisableContactEvents();
            this.f20288a = disableContactEvents;
            mo29327a(disableContactEvents);
        }

        public String getCacheKey() {
            return this.f20291d;
        }

        /* renamed from: a */
        public String mo30271a(ContactData contactData) {
            return contactData.getThumbnailUrl();
        }

        /* renamed from: a */
        public abstract void mo29327a(ContactLoader contactLoader);

        /* renamed from: a */
        public boolean mo29762a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber()) && contactData.getDeviceId() == j;
        }

        /* renamed from: b */
        public boolean mo29326b(final ContactData contactData) {
            final String mo30271a = mo30271a(contactData);
            if (StringUtils.m26059a((CharSequence) mo30271a)) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdapterDataLoadTask adapterDataLoadTask = AdapterDataLoadTask.this;
                        if (adapterDataLoadTask.mo29762a(adapterDataLoadTask.getDeviceId(), AdapterDataLoadTask.this.getPhone(), contactData)) {
                            if (BaseContactHolder.this.f20271r != null) {
                                BaseContactHolder.this.f20271r.mo30683a(BaseContactHolder.this.f20280t);
                            }
                            CacheManager.get().m28384a(AdapterDataLoadTask.this.getCacheKey());
                            BaseContactHolder.this.getProfilePicture().m26688a();
                        }
                    }
                });
                return true;
            }
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask.2
                @Override // java.lang.Runnable
                public void run() {
                    AdapterDataLoadTask adapterDataLoadTask = AdapterDataLoadTask.this;
                    if (adapterDataLoadTask.mo29762a(adapterDataLoadTask.getDeviceId(), AdapterDataLoadTask.this.getPhone(), contactData)) {
                        if (BaseContactHolder.this.f20271r != null) {
                            BaseContactHolder.this.f20271r.mo30683a(BaseContactHolder.this.f20280t);
                        }
                        CacheManager.get().m28383a(AdapterDataLoadTask.this.getCacheKey(), new CacheManager.PhotoUrlCache(mo30271a, contactData.getPhotoDataSource(), contactData.getPhotoBGColor()));
                        if (contactData.isIncognito()) {
                            BaseContactHolder.this.getProfilePicture().m26688a();
                            BaseContactHolder.f20278v.add(AdapterDataLoadTask.this.getCacheKey());
                            return;
                        }
                        BaseContactHolder baseContactHolder = BaseContactHolder.this;
                        ProfilePictureView profilePicture = BaseContactHolder.this.getProfilePicture();
                        GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(mo30271a).m27023a(contactData.getPhotoDataSource());
                        m27023a.f28241g = contactData.getPhotoBGColor();
                        m27023a.f28244j = true;
                        m27023a.f28245k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        m27023a.f28246l = true;
                        baseContactHolder.f20279s = profilePicture.m26684a(m27023a);
                        BaseContactHolder.f20278v.remove(AdapterDataLoadTask.this.getCacheKey());
                    }
                }
            });
            return true;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doCancel() {
            this.f20288a.stopLoading(null);
            super.doCancel();
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            this.f20288a.stopLoading(null);
            if (!BaseContactHolder.this.f20280t.isLoaded()) {
                mo29326b(this.f20288a.load(getPhone(), getDeviceId()));
            }
        }

        public long getDeviceId() {
            return this.f20292e;
        }

        public Phone getPhone() {
            return this.f20289b;
        }

        public void setCacheKey(String str) {
            this.f20291d = str;
        }

        public void setDeviceId(long j) {
            this.f20292e = j;
        }

        public void setPhone(Phone phone) {
            this.f20289b = phone;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener.class */
    public interface OnDataLoadListener {
        /* renamed from: a */
        void mo30683a(BaseAdapterItemData baseAdapterItemData);
    }

    public BaseContactHolder(View view) {
        super(view);
        if (f20278v == null) {
            f20278v = new HashSet();
        }
    }

    /* renamed from: a */
    protected static boolean m31504a(String str) {
        return f20278v.contains(str);
    }

    /* renamed from: a */
    public final void m31503a(final String str, final BaseAdapterItemData baseAdapterItemData, final ScrollEvents scrollEvents, final long j, final Phone phone) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactHolder.1
            @Override // java.lang.Runnable
            public void run() {
                BaseContactHolder.this.f20280t = baseAdapterItemData;
                BaseContactHolder.this.f20281u.cancel();
                BaseContactHolder.this.getProfilePicture().m26688a();
                if (!BaseContactHolder.m31504a(str)) {
                    CacheManager cacheManager = CacheManager.get();
                    CacheManager.PhotoUrlCache photoUrlCache = cacheManager.f25927c.get(str);
                    if (photoUrlCache != null && StringUtils.m26045b((CharSequence) photoUrlCache.getPhotoUrl())) {
                        ProfilePictureView profilePicture = BaseContactHolder.this.getProfilePicture();
                        GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(photoUrlCache.getPhotoUrl()).m27023a(photoUrlCache.getDataSource());
                        m27023a.f28241g = photoUrlCache.getPhotoBGColor();
                        m27023a.f28244j = true;
                        m27023a.f28246l = true;
                        m27023a.f28245k = VastError.ERROR_CODE_GENERAL_WRAPPER;
                        profilePicture.m26684a(m27023a);
                    }
                }
                BaseContactHolder.this.f20281u.setPhone(phone);
                BaseContactHolder.this.f20281u.setDeviceId(j);
                BaseContactHolder.this.f20281u.setCacheKey(str);
                BaseContactHolder.this.mo31338a(scrollEvents.isScrolling(), phone);
            }
        });
    }

    /* renamed from: a */
    public void mo31338a(boolean z, Phone phone) {
        if (!mo31340a(phone)) {
            if (z) {
                this.f20281u.schedule(250);
            } else {
                this.f20281u.execute();
            }
        }
    }

    /* renamed from: a */
    protected boolean mo31340a(Phone phone) {
        return this.f20280t.isLoaded() || PhoneManager.get().m28240a(phone);
    }

    protected abstract EnumSet<ContactField> getLoaderLoadFields();

    public abstract ProfilePictureView getProfilePicture();

    /* renamed from: l */
    protected abstract AdapterDataLoadTask mo29328l();

    public void setOnDataLoadListener(OnDataLoadListener onDataLoadListener) {
        if (onDataLoadListener != null) {
            this.f20271r = onDataLoadListener;
        }
    }
}
