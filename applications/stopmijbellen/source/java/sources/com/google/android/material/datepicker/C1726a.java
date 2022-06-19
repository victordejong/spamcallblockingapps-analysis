package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.AdError;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.material.datepicker.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a.class */
public final class C1726a implements Parcelable {
    public static final Parcelable.Creator<C1726a> CREATOR = new C1727a();

    /* renamed from: a */
    public final C1761s f6505a;

    /* renamed from: b */
    public final C1761s f6506b;

    /* renamed from: c */
    public final AbstractC1729c f6507c;

    /* renamed from: d */
    public C1761s f6508d;

    /* renamed from: e */
    public final int f6509e;

    /* renamed from: f */
    public final int f6510f;

    /* renamed from: com.google.android.material.datepicker.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a$a.class */
    public static final class C1727a implements Parcelable.Creator<C1726a> {
        @Override // android.os.Parcelable.Creator
        public C1726a createFromParcel(Parcel parcel) {
            return new C1726a((C1761s) parcel.readParcelable(C1761s.class.getClassLoader()), (C1761s) parcel.readParcelable(C1761s.class.getClassLoader()), (AbstractC1729c) parcel.readParcelable(AbstractC1729c.class.getClassLoader()), (C1761s) parcel.readParcelable(C1761s.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        public C1726a[] newArray(int i) {
            return new C1726a[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a$b.class */
    public static final class C1728b {

        /* renamed from: e */
        public static final long f6511e = C1730a0.m4642a(C1761s.m4607b(1900, 0).f6600f);

        /* renamed from: f */
        public static final long f6512f = C1730a0.m4642a(C1761s.m4607b(AdError.BROKEN_MEDIA_ERROR_CODE, 11).f6600f);

        /* renamed from: a */
        public long f6513a;

        /* renamed from: b */
        public long f6514b;

        /* renamed from: c */
        public Long f6515c;

        /* renamed from: d */
        public AbstractC1729c f6516d;

        public C1728b(C1726a c1726a) {
            this.f6513a = f6511e;
            this.f6514b = f6512f;
            this.f6516d = new C1737e(Long.MIN_VALUE);
            this.f6513a = c1726a.f6505a.f6600f;
            this.f6514b = c1726a.f6506b.f6600f;
            this.f6515c = Long.valueOf(c1726a.f6508d.f6600f);
            this.f6516d = c1726a.f6507c;
        }
    }

    /* renamed from: com.google.android.material.datepicker.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a$c.class */
    public interface AbstractC1729c extends Parcelable {
        /* renamed from: p */
        boolean mo4625p(long j);
    }

    public C1726a(C1761s c1761s, C1761s c1761s2, AbstractC1729c abstractC1729c, C1761s c1761s3, C1727a c1727a) {
        this.f6505a = c1761s;
        this.f6506b = c1761s2;
        this.f6508d = c1761s3;
        this.f6507c = abstractC1729c;
        if (c1761s3 == null || c1761s.f6595a.compareTo(c1761s3.f6595a) <= 0) {
            if (c1761s3 != null && c1761s3.f6595a.compareTo(c1761s2.f6595a) > 0) {
                throw new IllegalArgumentException("current Month cannot be after end Month");
            }
            this.f6510f = c1761s.m4602h(c1761s2) + 1;
            this.f6509e = (c1761s2.f6597c - c1761s.f6597c) + 1;
            return;
        }
        throw new IllegalArgumentException("start Month cannot be after current Month");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1726a)) {
            return false;
        }
        C1726a c1726a = (C1726a) obj;
        if (!this.f6505a.equals(c1726a.f6505a) || !this.f6506b.equals(c1726a.f6506b) || !Objects.equals(this.f6508d, c1726a.f6508d) || !this.f6507c.equals(c1726a.f6507c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6505a, this.f6506b, this.f6508d, this.f6507c});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f6505a, 0);
        parcel.writeParcelable(this.f6506b, 0);
        parcel.writeParcelable(this.f6508d, 0);
        parcel.writeParcelable(this.f6507c, 0);
    }
}
