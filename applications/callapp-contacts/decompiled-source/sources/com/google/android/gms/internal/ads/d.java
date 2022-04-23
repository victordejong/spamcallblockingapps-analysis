package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/d.class */
public final class d implements MediaContent {

    /* renamed from: a  reason: collision with root package name */
    public final dq f26630a;

    /* renamed from: b  reason: collision with root package name */
    private final VideoController f26631b = new VideoController();

    public d(dq dqVar) {
        this.f26630a = dqVar;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.f26630a.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.f26630a.d();
        } catch (RemoteException e) {
            za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.f26630a.c();
        } catch (RemoteException e) {
            za.zzc("", e);
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final Drawable getMainImage() {
        try {
            b b2 = this.f26630a.b();
            if (b2 != null) {
                return (Drawable) com.google.android.gms.dynamic.d.a(b2);
            }
            return null;
        } catch (RemoteException e) {
            za.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.f26630a.e() != null) {
                this.f26631b.zza(this.f26630a.e());
            }
        } catch (RemoteException e) {
            za.zzc("Exception occurred while getting video controller", e);
        }
        return this.f26631b;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.f26630a.f();
        } catch (RemoteException e) {
            za.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.f26630a.a(com.google.android.gms.dynamic.d.a(drawable));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
