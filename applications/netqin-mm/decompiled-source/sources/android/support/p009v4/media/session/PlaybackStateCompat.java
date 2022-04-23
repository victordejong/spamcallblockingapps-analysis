package android.support.p009v4.media.session;

import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0059a();

    /* renamed from: a */
    public final int f109a;

    /* renamed from: b */
    public final long f110b;

    /* renamed from: c */
    public final long f111c;

    /* renamed from: d */
    public final float f112d;

    /* renamed from: e */
    public final long f113e;

    /* renamed from: f */
    public final int f114f;

    /* renamed from: g */
    public final CharSequence f115g;

    /* renamed from: h */
    public final long f116h;

    /* renamed from: i */
    public List<CustomAction> f117i;

    /* renamed from: j */
    public final long f118j;

    /* renamed from: k */
    public final Bundle f119k;

    /* renamed from: l */
    public PlaybackState f120l;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0058a();

        /* renamed from: a */
        public final String f121a;

        /* renamed from: b */
        public final CharSequence f122b;

        /* renamed from: c */
        public final int f123c;

        /* renamed from: d */
        public final Bundle f124d;

        /* renamed from: e */
        public PlaybackState.CustomAction f125e;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        public static final class C0058a implements Parcelable.Creator<CustomAction> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        public CustomAction(Parcel parcel) {
            this.f121a = parcel.readString();
            this.f122b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f123c = parcel.readInt();
            this.f124d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        public CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f121a = str;
            this.f122b = charSequence;
            this.f123c = i;
            this.f124d = bundle;
        }

        /* renamed from: a */
        public static CustomAction m39232a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            CustomAction customAction2 = new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), customAction.getExtras());
            customAction2.f125e = customAction;
            return customAction2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f122b) + ", mIcon=" + this.f123c + ", mExtras=" + this.f124d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f121a);
            TextUtils.writeToParcel(this.f122b, parcel, i);
            parcel.writeInt(this.f123c);
            parcel.writeBundle(this.f124d);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    public static final class C0059a implements Parcelable.Creator<PlaybackStateCompat> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    public PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f109a = i;
        this.f110b = j;
        this.f111c = j2;
        this.f112d = f;
        this.f113e = j3;
        this.f114f = i2;
        this.f115g = charSequence;
        this.f116h = j4;
        this.f117i = new ArrayList(list);
        this.f118j = j5;
        this.f119k = bundle;
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f109a = parcel.readInt();
        this.f110b = parcel.readLong();
        this.f112d = parcel.readFloat();
        this.f116h = parcel.readLong();
        this.f111c = parcel.readLong();
        this.f113e = parcel.readLong();
        this.f115g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f117i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f118j = parcel.readLong();
        this.f119k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f114f = parcel.readInt();
    }

    /* renamed from: a */
    public static int m39234a(long j) {
        if (j == 4) {
            return 126;
        }
        if (j == 2) {
            return 127;
        }
        if (j == 32) {
            return 87;
        }
        if (j == 16) {
            return 88;
        }
        if (j == 1) {
            return 86;
        }
        if (j == 64) {
            return 90;
        }
        if (j == 8) {
            return 89;
        }
        return j == 512 ? 85 : 0;
    }

    /* renamed from: a */
    public static PlaybackStateCompat m39233a(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        PlaybackStateCompat playbackStateCompat = null;
        if (obj != null) {
            playbackStateCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                PlaybackState playbackState = (PlaybackState) obj;
                List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
                if (customActions != null) {
                    arrayList = new ArrayList(customActions.size());
                    for (PlaybackState.CustomAction customAction : customActions) {
                        arrayList.add(CustomAction.m39232a(customAction));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = playbackState.getExtras();
                }
                playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), bundle);
                playbackStateCompat.f120l = playbackState;
            }
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f109a + ", position=" + this.f110b + ", buffered position=" + this.f111c + ", speed=" + this.f112d + ", updated=" + this.f116h + ", actions=" + this.f113e + ", error code=" + this.f114f + ", error message=" + this.f115g + ", custom actions=" + this.f117i + ", active item id=" + this.f118j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f109a);
        parcel.writeLong(this.f110b);
        parcel.writeFloat(this.f112d);
        parcel.writeLong(this.f116h);
        parcel.writeLong(this.f111c);
        parcel.writeLong(this.f113e);
        TextUtils.writeToParcel(this.f115g, parcel, i);
        parcel.writeTypedList(this.f117i);
        parcel.writeLong(this.f118j);
        parcel.writeBundle(this.f119k);
        parcel.writeInt(this.f114f);
    }
}
