package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments.class */
public class CameraEffectArguments implements Parcelable {
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new C0361a();

    /* renamed from: a */
    public final Bundle f2612a;

    /* renamed from: com.facebook.share.model.CameraEffectArguments$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments$a.class */
    public static final class C0361a implements Parcelable.Creator<CameraEffectArguments> {
        /* renamed from: a */
        public CameraEffectArguments createFromParcel(Parcel parcel) {
            return new CameraEffectArguments(parcel);
        }

        /* renamed from: b */
        public CameraEffectArguments[] newArray(int i) {
            return new CameraEffectArguments[i];
        }
    }

    /* renamed from: com.facebook.share.model.CameraEffectArguments$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/CameraEffectArguments$b.class */
    public static class C0362b {

        /* renamed from: a */
        public Bundle f2613a = new Bundle();

        /* renamed from: b */
        public CameraEffectArguments m4978b() {
            return new CameraEffectArguments(this, null);
        }

        /* renamed from: c */
        public C0362b m4977c(Parcel parcel) {
            m4976d((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
            return this;
        }

        /* renamed from: d */
        public C0362b m4976d(CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.f2613a.putAll(cameraEffectArguments.f2612a);
            }
            return this;
        }
    }

    public CameraEffectArguments(Parcel parcel) {
        this.f2612a = parcel.readBundle(CameraEffectArguments.class.getClassLoader());
    }

    public CameraEffectArguments(C0362b c0362b) {
        this.f2612a = c0362b.f2613a;
    }

    public /* synthetic */ CameraEffectArguments(C0362b c0362b, C0361a c0361a) {
        this(c0362b);
    }

    /* renamed from: b */
    public Object m4983b(String str) {
        return this.f2612a.get(str);
    }

    /* renamed from: c */
    public Set<String> m4982c() {
        return this.f2612a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f2612a);
    }
}
