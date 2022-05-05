package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhotoContent.class */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, C2707b> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new C2706a();

    /* renamed from: g */
    public final List<SharePhoto> f3732g;

    /* renamed from: com.facebook.share.model.SharePhotoContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhotoContent$a.class */
    public static final class C2706a implements Parcelable.Creator<SharePhotoContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharePhotoContent createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharePhotoContent[] newArray(int i) {
            return new SharePhotoContent[i];
        }
    }

    /* renamed from: com.facebook.share.model.SharePhotoContent$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/SharePhotoContent$b.class */
    public static class C2707b extends ShareContent.AbstractC2684a<SharePhotoContent, C2707b> {

        /* renamed from: g */
        public final List<SharePhoto> f3733g = new ArrayList();

        /* renamed from: a */
        public C2707b m33833a(@Nullable SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.f3733g.add(new SharePhoto.C2705b().m33845a(sharePhoto).m33850a());
            }
            return this;
        }

        /* renamed from: a */
        public C2707b m33831a(SharePhotoContent sharePhotoContent) {
            if (sharePhotoContent == null) {
                return this;
            }
            super.m33915a((C2707b) sharePhotoContent);
            C2707b bVar = this;
            bVar.m33830b(sharePhotoContent.m33835g());
            return bVar;
        }

        /* renamed from: a */
        public SharePhotoContent m33834a() {
            return new SharePhotoContent(this, null);
        }

        /* renamed from: b */
        public C2707b m33830b(@Nullable List<SharePhoto> list) {
            if (list != null) {
                for (SharePhoto sharePhoto : list) {
                    m33833a(sharePhoto);
                }
            }
            return this;
        }

        /* renamed from: c */
        public C2707b m33829c(@Nullable List<SharePhoto> list) {
            this.f3733g.clear();
            m33830b(list);
            return this;
        }
    }

    public SharePhotoContent(Parcel parcel) {
        super(parcel);
        this.f3732g = Collections.unmodifiableList(SharePhoto.C2705b.m33838c(parcel));
    }

    public SharePhotoContent(C2707b bVar) {
        super(bVar);
        this.f3732g = Collections.unmodifiableList(bVar.f3733g);
    }

    public /* synthetic */ SharePhotoContent(C2707b bVar, C2706a aVar) {
        this(bVar);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: g */
    public List<SharePhoto> m33835g() {
        return this.f3732g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SharePhoto.C2705b.m33847a(parcel, i, this.f3732g);
    }
}
