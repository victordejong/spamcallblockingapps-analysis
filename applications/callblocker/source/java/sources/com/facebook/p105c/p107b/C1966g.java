package com.facebook.p105c.p107b;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.p105c.p107b.C1963f;
/* renamed from: com.facebook.c.b.g */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/g.class */
public final class C1966g extends AbstractC1955a<C1966g, Object> {
    public static final Parcelable.Creator<C1966g> CREATOR = new Parcelable.Creator<C1966g>() { // from class: com.facebook.c.b.g.1
        /* renamed from: a */
        public C1966g createFromParcel(Parcel parcel) {
            return new C1966g(parcel);
        }

        /* renamed from: a */
        public C1966g[] newArray(int i) {
            return new C1966g[i];
        }
    };

    /* renamed from: a */
    private final C1963f f5885a;

    /* renamed from: b */
    private final String f5886b;

    C1966g(Parcel parcel) {
        super(parcel);
        this.f5885a = new C1963f.C1965a().m15746a(parcel).m15747a();
        this.f5886b = parcel.readString();
    }

    /* renamed from: c */
    public C1963f m15743c() {
        return this.f5885a;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1955a, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.p105c.p107b.AbstractC1955a, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f5885a, 0);
        parcel.writeString(this.f5886b);
    }
}
