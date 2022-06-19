package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.gms.internal.ads.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/d.class */
public final class C12297d implements MediaContent {

    /* renamed from: a */
    public final AbstractC12389dq f46842a;

    /* renamed from: b */
    private final VideoController f46843b = new VideoController();

    public C12297d(AbstractC12389dq abstractC12389dq) {
        this.f46842a = abstractC12389dq;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.f46842a.mo15788a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.f46842a.mo15783d();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.f46842a.mo15784c();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final Drawable getMainImage() {
        try {
            AbstractC12126b mo15785b = this.f46842a.mo15785b();
            if (mo15785b == null) {
                return null;
            }
            return (Drawable) BinderC12129d.m18980a(mo15785b);
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.f46842a.mo15782e() != null) {
                this.f46843b.zza(this.f46842a.mo15782e());
            }
        } catch (RemoteException e) {
            C13088za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f46843b;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.f46842a.mo15781f();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.f46842a.mo15787a(BinderC12129d.m18979a(drawable));
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
    }
}
