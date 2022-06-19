package com.truecaller.calling.initiate_call;

import android.app.Activity;
import android.os.Parcel;
import android.os.Parcelable;
import android.telecom.PhoneAccountHandle;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper.class */
public interface InitiateCallHelper {

    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption.class */
    public static abstract class CallContextOption implements Parcelable {
        public CallContextOption() {
        }

        public CallContextOption(f fVar) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions.class */
    public static final class CallOptions implements Parcelable {
        public static final Parcelable.Creator<CallOptions> CREATOR = new C3622b();

        /* renamed from: a */
        public final String f10714a;

        /* renamed from: b */
        public final String f10715b;

        /* renamed from: c */
        public final String f10716c;

        /* renamed from: d */
        public Integer f10717d;

        /* renamed from: e */
        public final boolean f10718e;

        /* renamed from: f */
        public final boolean f10719f;

        /* renamed from: g */
        public final PhoneAccountHandle f10720g;

        /* renamed from: h */
        public final boolean f10721h;

        /* renamed from: i */
        public final CallContextOption f10722i;

        /* renamed from: com.truecaller.calling.initiate_call.InitiateCallHelper$CallOptions$a */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a.class */
        public static final class C3621a {

            /* renamed from: a */
            public String f10723a;

            /* renamed from: b */
            public Integer f10724b;

            /* renamed from: c */
            public boolean f10725c;

            /* renamed from: d */
            public boolean f10726d;

            /* renamed from: e */
            public PhoneAccountHandle f10727e;

            /* renamed from: f */
            public boolean f10728f;

            /* renamed from: g */
            public CallContextOption f10729g;

            /* renamed from: h */
            public final String f10730h;

            /* renamed from: i */
            public final String f10731i;

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public C3621a(CallOptions callOptions) {
                this(callOptions.f10714a, callOptions.f10715b);
                l.e(callOptions, "callOptions");
                this.f10723a = callOptions.f10716c;
                this.f10724b = callOptions.f10717d;
                this.f10725c = callOptions.f10718e;
                this.f10726d = callOptions.f10719f;
                this.f10727e = callOptions.f10720g;
                this.f10728f = callOptions.f10721h;
                m35742b(callOptions.f10722i);
            }

            public C3621a(String str, String str2) {
                l.e(str2, "analyticsContext");
                this.f10730h = str;
                this.f10731i = str2;
                this.f10729g = CallContextOption.ShowOnBoarded.a;
            }

            /* renamed from: a */
            public final CallOptions m35743a() {
                return new CallOptions(this.f10730h, this.f10731i, this.f10723a, this.f10724b, this.f10725c, this.f10726d, this.f10727e, this.f10728f, this.f10729g);
            }

            /* renamed from: b */
            public final C3621a m35742b(CallContextOption callContextOption) {
                l.e(callContextOption, "callContextOption");
                this.f10729g = callContextOption;
                return this;
            }
        }

        /* renamed from: com.truecaller.calling.initiate_call.InitiateCallHelper$CallOptions$b */
        /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$b.class */
        public static final class C3622b implements Parcelable.Creator<CallOptions> {
            @Override // android.os.Parcelable.Creator
            public CallOptions createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new CallOptions(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0 ? (PhoneAccountHandle) PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, (CallContextOption) parcel.readParcelable(CallOptions.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public CallOptions[] newArray(int i) {
                return new CallOptions[i];
            }
        }

        public CallOptions(String str, String str2, String str3, Integer num, boolean z, boolean z2, PhoneAccountHandle phoneAccountHandle, boolean z3, CallContextOption callContextOption) {
            l.e(str2, "analyticsContext");
            l.e(callContextOption, "callContextOption");
            this.f10714a = str;
            this.f10715b = str2;
            this.f10716c = str3;
            this.f10717d = num;
            this.f10718e = z;
            this.f10719f = z2;
            this.f10720g = phoneAccountHandle;
            this.f10721h = z3;
            this.f10722i = callContextOption;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.f10714a);
            parcel.writeString(this.f10715b);
            parcel.writeString(this.f10716c);
            Integer num = this.f10717d;
            if (num != null) {
                parcel.writeInt(1);
                parcel.writeInt(num.intValue());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f10718e ? 1 : 0);
            parcel.writeInt(this.f10719f ? 1 : 0);
            PhoneAccountHandle phoneAccountHandle = this.f10720g;
            if (phoneAccountHandle != null) {
                parcel.writeInt(1);
                phoneAccountHandle.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f10721h ? 1 : 0);
            parcel.writeParcelable(this.f10722i, i);
        }
    }

    /* renamed from: a */
    void m35745a(Activity activity);

    /* renamed from: b */
    void m35744b(CallOptions callOptions);
}
