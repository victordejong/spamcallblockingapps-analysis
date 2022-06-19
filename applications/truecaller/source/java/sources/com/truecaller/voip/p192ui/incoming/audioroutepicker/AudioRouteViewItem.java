package com.truecaller.voip.p192ui.incoming.audioroutepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.voip.C4781R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem.class */
public abstract class AudioRouteViewItem implements Parcelable {

    /* renamed from: a */
    public final String f16460a;

    /* renamed from: b */
    public final int f16461b;

    /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Bluetooth */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth.class */
    public static final class Bluetooth extends AudioRouteViewItem {
        public static final Parcelable.Creator<Bluetooth> CREATOR = new C4848a();

        /* renamed from: c */
        public final String f16462c;

        /* renamed from: d */
        public final String f16463d;

        /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Bluetooth$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth$a.class */
        public static final class C4848a implements Parcelable.Creator<Bluetooth> {
            @Override // android.os.Parcelable.Creator
            public Bluetooth createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new Bluetooth(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public Bluetooth[] newArray(int i) {
                return new Bluetooth[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bluetooth(String str, String str2) {
            super(str, C4781R.C4782drawable.ic_tcx_voip_bluetooth_normal_outline_24dp, null);
            l.e(str, "itemName");
            l.e(str2, "deviceAddress");
            this.f16462c = str;
            this.f16463d = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Bluetooth)) {
                    return false;
                }
                Bluetooth bluetooth = (Bluetooth) obj;
                return l.a(this.f16462c, bluetooth.f16462c) && l.a(this.f16463d, bluetooth.f16463d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f16462c;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f16463d;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Bluetooth(itemName=");
            m8728C.append(this.f16462c);
            m8728C.append(", deviceAddress=");
            return C22128a.m8618h(m8728C, this.f16463d, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.f16462c);
            parcel.writeString(this.f16463d);
        }
    }

    /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Phone */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone.class */
    public static final class Phone extends AudioRouteViewItem {
        public static final Parcelable.Creator<Phone> CREATOR = new C4849a();

        /* renamed from: c */
        public final String f16464c;

        /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Phone$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone$a.class */
        public static final class C4849a implements Parcelable.Creator<Phone> {
            @Override // android.os.Parcelable.Creator
            public Phone createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new Phone(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public Phone[] newArray(int i) {
                return new Phone[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Phone(String str) {
            super(str, C4781R.C4782drawable.ic_tcx_voip_phone_checked_outline_24dp, null);
            l.e(str, "itemName");
            this.f16464c = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Phone) && l.a(this.f16464c, ((Phone) obj).f16464c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f16464c;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Phone(itemName="), this.f16464c, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.f16464c);
        }
    }

    /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Speaker */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker.class */
    public static final class Speaker extends AudioRouteViewItem {
        public static final Parcelable.Creator<Speaker> CREATOR = new C4850a();

        /* renamed from: c */
        public final String f16465c;

        /* renamed from: com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Speaker$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker$a.class */
        public static final class C4850a implements Parcelable.Creator<Speaker> {
            @Override // android.os.Parcelable.Creator
            public Speaker createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new Speaker(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public Speaker[] newArray(int i) {
                return new Speaker[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Speaker(String str) {
            super(str, C4781R.C4782drawable.ic_tcx_voip_speaker_normal_outline_24dp, null);
            l.e(str, "itemName");
            this.f16465c = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Speaker) && l.a(this.f16465c, ((Speaker) obj).f16465c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f16465c;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Speaker(itemName="), this.f16465c, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.f16465c);
        }
    }

    public AudioRouteViewItem(String str, int i, f fVar) {
        this.f16460a = str;
        this.f16461b = i;
    }
}
