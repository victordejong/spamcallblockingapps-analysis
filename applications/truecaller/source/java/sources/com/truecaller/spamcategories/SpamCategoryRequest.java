package com.truecaller.spamcategories;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.data.entity.FeedbackSource;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/SpamCategoryRequest.class */
public final class SpamCategoryRequest implements Parcelable {
    public static final Parcelable.Creator<SpamCategoryRequest> CREATOR = new C4507a();

    /* renamed from: a */
    public final String f14919a;

    /* renamed from: b */
    public final boolean f14920b;

    /* renamed from: c */
    public final List<NumberAndType> f14921c;

    /* renamed from: d */
    public final FeedbackSource f14922d;

    /* renamed from: com.truecaller.spamcategories.SpamCategoryRequest$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/SpamCategoryRequest$a.class */
    public static final class C4507a implements Parcelable.Creator<SpamCategoryRequest> {
        @Override // android.os.Parcelable.Creator
        public SpamCategoryRequest createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            String readString = parcel.readString();
            boolean z = parcel.readInt() != 0;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add((NumberAndType) parcel.readParcelable(SpamCategoryRequest.class.getClassLoader()));
                readInt--;
            }
            return new SpamCategoryRequest(readString, z, arrayList, (FeedbackSource) Enum.valueOf(FeedbackSource.class, parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public SpamCategoryRequest[] newArray(int i) {
            return new SpamCategoryRequest[i];
        }
    }

    public SpamCategoryRequest(String str, boolean z, List<NumberAndType> list, FeedbackSource feedbackSource) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "numbers");
        l.e(feedbackSource, "feedbackSource");
        this.f14919a = str;
        this.f14920b = z;
        this.f14921c = list;
        this.f14922d = feedbackSource;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SpamCategoryRequest)) {
                return false;
            }
            SpamCategoryRequest spamCategoryRequest = (SpamCategoryRequest) obj;
            return l.a(this.f14919a, spamCategoryRequest.f14919a) && this.f14920b == spamCategoryRequest.f14920b && l.a(this.f14921c, spamCategoryRequest.f14921c) && l.a(this.f14922d, spamCategoryRequest.f14922d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f14919a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f14920b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        List<NumberAndType> list = this.f14921c;
        int hashCode2 = list != null ? list.hashCode() : 0;
        FeedbackSource feedbackSource = this.f14922d;
        if (feedbackSource != null) {
            i = feedbackSource.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamCategoryRequest(name=");
        m8728C.append(this.f14919a);
        m8728C.append(", supportsNameSuggestion=");
        m8728C.append(this.f14920b);
        m8728C.append(", numbers=");
        m8728C.append(this.f14921c);
        m8728C.append(", feedbackSource=");
        m8728C.append(this.f14922d);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f14919a);
        parcel.writeInt(this.f14920b ? 1 : 0);
        List<NumberAndType> list = this.f14921c;
        parcel.writeInt(list.size());
        for (NumberAndType numberAndType : list) {
            parcel.writeParcelable(numberAndType, i);
        }
        parcel.writeString(this.f14922d.name());
    }
}
