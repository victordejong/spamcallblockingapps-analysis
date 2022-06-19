package com.truecaller.contactfeedback.presentation.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0087\b\u0018��2\u00020\u0001B_\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\t\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u000e\u0012\u0006\u0010\u001e\u001a\u00020\u000e\u0012\u0006\u0010\u001f\u001a\u00020\u0012¢\u0006\u0004\b>\u0010?J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J~\u0010 \u001a\u00020��2\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\t2\b\b\u0002\u0010\u001b\u001a\u00020\u00022\b\b\u0002\u0010\u001c\u001a\u00020\u00022\b\b\u0002\u0010\u001d\u001a\u00020\u000e2\b\b\u0002\u0010\u001e\u001a\u00020\u000e2\b\b\u0002\u0010\u001f\u001a\u00020\u0012HÆ\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\"\u0010\u0004J\u0010\u0010#\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b#\u0010\u0010J\u001a\u0010&\u001a\u00020\t2\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b(\u0010\u0010J \u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b-\u0010.R\u0019\u0010\u001d\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010/\u001a\u0004\b0\u0010\u0010R\u0019\u0010\u001f\u001a\u00020\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u00101\u001a\u0004\b2\u0010\u0014R\u0019\u0010\u0017\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u00103\u001a\u0004\b4\u0010\u0004R\u0019\u0010\u0019\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u00103\u001a\u0004\b5\u0010\u0004R\u0019\u0010\u0018\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u00103\u001a\u0004\b6\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u00103\u001a\u0004\b7\u0010\u0004R\u0019\u0010\u001c\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u00103\u001a\u0004\b8\u0010\u0004R\u0019\u0010\u001a\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u00109\u001a\u0004\b:\u0010\u000bR\u0019\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010/\u001a\u0004\b;\u0010\u0010R\u0019\u0010\u001b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u00103\u001a\u0004\b<\u0010\u0004R\u0019\u0010\u0015\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u00103\u001a\u0004\b=\u0010\u0004¨\u0006@"}, d2 = {"Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "", "component6", "()Z", "component7", "component8", "", "component9", "()I", "component10", "Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;", "component11", "()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;", "id", "phoneNumber", AnalyticsConstants.NAME, "text", "avatarUrl", "anonymous", "postedAt", "lang", "upVotes", "downVotes", "voteStatus", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "I", "getUpVotes", "Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;", "getVoteStatus", "Ljava/lang/String;", "getName", "getAvatarUrl", "getText", "getPhoneNumber", "getLang", "Z", "getAnonymous", "getDownVotes", "getPostedAt", "getId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/presentation/model/CommentFeedbackModel.class */
public final class CommentFeedbackModel implements Parcelable {
    public static final Parcelable.Creator<CommentFeedbackModel> CREATOR = new C3756a();
    private final boolean anonymous;
    private final String avatarUrl;
    private final int downVotes;

    /* renamed from: id */
    private final String f11344id;
    private final String lang;
    private final String name;
    private final String phoneNumber;
    private final String postedAt;
    private final String text;
    private final int upVotes;
    private final VoteStatus voteStatus;

    /* renamed from: com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/presentation/model/CommentFeedbackModel$a.class */
    public static final class C3756a implements Parcelable.Creator<CommentFeedbackModel> {
        @Override // android.os.Parcelable.Creator
        public CommentFeedbackModel createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new CommentFeedbackModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), (VoteStatus) Enum.valueOf(VoteStatus.class, parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public CommentFeedbackModel[] newArray(int i) {
            return new CommentFeedbackModel[i];
        }
    }

    public CommentFeedbackModel(String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i, int i2, VoteStatus voteStatus) {
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(str3, AnalyticsConstants.NAME);
        l.e(str4, "text");
        l.e(str5, "avatarUrl");
        l.e(str6, "postedAt");
        l.e(str7, "lang");
        l.e(voteStatus, "voteStatus");
        this.f11344id = str;
        this.phoneNumber = str2;
        this.name = str3;
        this.text = str4;
        this.avatarUrl = str5;
        this.anonymous = z;
        this.postedAt = str6;
        this.lang = str7;
        this.upVotes = i;
        this.downVotes = i2;
        this.voteStatus = voteStatus;
    }

    public static /* synthetic */ CommentFeedbackModel copy$default(CommentFeedbackModel commentFeedbackModel, String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i, int i2, VoteStatus voteStatus, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = commentFeedbackModel.f11344id;
        }
        if ((i3 & 2) != 0) {
            str2 = commentFeedbackModel.phoneNumber;
        }
        if ((i3 & 4) != 0) {
            str3 = commentFeedbackModel.name;
        }
        if ((i3 & 8) != 0) {
            str4 = commentFeedbackModel.text;
        }
        if ((i3 & 16) != 0) {
            str5 = commentFeedbackModel.avatarUrl;
        }
        if ((i3 & 32) != 0) {
            z = commentFeedbackModel.anonymous;
        }
        if ((i3 & 64) != 0) {
            str6 = commentFeedbackModel.postedAt;
        }
        if ((i3 & 128) != 0) {
            str7 = commentFeedbackModel.lang;
        }
        if ((i3 & 256) != 0) {
            i = commentFeedbackModel.upVotes;
        }
        if ((i3 & 512) != 0) {
            i2 = commentFeedbackModel.downVotes;
        }
        if ((i3 & 1024) != 0) {
            voteStatus = commentFeedbackModel.voteStatus;
        }
        return commentFeedbackModel.copy(str, str2, str3, str4, str5, z, str6, str7, i, i2, voteStatus);
    }

    public final String component1() {
        return this.f11344id;
    }

    public final int component10() {
        return this.downVotes;
    }

    public final VoteStatus component11() {
        return this.voteStatus;
    }

    public final String component2() {
        return this.phoneNumber;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.text;
    }

    public final String component5() {
        return this.avatarUrl;
    }

    public final boolean component6() {
        return this.anonymous;
    }

    public final String component7() {
        return this.postedAt;
    }

    public final String component8() {
        return this.lang;
    }

    public final int component9() {
        return this.upVotes;
    }

    public final CommentFeedbackModel copy(String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i, int i2, VoteStatus voteStatus) {
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(str3, AnalyticsConstants.NAME);
        l.e(str4, "text");
        l.e(str5, "avatarUrl");
        l.e(str6, "postedAt");
        l.e(str7, "lang");
        l.e(voteStatus, "voteStatus");
        return new CommentFeedbackModel(str, str2, str3, str4, str5, z, str6, str7, i, i2, voteStatus);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CommentFeedbackModel)) {
                return false;
            }
            CommentFeedbackModel commentFeedbackModel = (CommentFeedbackModel) obj;
            return l.a(this.f11344id, commentFeedbackModel.f11344id) && l.a(this.phoneNumber, commentFeedbackModel.phoneNumber) && l.a(this.name, commentFeedbackModel.name) && l.a(this.text, commentFeedbackModel.text) && l.a(this.avatarUrl, commentFeedbackModel.avatarUrl) && this.anonymous == commentFeedbackModel.anonymous && l.a(this.postedAt, commentFeedbackModel.postedAt) && l.a(this.lang, commentFeedbackModel.lang) && this.upVotes == commentFeedbackModel.upVotes && this.downVotes == commentFeedbackModel.downVotes && l.a(this.voteStatus, commentFeedbackModel.voteStatus);
        }
        return true;
    }

    public final boolean getAnonymous() {
        return this.anonymous;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getDownVotes() {
        return this.downVotes;
    }

    public final String getId() {
        return this.f11344id;
    }

    public final String getLang() {
        return this.lang;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final String getPostedAt() {
        return this.postedAt;
    }

    public final String getText() {
        return this.text;
    }

    public final int getUpVotes() {
        return this.upVotes;
    }

    public final VoteStatus getVoteStatus() {
        return this.voteStatus;
    }

    public int hashCode() {
        String str = this.f11344id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.phoneNumber;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.name;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.text;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.avatarUrl;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        boolean z = this.anonymous;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        String str6 = this.postedAt;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.lang;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        int i3 = this.upVotes;
        int i4 = this.downVotes;
        VoteStatus voteStatus = this.voteStatus;
        if (voteStatus != null) {
            i = voteStatus.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + hashCode7) * 31) + i3) * 31) + i4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CommentFeedbackModel(id=");
        m8728C.append(this.f11344id);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.phoneNumber);
        m8728C.append(", name=");
        m8728C.append(this.name);
        m8728C.append(", text=");
        m8728C.append(this.text);
        m8728C.append(", avatarUrl=");
        m8728C.append(this.avatarUrl);
        m8728C.append(", anonymous=");
        m8728C.append(this.anonymous);
        m8728C.append(", postedAt=");
        m8728C.append(this.postedAt);
        m8728C.append(", lang=");
        m8728C.append(this.lang);
        m8728C.append(", upVotes=");
        m8728C.append(this.upVotes);
        m8728C.append(", downVotes=");
        m8728C.append(this.downVotes);
        m8728C.append(", voteStatus=");
        m8728C.append(this.voteStatus);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11344id);
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.name);
        parcel.writeString(this.text);
        parcel.writeString(this.avatarUrl);
        parcel.writeInt(this.anonymous ? 1 : 0);
        parcel.writeString(this.postedAt);
        parcel.writeString(this.lang);
        parcel.writeInt(this.upVotes);
        parcel.writeInt(this.downVotes);
        parcel.writeString(this.voteStatus.name());
    }
}
