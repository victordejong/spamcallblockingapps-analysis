package com.p064b.p065a.p066a.p067a;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.b.a.a.a.h */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/h.class */
public class C1342h implements Parcelable {
    public static final Parcelable.Creator<C1342h> CREATOR = new Parcelable.Creator<C1342h>() { // from class: com.b.a.a.a.h.1
        /* renamed from: a */
        public C1342h createFromParcel(Parcel parcel) {
            return new C1342h(parcel);
        }

        /* renamed from: a */
        public C1342h[] newArray(int i) {
            return new C1342h[i];
        }
    };
    @Deprecated

    /* renamed from: a */
    public final String f4428a;
    @Deprecated

    /* renamed from: b */
    public final String f4429b;
    @Deprecated

    /* renamed from: c */
    public final String f4430c;
    @Deprecated

    /* renamed from: d */
    public final Date f4431d;

    /* renamed from: e */
    public final C1338e f4432e;

    protected C1342h(Parcel parcel) {
        this.f4432e = (C1338e) parcel.readParcelable(C1338e.class.getClassLoader());
        this.f4428a = this.f4432e.f4422c.f4414c;
        this.f4429b = this.f4432e.f4422c.f4412a;
        this.f4430c = this.f4432e.f4422c.f4418g;
        this.f4431d = this.f4432e.f4422c.f4415d;
    }

    public C1342h(C1338e c1338e) {
        this.f4432e = c1338e;
        this.f4428a = this.f4432e.f4422c.f4414c;
        this.f4429b = this.f4432e.f4422c.f4412a;
        this.f4430c = this.f4432e.f4422c.f4418g;
        this.f4431d = this.f4432e.f4422c.f4415d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                C1342h c1342h = (C1342h) obj;
                if (this.f4429b == null ? c1342h.f4429b != null : !this.f4429b.equals(c1342h.f4429b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f4429b != null ? this.f4429b.hashCode() : 0;
    }

    public String toString() {
        return String.format(Locale.US, "%s purchased at %s(%s). Token: %s, Signature: %s", this.f4428a, this.f4431d, this.f4429b, this.f4430c, this.f4432e.f4421b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f4432e, i);
    }
}
