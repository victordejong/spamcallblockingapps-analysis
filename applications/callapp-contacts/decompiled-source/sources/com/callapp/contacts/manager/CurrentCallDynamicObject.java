package com.callapp.contacts.manager;

import android.graphics.Bitmap;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.c;
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

    /* renamed from: a  reason: collision with root package name */
    private String f14834a;

    /* renamed from: b  reason: collision with root package name */
    private String f14835b;

    /* renamed from: c  reason: collision with root package name */
    private String f14836c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f14837d;
    private Bitmap e;
    private boolean f;
    private ContactData g;
    private HashMap<Integer, c<Bitmap>> h = new HashMap<>();
    private long i = new Date().getTime();
    private final Object j = new Object();

    private static Bitmap a(c<Bitmap> cVar) {
        Bitmap bitmap;
        if (cVar != null) {
            try {
                bitmap = cVar.get();
            } catch (InterruptedException | CancellationException | ExecutionException e) {
            }
            return bitmap;
        }
        bitmap = null;
        return bitmap;
    }

    private c<Bitmap> a(int i, int i2, ContactData contactData) {
        c<Bitmap> a2 = GlideUtils.a(i, contactData);
        b(this.h.put(Integer.valueOf(i2), a2));
        return a2;
    }

    private c<Bitmap> b(String str, int i, ContactData contactData) {
        c<Bitmap> a2 = GlideUtils.a(str, contactData);
        b(this.h.put(Integer.valueOf(i), a2));
        return a2;
    }

    private static void b(c<Bitmap> cVar) {
        if (cVar != null) {
            cVar.cancel(false);
            GlideUtils.b(CallAppApplication.get()).a((j<?>) cVar);
        }
    }

    public final Bitmap a(int i, int i2) {
        return a(a(i, i2, (ContactData) null));
    }

    public final Bitmap a(String str, int i, int i2, ContactData contactData) {
        if (StringUtils.b((CharSequence) str)) {
            return a(b(str, i2, contactData));
        }
        c<Bitmap> futureTargetForResourceTarget = GlideUtils.getFutureTargetForResourceTarget(i);
        b(this.h.put(Integer.valueOf(i2), futureTargetForResourceTarget));
        return a(futureTargetForResourceTarget);
    }

    public final Bitmap a(String str, int i, ContactData contactData) {
        return StringUtils.b((CharSequence) str) ? a(b(str, i, contactData)) : a(a(2131232143, i, contactData));
    }

    public final void a(int i) {
        c<Bitmap> cVar = this.h.get(Integer.valueOf(i));
        if (cVar != null) {
            b(cVar);
        }
    }

    public final void a(Bitmap bitmap, long j) {
        synchronized (this.j) {
            if (j == this.i) {
                this.f14837d = bitmap;
            } else if (bitmap == null) {
                this.f14837d = bitmap;
            }
        }
    }

    public final void a(String str, long j) {
        synchronized (this.j) {
            if (j > this.i) {
                this.i = j;
                this.f14836c = str;
            }
        }
    }

    public final void a(String str, String str2, String str3, ContactData contactData) {
        this.f14834a = str;
        this.f14835b = str2;
        if (!StringUtils.b(this.f14836c, str3)) {
            this.f14837d = null;
        }
        this.f14836c = str3;
        this.f = false;
        this.g = contactData;
        this.e = null;
    }

    public final void a(boolean z, boolean z2, long j, boolean z3) {
        if (z) {
            a(ImageUtils.getResourceUri(2131231607), j);
            a(a(2131231607, 0), j);
        } else if (z2) {
            a(ImageUtils.getResourceUri(2131231612), j);
            a(a(2131231612, 0), j);
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
            if (StringUtils.a((CharSequence) str)) {
                if (z3) {
                    str2 = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232145 : 2131232144);
                } else {
                    str2 = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232147 : 2131232146);
                }
            }
            a(str2, j);
            a(a(getPhotoUrl(), 0, this.g), j);
        }
    }

    public ContactData getContact() {
        return this.g;
    }

    public String getName() {
        return this.f14835b;
    }

    public String getNumber() {
        return this.f14834a;
    }

    public Bitmap getPhotoBitmap() {
        return this.f14837d;
    }

    public String getPhotoUrl() {
        return this.f14836c;
    }

    public boolean isBlocked() {
        return this.f;
    }

    public void setBlocked(boolean z) {
        this.f = z;
    }

    public void setContact(ContactData contactData) {
        this.g = contactData;
    }

    public void setName(String str) {
        this.f14835b = str;
    }
}
