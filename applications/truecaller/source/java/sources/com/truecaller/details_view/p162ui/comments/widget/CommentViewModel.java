package com.truecaller.details_view.p162ui.comments.widget;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.truecaller.details_view.ui.comments.widget.CommentViewModel */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/CommentViewModel.class */
public final class CommentViewModel implements Parcelable {
    public static final Parcelable.Creator<CommentViewModel> CREATOR = new C3875a();

    /* renamed from: a */
    public final String f11756a;

    /* renamed from: b */
    public final String f11757b;

    /* renamed from: c */
    public final String f11758c;

    /* renamed from: d */
    public final AvatarXConfig f11759d;

    /* renamed from: e */
    public final String f11760e;

    /* renamed from: f */
    public final String f11761f;

    /* renamed from: g */
    public final ThumbState f11762g;

    /* renamed from: h */
    public final ThumbState f11763h;

    /* renamed from: com.truecaller.details_view.ui.comments.widget.CommentViewModel$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/widget/CommentViewModel$a.class */
    public static final class C3875a implements Parcelable.Creator<CommentViewModel> {
        @Override // android.os.Parcelable.Creator
        public CommentViewModel createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new CommentViewModel(parcel.readString(), parcel.readString(), parcel.readString(), (AvatarXConfig) parcel.readParcelable(CommentViewModel.class.getClassLoader()), parcel.readString(), parcel.readString(), (ThumbState) parcel.readParcelable(CommentViewModel.class.getClassLoader()), (ThumbState) parcel.readParcelable(CommentViewModel.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public CommentViewModel[] newArray(int i) {
            return new CommentViewModel[i];
        }
    }

    public CommentViewModel(String str, String str2, String str3, AvatarXConfig avatarXConfig, String str4, String str5, ThumbState thumbState, ThumbState thumbState2) {
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(str3, "originalPoster");
        l.e(avatarXConfig, "avatarXConfig");
        l.e(str4, "postedAt");
        l.e(str5, "text");
        l.e(thumbState, "thumbUpState");
        l.e(thumbState2, "thumbDownState");
        this.f11756a = str;
        this.f11757b = str2;
        this.f11758c = str3;
        this.f11759d = avatarXConfig;
        this.f11760e = str4;
        this.f11761f = str5;
        this.f11762g = thumbState;
        this.f11763h = thumbState2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CommentViewModel)) {
                return false;
            }
            CommentViewModel commentViewModel = (CommentViewModel) obj;
            return l.a(this.f11756a, commentViewModel.f11756a) && l.a(this.f11757b, commentViewModel.f11757b) && l.a(this.f11758c, commentViewModel.f11758c) && l.a(this.f11759d, commentViewModel.f11759d) && l.a(this.f11760e, commentViewModel.f11760e) && l.a(this.f11761f, commentViewModel.f11761f) && l.a(this.f11762g, commentViewModel.f11762g) && l.a(this.f11763h, commentViewModel.f11763h);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f11756a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11757b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f11758c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f11759d;
        int hashCode4 = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
        String str4 = this.f11760e;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f11761f;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        ThumbState thumbState = this.f11762g;
        int hashCode7 = thumbState != null ? thumbState.hashCode() : 0;
        ThumbState thumbState2 = this.f11763h;
        if (thumbState2 != null) {
            i = thumbState2.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CommentViewModel(id=");
        m8728C.append(this.f11756a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f11757b);
        m8728C.append(", originalPoster=");
        m8728C.append(this.f11758c);
        m8728C.append(", avatarXConfig=");
        m8728C.append(this.f11759d);
        m8728C.append(", postedAt=");
        m8728C.append(this.f11760e);
        m8728C.append(", text=");
        m8728C.append(this.f11761f);
        m8728C.append(", thumbUpState=");
        m8728C.append(this.f11762g);
        m8728C.append(", thumbDownState=");
        m8728C.append(this.f11763h);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11756a);
        parcel.writeString(this.f11757b);
        parcel.writeString(this.f11758c);
        parcel.writeParcelable(this.f11759d, i);
        parcel.writeString(this.f11760e);
        parcel.writeString(this.f11761f);
        parcel.writeParcelable(this.f11762g, i);
        parcel.writeParcelable(this.f11763h, i);
    }
}
