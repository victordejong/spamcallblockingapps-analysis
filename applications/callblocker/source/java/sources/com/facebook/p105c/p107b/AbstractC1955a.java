package com.facebook.p105c.p107b;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.p105c.p107b.AbstractC1955a;
import com.facebook.p105c.p107b.C1956b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.c.b.a */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/a.class */
public abstract class AbstractC1955a<P extends AbstractC1955a, E> implements AbstractC1962e {

    /* renamed from: a */
    private final Uri f5872a;

    /* renamed from: b */
    private final List<String> f5873b;

    /* renamed from: c */
    private final String f5874c;

    /* renamed from: d */
    private final String f5875d;

    /* renamed from: e */
    private final String f5876e;

    /* renamed from: f */
    private final C1956b f5877f;

    public AbstractC1955a(Parcel parcel) {
        this.f5872a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f5873b = m15763a(parcel);
        this.f5874c = parcel.readString();
        this.f5875d = parcel.readString();
        this.f5876e = parcel.readString();
        this.f5877f = new C1956b.C1958a().m15757a(parcel).m15758a();
    }

    /* renamed from: a */
    private List<String> m15763a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        return arrayList.size() == 0 ? null : Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public Uri m15764a() {
        return this.f5872a;
    }

    /* renamed from: b */
    public C1956b m15762b() {
        return this.f5877f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f5872a, 0);
        parcel.writeStringList(this.f5873b);
        parcel.writeString(this.f5874c);
        parcel.writeString(this.f5875d);
        parcel.writeString(this.f5876e);
        parcel.writeParcelable(this.f5877f, 0);
    }
}
