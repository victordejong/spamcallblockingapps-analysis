package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareStoryContent.class */
public final class ShareStoryContent extends ShareContent<ShareStoryContent, Object> {
    public static final Parcelable.Creator<ShareStoryContent> CREATOR = new C2708a();

    /* renamed from: g */
    public final ShareMedia f3734g;

    /* renamed from: h */
    public final SharePhoto f3735h;
    @Nullable

    /* renamed from: i */
    public final List<String> f3736i;

    /* renamed from: j */
    public final String f3737j;

    /* renamed from: com.facebook.share.model.ShareStoryContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareStoryContent$a.class */
    public static final class C2708a implements Parcelable.Creator<ShareStoryContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareStoryContent createFromParcel(Parcel parcel) {
            return new ShareStoryContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareStoryContent[] newArray(int i) {
            return new ShareStoryContent[i];
        }
    }

    public ShareStoryContent(Parcel parcel) {
        super(parcel);
        this.f3734g = (ShareMedia) parcel.readParcelable(ShareMedia.class.getClassLoader());
        this.f3735h = (SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader());
        this.f3736i = m33828a(parcel);
        this.f3737j = parcel.readString();
    }

    @Nullable
    /* renamed from: a */
    private List<String> m33828a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        return arrayList.isEmpty() ? null : Collections.unmodifiableList(arrayList);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public String m33827g() {
        return this.f3737j;
    }

    /* renamed from: h */
    public ShareMedia m33826h() {
        return this.f3734g;
    }

    @Nullable
    /* renamed from: i */
    public List<String> m33825i() {
        List<String> list = this.f3736i;
        return list == null ? null : Collections.unmodifiableList(list);
    }

    /* renamed from: j */
    public SharePhoto m33824j() {
        return this.f3735h;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f3734g, 0);
        parcel.writeParcelable(this.f3735h, 0);
        parcel.writeStringList(this.f3736i);
        parcel.writeString(this.f3737j);
    }
}
