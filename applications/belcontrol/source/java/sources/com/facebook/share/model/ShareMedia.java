package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia.class */
public abstract class ShareMedia implements Parcelable {

    /* renamed from: a */
    public final Bundle f2630a;

    /* renamed from: com.facebook.share.model.ShareMedia$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia$a.class */
    public static abstract class AbstractC0368a<M extends ShareMedia, B extends AbstractC0368a> {

        /* renamed from: a */
        public Bundle f2631a = new Bundle();

        /* renamed from: c */
        public static List<ShareMedia> m4929c(Parcel parcel) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
            ArrayList arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((ShareMedia) parcelable);
            }
            return arrayList;
        }

        /* renamed from: b */
        public B m4930b(M m) {
            if (m == null) {
                return this;
            }
            m4928d(m.m4932b());
            return this;
        }

        @Deprecated
        /* renamed from: d */
        public B m4928d(Bundle bundle) {
            this.f2631a.putAll(bundle);
            return this;
        }
    }

    /* renamed from: com.facebook.share.model.ShareMedia$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia$b.class */
    public enum EnumC0369b {
        PHOTO,
        VIDEO
    }

    public ShareMedia(Parcel parcel) {
        this.f2630a = parcel.readBundle();
    }

    public ShareMedia(AbstractC0368a abstractC0368a) {
        this.f2630a = new Bundle(abstractC0368a.f2631a);
    }

    /* renamed from: a */
    public abstract EnumC0369b m4933a();

    @Deprecated
    /* renamed from: b */
    public Bundle m4932b() {
        return new Bundle(this.f2630a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f2630a);
    }
}
