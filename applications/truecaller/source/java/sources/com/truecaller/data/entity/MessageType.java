package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.mopub.common.AdType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType.class */
public abstract class MessageType implements Parcelable {

    /* renamed from: a */
    public final String f11558a;

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Custom.class */
    public static final class Custom extends MessageType {

        /* renamed from: b */
        public static final Custom f11559b = new Custom();
        public static final Parcelable.Creator<Custom> CREATOR = new C3828a();

        /* renamed from: com.truecaller.data.entity.MessageType$Custom$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Custom$a.class */
        public static final class C3828a implements Parcelable.Creator<Custom> {
            @Override // android.os.Parcelable.Creator
            public Custom createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? Custom.f11559b : null;
            }

            @Override // android.os.Parcelable.Creator
            public Custom[] newArray(int i) {
                return new Custom[i];
            }
        }

        public Custom() {
            super(AdType.CUSTOM, null);
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

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Preset.class */
    public static final class Preset extends MessageType {
        public static final Parcelable.Creator<Preset> CREATOR = new C3829a();

        /* renamed from: b */
        public final int f11560b;

        /* renamed from: com.truecaller.data.entity.MessageType$Preset$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Preset$a.class */
        public static final class C3829a implements Parcelable.Creator<Preset> {
            @Override // android.os.Parcelable.Creator
            public Preset createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new Preset(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public Preset[] newArray(int i) {
                return new Preset[i];
            }
        }

        public Preset(int i) {
            super("preset", null);
            this.f11560b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Preset) && this.f11560b == ((Preset) obj).f11560b;
            }
            return true;
        }

        public int hashCode() {
            return this.f11560b;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("Preset(id="), this.f11560b, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f11560b);
        }
    }

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Undefined.class */
    public static final class Undefined extends MessageType {

        /* renamed from: b */
        public static final Undefined f11561b = new Undefined();
        public static final Parcelable.Creator<Undefined> CREATOR = new C3830a();

        /* renamed from: com.truecaller.data.entity.MessageType$Undefined$a */
        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/MessageType$Undefined$a.class */
        public static final class C3830a implements Parcelable.Creator<Undefined> {
            @Override // android.os.Parcelable.Creator
            public Undefined createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? Undefined.f11561b : null;
            }

            @Override // android.os.Parcelable.Creator
            public Undefined[] newArray(int i) {
                return new Undefined[i];
            }
        }

        public Undefined() {
            super(AdError.UNDEFINED_DOMAIN, null);
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

    public MessageType(String str, f fVar) {
        this.f11558a = str;
    }
}
