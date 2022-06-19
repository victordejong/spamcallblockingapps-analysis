package android.support.p012v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0089a();

    /* renamed from: a */
    public final int f190a;

    /* renamed from: b */
    public final long f191b;

    /* renamed from: c */
    public final long f192c;

    /* renamed from: d */
    public final float f193d;

    /* renamed from: e */
    public final long f194e;

    /* renamed from: f */
    public final int f195f;

    /* renamed from: g */
    public final CharSequence f196g;

    /* renamed from: h */
    public final long f197h;

    /* renamed from: i */
    public List<CustomAction> f198i;

    /* renamed from: j */
    public final long f199j;

    /* renamed from: k */
    public final Bundle f200k;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0088a();

        /* renamed from: a */
        public final String f201a;

        /* renamed from: b */
        public final CharSequence f202b;

        /* renamed from: c */
        public final int f203c;

        /* renamed from: d */
        public final Bundle f204d;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        public static final class C0088a implements Parcelable.Creator<CustomAction> {
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
            this.f201a = parcel.readString();
            this.f202b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f203c = parcel.readInt();
            this.f204d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("Action:mName='");
            m8752j.append((Object) this.f202b);
            m8752j.append(", mIcon=");
            m8752j.append(this.f203c);
            m8752j.append(", mExtras=");
            m8752j.append(this.f204d);
            return m8752j.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f201a);
            TextUtils.writeToParcel(this.f202b, parcel, i);
            parcel.writeInt(this.f203c);
            parcel.writeBundle(this.f204d);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    public static final class C0089a implements Parcelable.Creator<PlaybackStateCompat> {
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
        this.f190a = parcel.readInt();
        this.f191b = parcel.readLong();
        this.f193d = parcel.readFloat();
        this.f197h = parcel.readLong();
        this.f192c = parcel.readLong();
        this.f194e = parcel.readLong();
        this.f196g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f198i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f199j = parcel.readLong();
        this.f200k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f195f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f190a + ", position=" + this.f191b + ", buffered position=" + this.f192c + ", speed=" + this.f193d + ", updated=" + this.f197h + ", actions=" + this.f194e + ", error code=" + this.f195f + ", error message=" + this.f196g + ", custom actions=" + this.f198i + ", active item id=" + this.f199j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f190a);
        parcel.writeLong(this.f191b);
        parcel.writeFloat(this.f193d);
        parcel.writeLong(this.f197h);
        parcel.writeLong(this.f192c);
        parcel.writeLong(this.f194e);
        TextUtils.writeToParcel(this.f196g, parcel, i);
        parcel.writeTypedList(this.f198i);
        parcel.writeLong(this.f199j);
        parcel.writeBundle(this.f200k);
        parcel.writeInt(this.f195f);
    }
}
