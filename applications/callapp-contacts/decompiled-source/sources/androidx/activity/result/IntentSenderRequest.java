package androidx.activity.result;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest.class */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new Parcelable.Creator<IntentSenderRequest>() { // from class: androidx.activity.result.IntentSenderRequest.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    };
    private final Intent mFillInIntent;
    private final int mFlagsMask;
    private final int mFlagsValues;
    private final IntentSender mIntentSender;

    /* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Intent f541a;

        /* renamed from: b  reason: collision with root package name */
        private IntentSender f542b;

        /* renamed from: c  reason: collision with root package name */
        private int f543c;

        /* renamed from: d  reason: collision with root package name */
        private int f544d;

        public a(PendingIntent pendingIntent) {
            this(pendingIntent.getIntentSender());
        }

        public a(IntentSender intentSender) {
            this.f542b = intentSender;
        }

        public final a a(int i, int i2) {
            this.f544d = i;
            this.f543c = i2;
            return this;
        }

        public final IntentSenderRequest a() {
            return new IntentSenderRequest(this.f542b, this.f541a, this.f543c, this.f544d);
        }
    }

    IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.mIntentSender = intentSender;
        this.mFillInIntent = intent;
        this.mFlagsMask = i;
        this.mFlagsValues = i2;
    }

    IntentSenderRequest(Parcel parcel) {
        this.mIntentSender = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.mFillInIntent = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.mFlagsMask = parcel.readInt();
        this.mFlagsValues = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Intent getFillInIntent() {
        return this.mFillInIntent;
    }

    public final int getFlagsMask() {
        return this.mFlagsMask;
    }

    public final int getFlagsValues() {
        return this.mFlagsValues;
    }

    public final IntentSender getIntentSender() {
        return this.mIntentSender;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mIntentSender, i);
        parcel.writeParcelable(this.mFillInIntent, i);
        parcel.writeInt(this.mFlagsMask);
        parcel.writeInt(this.mFlagsValues);
    }
}
