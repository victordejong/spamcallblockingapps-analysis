package com.truecaller.contactfeedback.presentation.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0010J \u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001d\u001a\u0004\b\u001e\u0010\bR\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001f\u001a\u0004\b \u0010\u0004¨\u0006#"}, d2 = {"Lcom/truecaller/contactfeedback/presentation/model/NumberAndComments;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "", "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;", "component2", "()Ljava/util/List;", "number", "comments", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/contactfeedback/presentation/model/NumberAndComments;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/util/List;", "getComments", "Ljava/lang/String;", "getNumber", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/presentation/model/NumberAndComments.class */
public final class NumberAndComments implements Parcelable {
    public static final Parcelable.Creator<NumberAndComments> CREATOR = new C3757a();
    private final List<CommentFeedbackModel> comments;
    private final String number;

    /* renamed from: com.truecaller.contactfeedback.presentation.model.NumberAndComments$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/presentation/model/NumberAndComments$a.class */
    public static final class C3757a implements Parcelable.Creator<NumberAndComments> {
        @Override // android.os.Parcelable.Creator
        public NumberAndComments createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(CommentFeedbackModel.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new NumberAndComments(readString, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public NumberAndComments[] newArray(int i) {
            return new NumberAndComments[i];
        }
    }

    public NumberAndComments(String str, List<CommentFeedbackModel> list) {
        l.e(str, "number");
        l.e(list, "comments");
        this.number = str;
        this.comments = list;
    }

    public static /* synthetic */ NumberAndComments copy$default(NumberAndComments numberAndComments, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = numberAndComments.number;
        }
        if ((i & 2) != 0) {
            list = numberAndComments.comments;
        }
        return numberAndComments.copy(str, list);
    }

    public final String component1() {
        return this.number;
    }

    public final List<CommentFeedbackModel> component2() {
        return this.comments;
    }

    public final NumberAndComments copy(String str, List<CommentFeedbackModel> list) {
        l.e(str, "number");
        l.e(list, "comments");
        return new NumberAndComments(str, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NumberAndComments)) {
                return false;
            }
            NumberAndComments numberAndComments = (NumberAndComments) obj;
            return l.a(this.number, numberAndComments.number) && l.a(this.comments, numberAndComments.comments);
        }
        return true;
    }

    public final List<CommentFeedbackModel> getComments() {
        return this.comments;
    }

    public final String getNumber() {
        return this.number;
    }

    public int hashCode() {
        String str = this.number;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<CommentFeedbackModel> list = this.comments;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NumberAndComments(number=");
        m8728C.append(this.number);
        m8728C.append(", comments=");
        return C22128a.m8602l(m8728C, this.comments, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.number);
        List<CommentFeedbackModel> list = this.comments;
        parcel.writeInt(list.size());
        for (CommentFeedbackModel commentFeedbackModel : list) {
            commentFeedbackModel.writeToParcel(parcel, 0);
        }
    }
}
