package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures.class */
public class CameraEffectTextures implements Parcelable {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new C0363a();

    /* renamed from: a */
    public final Bundle f2614a;

    /* renamed from: com.facebook.share.model.CameraEffectTextures$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures$a.class */
    public static final class C0363a implements Parcelable.Creator<CameraEffectTextures> {
        /* renamed from: a */
        public CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        /* renamed from: b */
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectTextures$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures$b.class */
    public static class C0364b {

        /* renamed from: a */
        public Bundle f2615a = new Bundle();

        /* renamed from: b */
        public CameraEffectTextures m4968b() {
            return new CameraEffectTextures(this, null);
        }

        /* renamed from: c */
        public C0364b m4967c(Parcel parcel) {
            m4966d((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
            return this;
        }

        /* renamed from: d */
        public C0364b m4966d(CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f2615a.putAll(cameraEffectTextures.f2614a);
            }
            return this;
        }
    }

    public CameraEffectTextures(Parcel parcel) {
        this.f2614a = parcel.readBundle(CameraEffectTextures.class.getClassLoader());
    }

    public CameraEffectTextures(C0364b c0364b) {
        this.f2614a = c0364b.f2615a;
    }

    public /* synthetic */ CameraEffectTextures(C0364b c0364b, C0363a c0363a) {
        this(c0364b);
    }

    /* renamed from: b */
    public Bitmap m4974b(String str) {
        Object obj = this.f2614a.get(str);
        if (obj instanceof Bitmap) {
            return (Bitmap) obj;
        }
        return null;
    }

    /* renamed from: c */
    public Uri m4973c(String str) {
        Object obj = this.f2614a.get(str);
        if (obj instanceof Uri) {
            return (Uri) obj;
        }
        return null;
    }

    /* renamed from: d */
    public Set<String> m4972d() {
        return this.f2614a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f2614a);
    }
}
