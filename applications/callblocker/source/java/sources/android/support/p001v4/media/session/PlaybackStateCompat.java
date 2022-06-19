package android.support.p001v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* renamed from: a */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };

    /* renamed from: a */
    final int f133a;

    /* renamed from: b */
    final long f134b;

    /* renamed from: c */
    final long f135c;

    /* renamed from: d */
    final float f136d;

    /* renamed from: e */
    final long f137e;

    /* renamed from: f */
    final int f138f;

    /* renamed from: g */
    final CharSequence f139g;

    /* renamed from: h */
    final long f140h;

    /* renamed from: i */
    List<CustomAction> f141i;

    /* renamed from: j */
    final long f142j;

    /* renamed from: k */
    final Bundle f143k;

    /* renamed from: l */
    private PlaybackState f144l;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* renamed from: a */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* renamed from: a */
        private final String f145a;

        /* renamed from: b */
        private final CharSequence f146b;

        /* renamed from: c */
        private final int f147c;

        /* renamed from: d */
        private final Bundle f148d;

        /* renamed from: e */
        private PlaybackState.CustomAction f149e;

        CustomAction(Parcel parcel) {
            this.f145a = parcel.readString();
            this.f146b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f147c = parcel.readInt();
            this.f148d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f145a = str;
            this.f146b = charSequence;
            this.f147c = i;
            this.f148d = bundle;
        }

        /* renamed from: a */
        public static CustomAction m22382a(Object obj) {
            CustomAction customAction;
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                customAction = null;
            } else {
                PlaybackState.CustomAction customAction2 = (PlaybackState.CustomAction) obj;
                customAction = new CustomAction(customAction2.getAction(), customAction2.getName(), customAction2.getIcon(), customAction2.getExtras());
                customAction.f149e = customAction2;
            }
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f146b) + ", mIcon=" + this.f147c + ", mExtras=" + this.f148d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f145a);
            TextUtils.writeToParcel(this.f146b, parcel, i);
            parcel.writeInt(this.f147c);
            parcel.writeBundle(this.f148d);
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f133a = i;
        this.f134b = j;
        this.f135c = j2;
        this.f136d = f;
        this.f137e = j3;
        this.f138f = i2;
        this.f139g = charSequence;
        this.f140h = j4;
        this.f141i = new ArrayList(list);
        this.f142j = j5;
        this.f143k = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f133a = parcel.readInt();
        this.f134b = parcel.readLong();
        this.f136d = parcel.readFloat();
        this.f140h = parcel.readLong();
        this.f135c = parcel.readLong();
        this.f137e = parcel.readLong();
        this.f139g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f141i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f142j = parcel.readLong();
        this.f143k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f138f = parcel.readInt();
    }

    /* renamed from: a */
    public static PlaybackStateCompat m22385a(Object obj) {
        PlaybackStateCompat playbackStateCompat;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            playbackStateCompat = null;
        } else {
            PlaybackState playbackState = (PlaybackState) obj;
            List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
            ArrayList arrayList = null;
            if (customActions != null) {
                ArrayList arrayList2 = new ArrayList(customActions.size());
                Iterator<PlaybackState.CustomAction> it = customActions.iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    arrayList2.add(CustomAction.m22382a(it.next()));
                }
            }
            playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), Build.VERSION.SDK_INT >= 22 ? playbackState.getExtras() : null);
            playbackStateCompat.f144l = playbackState;
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.f133a);
        sb.append(", position=").append(this.f134b);
        sb.append(", buffered position=").append(this.f135c);
        sb.append(", speed=").append(this.f136d);
        sb.append(", updated=").append(this.f140h);
        sb.append(", actions=").append(this.f137e);
        sb.append(", error code=").append(this.f138f);
        sb.append(", error message=").append(this.f139g);
        sb.append(", custom actions=").append(this.f141i);
        sb.append(", active item id=").append(this.f142j);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f133a);
        parcel.writeLong(this.f134b);
        parcel.writeFloat(this.f136d);
        parcel.writeLong(this.f140h);
        parcel.writeLong(this.f135c);
        parcel.writeLong(this.f137e);
        TextUtils.writeToParcel(this.f139g, parcel, i);
        parcel.writeTypedList(this.f141i);
        parcel.writeLong(this.f142j);
        parcel.writeBundle(this.f143k);
        parcel.writeInt(this.f138f);
    }
}
