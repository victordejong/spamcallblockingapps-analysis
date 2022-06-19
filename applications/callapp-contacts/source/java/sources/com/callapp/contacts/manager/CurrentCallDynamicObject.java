package com.callapp.contacts.manager;

import android.graphics.Bitmap;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CurrentCallDynamicObject.class */
public class CurrentCallDynamicObject {

    /* renamed from: a */
    private String f25654a;

    /* renamed from: b */
    private String f25655b;

    /* renamed from: c */
    private String f25656c;

    /* renamed from: d */
    private Bitmap f25657d;

    /* renamed from: e */
    private Bitmap f25658e;

    /* renamed from: f */
    private boolean f25659f;

    /* renamed from: g */
    private ContactData f25660g;

    /* renamed from: h */
    private HashMap<Integer, AbstractFutureC3598c<Bitmap>> f25661h = new HashMap<>();

    /* renamed from: i */
    private long f25662i = new Date().getTime();

    /* renamed from: j */
    private final Object f25663j = new Object();

    /* renamed from: a */
    private static Bitmap m28687a(AbstractFutureC3598c<Bitmap> abstractFutureC3598c) {
        Bitmap bitmap;
        if (abstractFutureC3598c != null) {
            try {
                bitmap = abstractFutureC3598c.get();
            } catch (InterruptedException | CancellationException | ExecutionException e) {
            }
            return bitmap;
        }
        bitmap = null;
        return bitmap;
    }

    /* renamed from: a */
    private AbstractFutureC3598c<Bitmap> m28689a(int i, int i2, ContactData contactData) {
        AbstractFutureC3598c<Bitmap> m27039a = GlideUtils.m27039a(i, contactData);
        m28681b(this.f25661h.put(Integer.valueOf(i2), m27039a));
        return m27039a;
    }

    /* renamed from: b */
    private AbstractFutureC3598c<Bitmap> m28680b(String str, int i, ContactData contactData) {
        AbstractFutureC3598c<Bitmap> m27036a = GlideUtils.m27036a(str, contactData);
        m28681b(this.f25661h.put(Integer.valueOf(i), m27036a));
        return m27036a;
    }

    /* renamed from: b */
    private static void m28681b(AbstractFutureC3598c<Bitmap> abstractFutureC3598c) {
        if (abstractFutureC3598c != null) {
            abstractFutureC3598c.cancel(false);
            GlideUtils.m27035b(CallAppApplication.get()).m37548a((AbstractC3585j<?>) abstractFutureC3598c);
        }
    }

    /* renamed from: a */
    public final Bitmap m28690a(int i, int i2) {
        return m28687a(m28689a(i, i2, (ContactData) null));
    }

    /* renamed from: a */
    public final Bitmap m28686a(String str, int i, int i2, ContactData contactData) {
        if (StringUtils.m26045b((CharSequence) str)) {
            return m28687a(m28680b(str, i2, contactData));
        }
        AbstractFutureC3598c<Bitmap> futureTargetForResourceTarget = GlideUtils.getFutureTargetForResourceTarget(i);
        m28681b(this.f25661h.put(Integer.valueOf(i2), futureTargetForResourceTarget));
        return m28687a(futureTargetForResourceTarget);
    }

    /* renamed from: a */
    public final Bitmap m28685a(String str, int i, ContactData contactData) {
        return StringUtils.m26045b((CharSequence) str) ? m28687a(m28680b(str, i, contactData)) : m28687a(m28689a(2131232143, i, contactData));
    }

    /* renamed from: a */
    public final void m28691a(int i) {
        AbstractFutureC3598c<Bitmap> abstractFutureC3598c = this.f25661h.get(Integer.valueOf(i));
        if (abstractFutureC3598c != null) {
            m28681b(abstractFutureC3598c);
        }
    }

    /* renamed from: a */
    public final void m28688a(Bitmap bitmap, long j) {
        synchronized (this.f25663j) {
            if (j == this.f25662i) {
                this.f25657d = bitmap;
            } else if (bitmap == null) {
                this.f25657d = bitmap;
            }
        }
    }

    /* renamed from: a */
    public final void m28684a(String str, long j) {
        synchronized (this.f25663j) {
            if (j > this.f25662i) {
                this.f25662i = j;
                this.f25656c = str;
            }
        }
    }

    /* renamed from: a */
    public final void m28683a(String str, String str2, String str3, ContactData contactData) {
        this.f25654a = str;
        this.f25655b = str2;
        if (!StringUtils.m26042b(this.f25656c, str3)) {
            this.f25657d = null;
        }
        this.f25656c = str3;
        this.f25659f = false;
        this.f25660g = contactData;
        this.f25658e = null;
    }

    /* renamed from: a */
    public final void m28682a(boolean z, boolean z2, long j, boolean z3) {
        if (z) {
            m28684a(ImageUtils.getResourceUri(2131231607), j);
            m28688a(m28690a(2131231607, 0), j);
        } else if (z2) {
            m28684a(ImageUtils.getResourceUri(2131231612), j);
            m28688a(m28690a(2131231612, 0), j);
        } else {
            String str = null;
            if (getContact() != null) {
                if (getContact().isIncognito() || IncognitoCallManager.get().isIncognito(getContact())) {
                    str = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232150 : 2131232149);
                } else {
                    str = getContact().getThumbnailUrl();
                }
            }
            String str2 = str;
            if (StringUtils.m26059a((CharSequence) str)) {
                if (z3) {
                    str2 = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232145 : 2131232144);
                } else {
                    str2 = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232147 : 2131232146);
                }
            }
            m28684a(str2, j);
            m28688a(m28685a(getPhotoUrl(), 0, this.f25660g), j);
        }
    }

    public ContactData getContact() {
        return this.f25660g;
    }

    public String getName() {
        return this.f25655b;
    }

    public String getNumber() {
        return this.f25654a;
    }

    public Bitmap getPhotoBitmap() {
        return this.f25657d;
    }

    public String getPhotoUrl() {
        return this.f25656c;
    }

    public boolean isBlocked() {
        return this.f25659f;
    }

    public void setBlocked(boolean z) {
        this.f25659f = z;
    }

    public void setContact(ContactData contactData) {
        this.f25660g = contactData;
    }

    public void setName(String str) {
        this.f25655b = str;
    }
}
