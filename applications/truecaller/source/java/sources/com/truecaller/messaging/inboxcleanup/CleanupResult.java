package com.truecaller.messaging.inboxcleanup;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult.class */
public abstract class CleanupResult implements Parcelable {

    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError.class */
    public static final class GeneralError extends CleanupResult {
        public static final Parcelable.Creator<GeneralError> CREATOR = new C4218a();

        /* renamed from: a */
        public final boolean f13494a;

        /* renamed from: com.truecaller.messaging.inboxcleanup.CleanupResult$GeneralError$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError$a.class */
        public static final class C4218a implements Parcelable.Creator<GeneralError> {
            @Override // android.os.Parcelable.Creator
            public GeneralError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new GeneralError(parcel.readInt() != 0);
            }

            @Override // android.os.Parcelable.Creator
            public GeneralError[] newArray(int i) {
                return new GeneralError[i];
            }
        }

        public GeneralError() {
            this(false, 1);
        }

        public GeneralError(boolean z) {
            super(null);
            this.f13494a = z;
        }

        public /* synthetic */ GeneralError(boolean z, int i) {
            this((i & 1) != 0 ? true : z);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof GeneralError) && this.f13494a == ((GeneralError) obj).f13494a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f13494a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("GeneralError(showReason="), this.f13494a, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f13494a ? 1 : 0);
        }
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError.class */
    public static final class NoPermissionsError extends CleanupResult {

        /* renamed from: a */
        public static final NoPermissionsError f13495a = new NoPermissionsError();
        public static final Parcelable.Creator<NoPermissionsError> CREATOR = new C4219a();

        /* renamed from: com.truecaller.messaging.inboxcleanup.CleanupResult$NoPermissionsError$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError$a.class */
        public static final class C4219a implements Parcelable.Creator<NoPermissionsError> {
            @Override // android.os.Parcelable.Creator
            public NoPermissionsError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? NoPermissionsError.f13495a : null;
            }

            @Override // android.os.Parcelable.Creator
            public NoPermissionsError[] newArray(int i) {
                return new NoPermissionsError[i];
            }
        }

        public NoPermissionsError() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$Success.class */
    public static final class Success extends CleanupResult {
        public static final Parcelable.Creator<Success> CREATOR = new C4220a();

        /* renamed from: a */
        public final int f13496a;

        /* renamed from: b */
        public final int f13497b;

        /* renamed from: c */
        public final int f13498c;

        /* renamed from: com.truecaller.messaging.inboxcleanup.CleanupResult$Success$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/CleanupResult$Success$a.class */
        public static final class C4220a implements Parcelable.Creator<Success> {
            @Override // android.os.Parcelable.Creator
            public Success createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new Success(parcel.readInt(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public Success[] newArray(int i) {
                return new Success[i];
            }
        }

        public Success(int i, int i2, int i3) {
            super(null);
            this.f13496a = i;
            this.f13497b = i2;
            this.f13498c = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return this.f13496a == success.f13496a && this.f13497b == success.f13497b && this.f13498c == success.f13498c;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f13496a * 31) + this.f13497b) * 31) + this.f13498c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Success(otpCount=");
            m8728C.append(this.f13496a);
            m8728C.append(", promotionalCount=");
            m8728C.append(this.f13497b);
            m8728C.append(", spamCount=");
            return C22128a.m8697J2(m8728C, this.f13498c, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f13496a);
            parcel.writeInt(this.f13497b);
            parcel.writeInt(this.f13498c);
        }
    }

    public CleanupResult() {
    }

    public CleanupResult(f fVar) {
    }
}
