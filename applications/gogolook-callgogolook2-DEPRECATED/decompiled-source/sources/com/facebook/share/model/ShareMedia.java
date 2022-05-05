package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.p047e.AbstractC2648b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia.class */
public abstract class ShareMedia implements ShareModel {

    /* renamed from: a */
    public final Bundle f3684a;

    /* renamed from: com.facebook.share.model.ShareMedia$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia$a.class */
    public static abstract class AbstractC2688a<M extends ShareMedia, B extends AbstractC2688a> implements AbstractC2648b<M, B> {

        /* renamed from: a */
        public Bundle f3685a = new Bundle();

        /* renamed from: a */
        public static List<ShareMedia> m33892a(Parcel parcel) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
            ArrayList arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((ShareMedia) parcelable);
            }
            return arrayList;
        }

        @Deprecated
        /* renamed from: a */
        public B m33893a(Bundle bundle) {
            this.f3685a.putAll(bundle);
            return this;
        }

        /* renamed from: a */
        public B m33890a(M m) {
            if (m == null) {
                return this;
            }
            m33893a(m.m33894b());
            return this;
        }
    }

    /* renamed from: com.facebook.share.model.ShareMedia$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMedia$b.class */
    public enum EnumC2689b {
        PHOTO,
        VIDEO
    }

    public ShareMedia(Parcel parcel) {
        this.f3684a = parcel.readBundle();
    }

    public ShareMedia(AbstractC2688a aVar) {
        this.f3684a = new Bundle(aVar.f3685a);
    }

    /* renamed from: a */
    public abstract EnumC2689b mo33823a();

    @Deprecated
    /* renamed from: b */
    public Bundle m33894b() {
        return new Bundle(this.f3684a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f3684a);
    }
}
