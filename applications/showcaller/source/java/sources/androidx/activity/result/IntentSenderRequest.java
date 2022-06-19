package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest.class */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new C0092a();

    /* renamed from: d */
    private final IntentSender f183d;

    /* renamed from: e */
    private final Intent f184e;

    /* renamed from: f */
    private final int f185f;

    /* renamed from: g */
    private final int f186g;

    /* renamed from: androidx.activity.result.IntentSenderRequest$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest$a.class */
    class C0092a implements Parcelable.Creator<IntentSenderRequest> {
        C0092a() {
        }

        /* renamed from: a */
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        /* renamed from: b */
        public IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    }

    /* renamed from: androidx.activity.result.IntentSenderRequest$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest$b.class */
    public static final class C0093b {

        /* renamed from: a */
        private IntentSender f187a;

        /* renamed from: b */
        private Intent f188b;

        /* renamed from: c */
        private int f189c;

        /* renamed from: d */
        private int f190d;

        public C0093b(IntentSender intentSender) {
            this.f187a = intentSender;
        }

        /* renamed from: a */
        public IntentSenderRequest m35737a() {
            return new IntentSenderRequest(this.f187a, this.f188b, this.f189c, this.f190d);
        }

        /* renamed from: b */
        public C0093b m35736b(Intent intent) {
            this.f188b = intent;
            return this;
        }

        /* renamed from: c */
        public C0093b m35735c(int i, int i2) {
            this.f190d = i;
            this.f189c = i2;
            return this;
        }
    }

    IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f183d = intentSender;
        this.f184e = intent;
        this.f185f = i;
        this.f186g = i2;
    }

    IntentSenderRequest(Parcel parcel) {
        this.f183d = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f184e = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f185f = parcel.readInt();
        this.f186g = parcel.readInt();
    }

    /* renamed from: a */
    public Intent m35743a() {
        return this.f184e;
    }

    /* renamed from: b */
    public int m35742b() {
        return this.f185f;
    }

    /* renamed from: c */
    public int m35741c() {
        return this.f186g;
    }

    /* renamed from: d */
    public IntentSender m35740d() {
        return this.f183d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f183d, i);
        parcel.writeParcelable(this.f184e, i);
        parcel.writeInt(this.f185f);
        parcel.writeInt(this.f186g);
    }
}
