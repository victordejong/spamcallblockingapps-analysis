package com.truecaller.contactfeedback.presentation.addcomment.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/addcomment/model/AddCommentRequest.class */
public final class AddCommentRequest implements Parcelable {
    public static final Parcelable.Creator<AddCommentRequest> CREATOR = new C3755a();

    /* renamed from: a */
    public final List<NumberAndType> f11343a;

    /* renamed from: com.truecaller.contactfeedback.presentation.addcomment.model.AddCommentRequest$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/addcomment/model/AddCommentRequest$a.class */
    public static final class C3755a implements Parcelable.Creator<AddCommentRequest> {
        @Override // android.os.Parcelable.Creator
        public AddCommentRequest createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(NumberAndType.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new AddCommentRequest(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public AddCommentRequest[] newArray(int i) {
            return new AddCommentRequest[i];
        }
    }

    public AddCommentRequest(List<NumberAndType> list) {
        l.e(list, "numbers");
        this.f11343a = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof AddCommentRequest) && l.a(this.f11343a, ((AddCommentRequest) obj).f11343a);
        }
        return true;
    }

    public int hashCode() {
        List<NumberAndType> list = this.f11343a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("AddCommentRequest(numbers="), this.f11343a, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        List<NumberAndType> list = this.f11343a;
        parcel.writeInt(list.size());
        for (NumberAndType numberAndType : list) {
            numberAndType.writeToParcel(parcel, 0);
        }
    }
}
