package com.uservoice.uservoicesdk.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.activities.ContactDetailCallogActivity;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/model/Category.class */
public class Category extends d implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    public static Parcelable.Creator<Category> f4722a = new Parcelable.Creator<Category>() { // from class: com.uservoice.uservoicesdk.model.Category.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Category createFromParcel(Parcel parcel) {
            return new Category(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Category[] newArray(int i) {
            return new Category[i];
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private String f4723b;

    public Category() {
    }

    private Category(Parcel parcel) {
        this.f4723b = parcel.readString();
    }

    /* synthetic */ Category(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // com.uservoice.uservoicesdk.model.d
    public final void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.f4723b = a(jSONObject, ContactDetailCallogActivity.EXTRA_NAME);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f4723b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4723b);
    }
}
