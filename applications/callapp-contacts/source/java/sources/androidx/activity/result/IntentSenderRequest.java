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

    /* renamed from: androidx.activity.result.IntentSenderRequest$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest$a.class */
    public static final class C0128a {

        /* renamed from: a */
        public Intent f250a;

        /* renamed from: b */
        private IntentSender f251b;

        /* renamed from: c */
        private int f252c;

        /* renamed from: d */
        private int f253d;

        public C0128a(PendingIntent pendingIntent) {
            this(pendingIntent.getIntentSender());
        }

        public C0128a(IntentSender intentSender) {
            this.f251b = intentSender;
        }

        /* renamed from: a */
        public final C0128a m46388a(int i, int i2) {
            this.f253d = i;
            this.f252c = i2;
            return this;
        }

        /* renamed from: a */
        public final IntentSenderRequest m46389a() {
            return new IntentSenderRequest(this.f251b, this.f250a, this.f252c, this.f253d);
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
