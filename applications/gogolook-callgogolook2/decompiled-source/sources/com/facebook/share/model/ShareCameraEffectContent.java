package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;
/* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareCameraEffectContent.class */
public class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Object> {
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new C2683a();

    /* renamed from: g */
    public String f3663g;

    /* renamed from: h */
    public CameraEffectArguments f3664h;

    /* renamed from: i */
    public CameraEffectTextures f3665i;

    /* renamed from: com.facebook.share.model.ShareCameraEffectContent$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/model/ShareCameraEffectContent$a.class */
    public static final class C2683a implements Parcelable.Creator<ShareCameraEffectContent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareCameraEffectContent createFromParcel(Parcel parcel) {
            return new ShareCameraEffectContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    }

    public ShareCameraEffectContent(Parcel parcel) {
        super(parcel);
        this.f3663g = parcel.readString();
        CameraEffectArguments.C2677b bVar = new CameraEffectArguments.C2677b();
        bVar.m33938a(parcel);
        this.f3664h = bVar.m33939a();
        CameraEffectTextures.C2679b bVar2 = new CameraEffectTextures.C2679b();
        bVar2.m33930a(parcel);
        this.f3665i = bVar2.m33931a();
    }

    /* renamed from: g */
    public CameraEffectArguments m33927g() {
        return this.f3664h;
    }

    /* renamed from: h */
    public String m33926h() {
        return this.f3663g;
    }

    /* renamed from: i */
    public CameraEffectTextures m33925i() {
        return this.f3665i;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3663g);
        parcel.writeParcelable(this.f3664h, 0);
        parcel.writeParcelable(this.f3665i, 0);
    }
}
