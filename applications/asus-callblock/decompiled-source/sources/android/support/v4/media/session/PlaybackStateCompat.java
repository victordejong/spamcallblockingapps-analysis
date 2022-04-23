package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f170a;

    /* renamed from: b  reason: collision with root package name */
    private final long f171b;
    private final long c;
    private final float d;
    private final long e;
    private final CharSequence f;
    private final long g;
    private List<CustomAction> h;
    private final long i;
    private final Bundle j;

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final String f172a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f173b;
        private final int c;
        private final Bundle d;

        private CustomAction(Parcel parcel) {
            this.f172a = parcel.readString();
            this.f173b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.c = parcel.readInt();
            this.d = parcel.readBundle();
        }

        /* synthetic */ CustomAction(Parcel parcel, byte b2) {
            this(parcel);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f173b) + ", mIcon=" + this.c + ", mExtras=" + this.d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f172a);
            TextUtils.writeToParcel(this.f173b, parcel, i);
            parcel.writeInt(this.c);
            parcel.writeBundle(this.d);
        }
    }

    private PlaybackStateCompat(Parcel parcel) {
        this.f170a = parcel.readInt();
        this.f171b = parcel.readLong();
        this.d = parcel.readFloat();
        this.g = parcel.readLong();
        this.c = parcel.readLong();
        this.e = parcel.readLong();
        this.f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.i = parcel.readLong();
        this.j = parcel.readBundle();
    }

    /* synthetic */ PlaybackStateCompat(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.f170a);
        sb.append(", position=").append(this.f171b);
        sb.append(", buffered position=").append(this.c);
        sb.append(", speed=").append(this.d);
        sb.append(", updated=").append(this.g);
        sb.append(", actions=").append(this.e);
        sb.append(", error=").append(this.f);
        sb.append(", custom actions=").append(this.h);
        sb.append(", active item id=").append(this.i);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f170a);
        parcel.writeLong(this.f171b);
        parcel.writeFloat(this.d);
        parcel.writeLong(this.g);
        parcel.writeLong(this.c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.f, parcel, i);
        parcel.writeTypedList(this.h);
        parcel.writeLong(this.i);
        parcel.writeBundle(this.j);
    }
}
