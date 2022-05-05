package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.p047e.AbstractC2648b;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments.class */
public class CameraEffectArguments implements ShareModel {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new C2676a();

    /* renamed from: a */
    public final Bundle f3644a;

    /* renamed from: com.facebook.share.model.CameraEffectArguments$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments$a.class */
    public static final class C2676a implements Parcelable.Creator<CameraEffectArguments> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectArguments$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments$b.class */
    public static class C2677b implements AbstractC2648b<CameraEffectArguments, C2677b> {

        /* renamed from: a */
        public Bundle f3645a = new Bundle();

        /* renamed from: a */
        public C2677b m33938a(Parcel parcel) {
            m33936a((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
            return this;
        }

        /* renamed from: a */
        public C2677b m33936a(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.f3645a.putAll(cameraEffectArguments.f3644a);
            }
            return this;
        }

        /* renamed from: a */
        public CameraEffectArguments m33939a() {
            return new CameraEffectArguments(this, null);
        }
    }

    public CameraEffectArguments(Parcel parcel) {
        this.f3644a = parcel.readBundle(CameraEffectArguments.class.getClassLoader());
    }

    public CameraEffectArguments(C2677b bVar) {
        this.f3644a = bVar.f3645a;
    }

    public /* synthetic */ CameraEffectArguments(C2677b bVar, C2676a aVar) {
        this(bVar);
    }

    @Nullable
    /* renamed from: a */
    public Object m33940a(String str) {
        return this.f3644a.get(str);
    }

    /* renamed from: a */
    public Set<String> m33942a() {
        return this.f3644a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f3644a);
    }
}
