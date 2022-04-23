package com.netqin.p525cm.p528db.model;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.netqin.cm.db.model.BlackWhiteListModel */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/BlackWhiteListModel.class */
public class BlackWhiteListModel extends BaseModel implements Parcelable {
    public static final Parcelable.Creator<BlackWhiteListModel> CREATOR = new C9146a();
    public static final long serialVersionUID = 45644351;

    /* renamed from: com.netqin.cm.db.model.BlackWhiteListModel$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/BlackWhiteListModel$a.class */
    public static final class C9146a implements Parcelable.Creator<BlackWhiteListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BlackWhiteListModel createFromParcel(Parcel parcel) {
            BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
            blackWhiteListModel._id = parcel.readLong();
            blackWhiteListModel.type = parcel.readInt();
            blackWhiteListModel.name = parcel.readString();
            blackWhiteListModel.address = parcel.readString();
            return blackWhiteListModel;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BlackWhiteListModel[] newArray(int i) {
            return new BlackWhiteListModel[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this._id);
        parcel.writeInt(this.type);
        parcel.writeString(this.name);
        parcel.writeString(this.address);
    }
}
