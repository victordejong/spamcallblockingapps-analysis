package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: n3.k.a.n */
/* loaded from: classes-dex2jar.jar:n3/k/a/n.class */
public class C26446n extends AbstractC26455u {

    /* renamed from: e */
    public Bitmap f74102e;

    /* renamed from: f */
    public IconCompat f74103f;

    /* renamed from: g */
    public boolean f74104g;

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: b */
    public void mo1832b(AbstractC26441j abstractC26441j) {
        C26456v c26456v = (C26456v) abstractC26441j;
        Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(c26456v.f74184b).setBigContentTitle(this.f74180b).bigPicture(this.f74102e);
        if (this.f74104g) {
            IconCompat iconCompat = this.f74103f;
            if (iconCompat == null) {
                bigPicture.bigLargeIcon((Bitmap) null);
            } else {
                bigPicture.bigLargeIcon(iconCompat.v(c26456v.f74183a));
            }
        }
        if (this.f74182d) {
            bigPicture.setSummaryText(this.f74181c);
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: c */
    public void mo1831c(Bundle bundle) {
        super.mo1831c(bundle);
        bundle.remove("android.largeIcon.big");
        bundle.remove("android.picture");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: f */
    public String mo1828f() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: j */
    public void mo1824j(Bundle bundle) {
        IconCompat iconCompat;
        super.mo1824j(bundle);
        if (bundle.containsKey("android.largeIcon.big")) {
            Parcelable parcelable = bundle.getParcelable("android.largeIcon.big");
            if (parcelable != null) {
                if (parcelable instanceof Icon) {
                    iconCompat = IconCompat.f((Icon) parcelable);
                } else if (parcelable instanceof Bitmap) {
                    iconCompat = IconCompat.h((Bitmap) parcelable);
                }
                this.f74103f = iconCompat;
                this.f74104g = true;
            }
            iconCompat = null;
            this.f74103f = iconCompat;
            this.f74104g = true;
        }
        this.f74102e = (Bitmap) bundle.getParcelable("android.picture");
    }

    /* renamed from: k */
    public C26446n m1874k(CharSequence charSequence) {
        this.f74181c = C26450q.m1862g(charSequence);
        this.f74182d = true;
        return this;
    }
}
