package android.support.p003v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p003v4.media.session.C0068e;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0056a();

    /* renamed from: d */
    final int f111d;

    /* renamed from: e */
    final long f112e;

    /* renamed from: f */
    final long f113f;

    /* renamed from: g */
    final float f114g;

    /* renamed from: h */
    final long f115h;

    /* renamed from: i */
    final int f116i;

    /* renamed from: j */
    final CharSequence f117j;

    /* renamed from: k */
    final long f118k;

    /* renamed from: l */
    List<CustomAction> f119l;

    /* renamed from: m */
    final long f120m;

    /* renamed from: n */
    final Bundle f121n;

    /* renamed from: o */
    private Object f122o;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0055a();

        /* renamed from: d */
        private final String f123d;

        /* renamed from: e */
        private final CharSequence f124e;

        /* renamed from: f */
        private final int f125f;

        /* renamed from: g */
        private final Bundle f126g;

        /* renamed from: h */
        private Object f127h;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        static final class C0055a implements Parcelable.Creator<CustomAction> {
            C0055a() {
            }

            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* renamed from: b */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        CustomAction(Parcel parcel) {
            this.f123d = parcel.readString();
            this.f124e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f125f = parcel.readInt();
            this.f126g = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f123d = str;
            this.f124e = charSequence;
            this.f125f = i;
            this.f126g = bundle;
        }

        /* renamed from: a */
        public static CustomAction m35824a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(C0068e.C0069a.m35777a(obj), C0068e.C0069a.m35774d(obj), C0068e.C0069a.m35775c(obj), C0068e.C0069a.m35776b(obj));
            customAction.f127h = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f124e) + ", mIcon=" + this.f125f + ", mExtras=" + this.f126g;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f123d);
            TextUtils.writeToParcel(this.f124e, parcel, i);
            parcel.writeInt(this.f125f);
            parcel.writeBundle(this.f126g);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    static final class C0056a implements Parcelable.Creator<PlaybackStateCompat> {
        C0056a() {
        }

        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* renamed from: b */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f111d = i;
        this.f112e = j;
        this.f113f = j2;
        this.f114g = f;
        this.f115h = j3;
        this.f116i = i2;
        this.f117j = charSequence;
        this.f118k = j4;
        this.f119l = new ArrayList(list);
        this.f120m = j5;
        this.f121n = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f111d = parcel.readInt();
        this.f112e = parcel.readLong();
        this.f114g = parcel.readFloat();
        this.f118k = parcel.readLong();
        this.f113f = parcel.readLong();
        this.f115h = parcel.readLong();
        this.f117j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f119l = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f120m = parcel.readLong();
        this.f121n = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f116i = parcel.readInt();
    }

    /* renamed from: a */
    public static PlaybackStateCompat m35825a(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        PlaybackStateCompat playbackStateCompat = null;
        if (obj != null) {
            playbackStateCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                List<Object> m35783d = C0068e.m35783d(obj);
                if (m35783d != null) {
                    arrayList = new ArrayList(m35783d.size());
                    for (Object obj2 : m35783d) {
                        arrayList.add(CustomAction.m35824a(obj2));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = C0070f.m35773a(obj);
                }
                playbackStateCompat = new PlaybackStateCompat(C0068e.m35778i(obj), C0068e.m35779h(obj), C0068e.m35784c(obj), C0068e.m35780g(obj), C0068e.m35786a(obj), 0, C0068e.m35782e(obj), C0068e.m35781f(obj), arrayList, C0068e.m35785b(obj), bundle);
                playbackStateCompat.f122o = obj;
            }
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f111d + ", position=" + this.f112e + ", buffered position=" + this.f113f + ", speed=" + this.f114g + ", updated=" + this.f118k + ", actions=" + this.f115h + ", error code=" + this.f116i + ", error message=" + this.f117j + ", custom actions=" + this.f119l + ", active item id=" + this.f120m + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f111d);
        parcel.writeLong(this.f112e);
        parcel.writeFloat(this.f114g);
        parcel.writeLong(this.f118k);
        parcel.writeLong(this.f113f);
        parcel.writeLong(this.f115h);
        TextUtils.writeToParcel(this.f117j, parcel, i);
        parcel.writeTypedList(this.f119l);
        parcel.writeLong(this.f120m);
        parcel.writeBundle(this.f121n);
        parcel.writeInt(this.f116i);
    }
}
