package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: com.google.android.material.datepicker.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a.class */
public final class C4594a implements Parcelable {
    public static final Parcelable.Creator<C4594a> CREATOR = new Parcelable.Creator<C4594a>() { // from class: com.google.android.material.datepicker.a.1
        /* renamed from: a */
        public C4594a createFromParcel(Parcel parcel) {
            return new C4594a((C4626l) parcel.readParcelable(C4626l.class.getClassLoader()), (C4626l) parcel.readParcelable(C4626l.class.getClassLoader()), (C4626l) parcel.readParcelable(C4626l.class.getClassLoader()), (AbstractC4597b) parcel.readParcelable(AbstractC4597b.class.getClassLoader()));
        }

        /* renamed from: a */
        public C4594a[] newArray(int i) {
            return new C4594a[i];
        }
    };

    /* renamed from: a */
    private final C4626l f20028a;

    /* renamed from: b */
    private final C4626l f20029b;

    /* renamed from: c */
    private final C4626l f20030c;

    /* renamed from: d */
    private final AbstractC4597b f20031d;

    /* renamed from: e */
    private final int f20032e;

    /* renamed from: f */
    private final int f20033f;

    /* renamed from: com.google.android.material.datepicker.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a$a.class */
    public static final class C4596a {

        /* renamed from: a */
        static final long f20034a = C4636r.m3110a(C4626l.m3144a(1900, 0).f20124e);

        /* renamed from: b */
        static final long f20035b = C4636r.m3110a(C4626l.m3144a(2100, 11).f20124e);

        /* renamed from: c */
        private long f20036c;

        /* renamed from: d */
        private long f20037d;

        /* renamed from: e */
        private Long f20038e;

        /* renamed from: f */
        private AbstractC4597b f20039f;

        public C4596a() {
            this.f20036c = f20034a;
            this.f20037d = f20035b;
            this.f20039f = C4602f.m3202b(Long.MIN_VALUE);
        }

        public C4596a(C4594a c4594a) {
            this.f20036c = f20034a;
            this.f20037d = f20035b;
            this.f20039f = C4602f.m3202b(Long.MIN_VALUE);
            this.f20036c = c4594a.f20028a.f20124e;
            this.f20037d = c4594a.f20029b.f20124e;
            this.f20038e = Long.valueOf(c4594a.f20030c.f20124e);
            this.f20039f = c4594a.f20031d;
        }

        /* renamed from: a */
        public C4596a m3220a(long j) {
            this.f20038e = Long.valueOf(j);
            return this;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* renamed from: a */
        public C4594a m3221a() {
            if (this.f20038e == null) {
                char m3170as = C4618i.m3170as();
                if (this.f20036c > m3170as || m3170as > this.f20037d) {
                    m3170as = this.f20036c;
                }
                this.f20038e = Long.valueOf(m3170as);
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f20039f);
            return new C4594a(C4626l.m3143a(this.f20036c), C4626l.m3143a(this.f20037d), C4626l.m3143a(this.f20038e.longValue()), (AbstractC4597b) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY"));
        }
    }

    /* renamed from: com.google.android.material.datepicker.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/a$b.class */
    public interface AbstractC4597b extends Parcelable {
        /* renamed from: a */
        boolean mo3203a(long j);
    }

    private C4594a(C4626l c4626l, C4626l c4626l2, C4626l c4626l3, AbstractC4597b abstractC4597b) {
        this.f20028a = c4626l;
        this.f20029b = c4626l2;
        this.f20030c = c4626l3;
        this.f20031d = abstractC4597b;
        if (c4626l.compareTo(c4626l3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (c4626l3.compareTo(c4626l2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f20033f = c4626l.m3139b(c4626l2) + 1;
        this.f20032e = (c4626l2.f20121b - c4626l.f20121b) + 1;
    }

    /* renamed from: a */
    public AbstractC4597b m3233a() {
        return this.f20031d;
    }

    /* renamed from: b */
    public C4626l m3231b() {
        return this.f20028a;
    }

    /* renamed from: c */
    public C4626l m3229c() {
        return this.f20029b;
    }

    /* renamed from: d */
    public C4626l m3227d() {
        return this.f20030c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m3225e() {
        return this.f20033f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C4594a)) {
                z = false;
            } else {
                C4594a c4594a = (C4594a) obj;
                if (!this.f20028a.equals(c4594a.f20028a) || !this.f20029b.equals(c4594a.f20029b) || !this.f20030c.equals(c4594a.f20030c) || !this.f20031d.equals(c4594a.f20031d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public int m3224f() {
        return this.f20032e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20028a, this.f20029b, this.f20030c, this.f20031d});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f20028a, 0);
        parcel.writeParcelable(this.f20029b, 0);
        parcel.writeParcelable(this.f20030c, 0);
        parcel.writeParcelable(this.f20031d, 0);
    }
}
