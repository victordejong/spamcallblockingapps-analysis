package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphAction.class */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, C2700b> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new C2699a();

    /* renamed from: com.facebook.share.model.ShareOpenGraphAction$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphAction$a.class */
    public static final class C2699a implements Parcelable.Creator<ShareOpenGraphAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphAction createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareOpenGraphAction[] newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    }

    /* renamed from: com.facebook.share.model.ShareOpenGraphAction$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareOpenGraphAction$b.class */
    public static final class C2700b extends ShareOpenGraphValueContainer.AbstractC2703a<ShareOpenGraphAction, C2700b> {
        /* renamed from: a */
        public C2700b m33866a(Parcel parcel) {
            return m33865a((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }

        /* renamed from: a */
        public C2700b m33865a(ShareOpenGraphAction shareOpenGraphAction) {
            if (shareOpenGraphAction == null) {
                return this;
            }
            super.m33856a((C2700b) shareOpenGraphAction);
            C2700b bVar = this;
            bVar.m33864a(shareOpenGraphAction.m33868c());
            return bVar;
        }

        /* renamed from: a */
        public C2700b m33864a(String str) {
            m33855a("og:type", str);
            return this;
        }

        /* renamed from: a */
        public ShareOpenGraphAction m33867a() {
            return new ShareOpenGraphAction(this, null);
        }
    }

    public ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    public ShareOpenGraphAction(C2700b bVar) {
        super(bVar);
    }

    public /* synthetic */ ShareOpenGraphAction(C2700b bVar, C2699a aVar) {
        this(bVar);
    }

    @Nullable
    /* renamed from: c */
    public String m33868c() {
        return m33858b("og:type");
    }
}
