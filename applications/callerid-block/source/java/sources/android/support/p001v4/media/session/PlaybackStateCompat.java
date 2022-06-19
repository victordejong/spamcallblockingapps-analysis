package android.support.p001v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.C0061e;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0052a();

    /* renamed from: b */
    final int f98b;

    /* renamed from: c */
    final long f99c;

    /* renamed from: d */
    final long f100d;

    /* renamed from: e */
    final float f101e;

    /* renamed from: f */
    final long f102f;

    /* renamed from: g */
    final int f103g;

    /* renamed from: h */
    final CharSequence f104h;

    /* renamed from: i */
    final long f105i;

    /* renamed from: j */
    List<CustomAction> f106j;

    /* renamed from: k */
    final long f107k;

    /* renamed from: l */
    final Bundle f108l;

    /* renamed from: m */
    private Object f109m;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0051a();

        /* renamed from: b */
        private final String f110b;

        /* renamed from: c */
        private final CharSequence f111c;

        /* renamed from: d */
        private final int f112d;

        /* renamed from: e */
        private final Bundle f113e;

        /* renamed from: f */
        private Object f114f;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        static final class C0051a implements Parcelable.Creator<CustomAction> {
            C0051a() {
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
            this.f110b = parcel.readString();
            this.f111c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f112d = parcel.readInt();
            this.f113e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f110b = str;
            this.f111c = charSequence;
            this.f112d = i;
            this.f113e = bundle;
        }

        /* renamed from: a */
        public static CustomAction m15068a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(C0061e.C0062a.m15021a(obj), C0061e.C0062a.m15018d(obj), C0061e.C0062a.m15019c(obj), C0061e.C0062a.m15020b(obj));
            customAction.f114f = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f111c) + ", mIcon=" + this.f112d + ", mExtras=" + this.f113e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f110b);
            TextUtils.writeToParcel(this.f111c, parcel, i);
            parcel.writeInt(this.f112d);
            parcel.writeBundle(this.f113e);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    static final class C0052a implements Parcelable.Creator<PlaybackStateCompat> {
        C0052a() {
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
        this.f98b = i;
        this.f99c = j;
        this.f100d = j2;
        this.f101e = f;
        this.f102f = j3;
        this.f103g = i2;
        this.f104h = charSequence;
        this.f105i = j4;
        this.f106j = new ArrayList(list);
        this.f107k = j5;
        this.f108l = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f98b = parcel.readInt();
        this.f99c = parcel.readLong();
        this.f101e = parcel.readFloat();
        this.f105i = parcel.readLong();
        this.f100d = parcel.readLong();
        this.f102f = parcel.readLong();
        this.f104h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f106j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f107k = parcel.readLong();
        this.f108l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f103g = parcel.readInt();
    }

    /* renamed from: a */
    public static PlaybackStateCompat m15069a(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        PlaybackStateCompat playbackStateCompat = null;
        if (obj != null) {
            playbackStateCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                List<Object> m15027d = C0061e.m15027d(obj);
                if (m15027d != null) {
                    arrayList = new ArrayList(m15027d.size());
                    for (Object obj2 : m15027d) {
                        arrayList.add(CustomAction.m15068a(obj2));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = C0063f.m15017a(obj);
                }
                playbackStateCompat = new PlaybackStateCompat(C0061e.m15022i(obj), C0061e.m15023h(obj), C0061e.m15028c(obj), C0061e.m15024g(obj), C0061e.m15030a(obj), 0, C0061e.m15026e(obj), C0061e.m15025f(obj), arrayList, C0061e.m15029b(obj), bundle);
                playbackStateCompat.f109m = obj;
            }
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f98b + ", position=" + this.f99c + ", buffered position=" + this.f100d + ", speed=" + this.f101e + ", updated=" + this.f105i + ", actions=" + this.f102f + ", error code=" + this.f103g + ", error message=" + this.f104h + ", custom actions=" + this.f106j + ", active item id=" + this.f107k + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f98b);
        parcel.writeLong(this.f99c);
        parcel.writeFloat(this.f101e);
        parcel.writeLong(this.f105i);
        parcel.writeLong(this.f100d);
        parcel.writeLong(this.f102f);
        TextUtils.writeToParcel(this.f104h, parcel, i);
        parcel.writeTypedList(this.f106j);
        parcel.writeLong(this.f107k);
        parcel.writeBundle(this.f108l);
        parcel.writeInt(this.f103g);
    }
}
