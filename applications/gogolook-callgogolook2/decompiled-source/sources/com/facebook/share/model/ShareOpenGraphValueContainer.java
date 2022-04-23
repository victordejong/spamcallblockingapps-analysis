package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.ShareOpenGraphValueContainer.AbstractC2703a;
import com.facebook.share.p047e.AbstractC2648b;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphValueContainer.class */
public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends AbstractC2703a> implements ShareModel {

    /* renamed from: a */
    public final Bundle f3722a;

    /* renamed from: com.facebook.share.model.ShareOpenGraphValueContainer$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphValueContainer$a.class */
    public static abstract class AbstractC2703a<P extends ShareOpenGraphValueContainer, E extends AbstractC2703a> implements AbstractC2648b<P, E> {

        /* renamed from: a */
        public Bundle f3723a = new Bundle();

        /* renamed from: a */
        public E m33856a(P p) {
            if (p != null) {
                this.f3723a.putAll(p.m33861a());
            }
            return this;
        }

        /* renamed from: a */
        public E m33855a(String str, @Nullable String str2) {
            this.f3723a.putString(str, str2);
            return this;
        }
    }

    public ShareOpenGraphValueContainer(Parcel parcel) {
        this.f3722a = parcel.readBundle(AbstractC2703a.class.getClassLoader());
    }

    public ShareOpenGraphValueContainer(AbstractC2703a<P, E> aVar) {
        this.f3722a = (Bundle) aVar.f3723a.clone();
    }

    /* renamed from: a */
    public Bundle m33861a() {
        return (Bundle) this.f3722a.clone();
    }

    @Nullable
    /* renamed from: a */
    public Object m33860a(String str) {
        return this.f3722a.get(str);
    }

    @Nullable
    /* renamed from: b */
    public String m33858b(String str) {
        return this.f3722a.getString(str);
    }

    /* renamed from: b */
    public Set<String> m33859b() {
        return this.f3722a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f3722a);
    }
}
