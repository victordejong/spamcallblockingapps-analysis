package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.p047e.AbstractC2648b;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures.class */
public class CameraEffectTextures implements ShareModel {
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new C2678a();

    /* renamed from: a */
    public final Bundle f3646a;

    /* renamed from: com.facebook.share.model.CameraEffectTextures$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures$a.class */
    public static final class C2678a implements Parcelable.Creator<CameraEffectTextures> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectTextures createFromParcel(Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectTextures$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectTextures$b.class */
    public static class C2679b implements AbstractC2648b<CameraEffectTextures, C2679b> {

        /* renamed from: a */
        public Bundle f3647a = new Bundle();

        /* renamed from: a */
        public C2679b m33930a(Parcel parcel) {
            m33928a((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
            return this;
        }

        /* renamed from: a */
        public C2679b m33928a(CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f3647a.putAll(cameraEffectTextures.f3646a);
            }
            return this;
        }

        /* renamed from: a */
        public CameraEffectTextures m33931a() {
            return new CameraEffectTextures(this, null);
        }
    }

    public CameraEffectTextures(Parcel parcel) {
        this.f3646a = parcel.readBundle(CameraEffectTextures.class.getClassLoader());
    }

    public CameraEffectTextures(C2679b bVar) {
        this.f3646a = bVar.f3647a;
    }

    public /* synthetic */ CameraEffectTextures(C2679b bVar, C2678a aVar) {
        this(bVar);
    }

    @Nullable
    /* renamed from: a */
    public Bitmap m33933a(String str) {
        Object obj = this.f3646a.get(str);
        if (obj instanceof Bitmap) {
            return (Bitmap) obj;
        }
        return null;
    }

    /* renamed from: a */
    public Set<String> m33935a() {
        return this.f3646a.keySet();
    }

    @Nullable
    /* renamed from: b */
    public Uri m33932b(String str) {
        Object obj = this.f3646a.get(str);
        if (obj instanceof Uri) {
            return (Uri) obj;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f3646a);
    }
}
