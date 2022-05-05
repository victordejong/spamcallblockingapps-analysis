package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMediaContent.class */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Object> {
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new C2690a();

    /* renamed from: g */
    public final List<ShareMedia> f3689g;

    /* renamed from: com.facebook.share.model.ShareMediaContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareMediaContent$a.class */
    public static final class C2690a implements Parcelable.Creator<ShareMediaContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMediaContent createFromParcel(Parcel parcel) {
            return new ShareMediaContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMediaContent[] newArray(int i) {
            return new ShareMediaContent[i];
        }
    }

    public ShareMediaContent(Parcel parcel) {
        super(parcel);
        this.f3689g = Arrays.asList((ShareMedia[]) parcel.readParcelableArray(ShareMedia.class.getClassLoader()));
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: g */
    public List<ShareMedia> m33889g() {
        return this.f3689g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelableArray((ShareMedia[]) this.f3689g.toArray(), i);
    }
}
