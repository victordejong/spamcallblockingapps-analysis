package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0014a();

    /* renamed from: a */
    public final int f44a;

    /* renamed from: b */
    public final long f45b;

    /* renamed from: c */
    public final long f46c;

    /* renamed from: d */
    public final float f47d;

    /* renamed from: e */
    public final long f48e;

    /* renamed from: f */
    public final int f49f;

    /* renamed from: g */
    public final CharSequence f50g;

    /* renamed from: h */
    public final long f51h;

    /* renamed from: i */
    public List<CustomAction> f52i;

    /* renamed from: j */
    public final long f53j;

    /* renamed from: k */
    public final Bundle f54k;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0013a();

        /* renamed from: a */
        public final String f55a;

        /* renamed from: b */
        public final CharSequence f56b;

        /* renamed from: c */
        public final int f57c;

        /* renamed from: d */
        public final Bundle f58d;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        public class C0013a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        public CustomAction(Parcel parcel) {
            this.f55a = parcel.readString();
            this.f56b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f57c = parcel.readInt();
            this.f58d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Action:mName='");
            m8728C.append((Object) this.f56b);
            m8728C.append(", mIcon=");
            m8728C.append(this.f57c);
            m8728C.append(", mExtras=");
            m8728C.append(this.f58d);
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f55a);
            TextUtils.writeToParcel(this.f56b, parcel, i);
            parcel.writeInt(this.f57c);
            parcel.writeBundle(this.f58d);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    public class C0014a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f44a = parcel.readInt();
        this.f45b = parcel.readLong();
        this.f47d = parcel.readFloat();
        this.f51h = parcel.readLong();
        this.f46c = parcel.readLong();
        this.f48e = parcel.readLong();
        this.f50g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f52i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f53j = parcel.readLong();
        this.f54k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f49f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("PlaybackState {", "state=");
        m8704I.append(this.f44a);
        m8704I.append(", position=");
        m8704I.append(this.f45b);
        m8704I.append(", buffered position=");
        m8704I.append(this.f46c);
        m8704I.append(", speed=");
        m8704I.append(this.f47d);
        m8704I.append(", updated=");
        m8704I.append(this.f51h);
        m8704I.append(", actions=");
        m8704I.append(this.f48e);
        m8704I.append(", error code=");
        m8704I.append(this.f49f);
        m8704I.append(", error message=");
        m8704I.append(this.f50g);
        m8704I.append(", custom actions=");
        m8704I.append(this.f52i);
        m8704I.append(", active item id=");
        return C22128a.m8693K2(m8704I, this.f53j, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f44a);
        parcel.writeLong(this.f45b);
        parcel.writeFloat(this.f47d);
        parcel.writeLong(this.f51h);
        parcel.writeLong(this.f46c);
        parcel.writeLong(this.f48e);
        TextUtils.writeToParcel(this.f50g, parcel, i);
        parcel.writeTypedList(this.f52i);
        parcel.writeLong(this.f53j);
        parcel.writeBundle(this.f54k);
        parcel.writeInt(this.f49f);
    }
}
