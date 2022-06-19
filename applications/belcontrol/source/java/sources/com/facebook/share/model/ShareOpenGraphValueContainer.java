package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.ShareOpenGraphValueContainer.AbstractC0371a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphValueContainer.class */
public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends AbstractC0371a> implements Object {

    /* renamed from: a */
    public final Bundle f2651a;

    /* renamed from: com.facebook.share.model.ShareOpenGraphValueContainer$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphValueContainer$a.class */
    public static abstract class AbstractC0371a<P extends ShareOpenGraphValueContainer, E extends AbstractC0371a> {

        /* renamed from: a */
        public Bundle f2652a = new Bundle();

        /* renamed from: b */
        public E m4898b(String str, String str2) {
            this.f2652a.putString(str, str2);
            return this;
        }

        /* renamed from: c */
        public E m4897c(P p) {
            if (p != null) {
                this.f2652a.putAll(p.m4902b());
            }
            return this;
        }
    }

    public ShareOpenGraphValueContainer(Parcel parcel) {
        this.f2651a = parcel.readBundle(AbstractC0371a.class.getClassLoader());
    }

    public ShareOpenGraphValueContainer(AbstractC0371a<P, E> abstractC0371a) {
        this.f2651a = (Bundle) abstractC0371a.f2652a.clone();
    }

    /* renamed from: a */
    public Object m4903a(String str) {
        return this.f2651a.get(str);
    }

    /* renamed from: b */
    public Bundle m4902b() {
        return (Bundle) this.f2651a.clone();
    }

    /* renamed from: c */
    public String m4901c(String str) {
        return this.f2651a.getString(str);
    }

    /* renamed from: d */
    public Set<String> m4900d() {
        return this.f2651a.keySet();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f2651a);
    }
}
