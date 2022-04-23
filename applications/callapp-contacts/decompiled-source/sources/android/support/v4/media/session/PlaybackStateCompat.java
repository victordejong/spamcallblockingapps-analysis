package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_PLAYBACK_SPEED = 4194304;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;
    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    final long mActions;
    final long mActiveItemId;
    final long mBufferedPosition;
    List<CustomAction> mCustomActions;
    final int mErrorCode;
    final CharSequence mErrorMessage;
    final Bundle mExtras;
    final long mPosition;
    final float mSpeed;
    final int mState;
    private PlaybackState mStateFwk;
    final long mUpdateTime;

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };
        private final String mAction;
        private PlaybackState.CustomAction mCustomActionFwk;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        CustomAction(Parcel parcel) {
            this.mAction = parcel.readString();
            this.mName = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mIcon = parcel.readInt();
            this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.mAction = str;
            this.mName = charSequence;
            this.mIcon = i;
            this.mExtras = bundle;
        }

        public static CustomAction fromCustomAction(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            Bundle extras = customAction.getExtras();
            MediaSessionCompat.a(extras);
            CustomAction customAction2 = new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), extras);
            customAction2.mCustomActionFwk = customAction;
            return customAction2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String getAction() {
            return this.mAction;
        }

        public final Object getCustomAction() {
            if (this.mCustomActionFwk != null || Build.VERSION.SDK_INT < 21) {
                return this.mCustomActionFwk;
            }
            PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(this.mAction, this.mName, this.mIcon);
            builder.setExtras(this.mExtras);
            return builder.build();
        }

        public final Bundle getExtras() {
            return this.mExtras;
        }

        public final int getIcon() {
            return this.mIcon;
        }

        public final CharSequence getName() {
            return this.mName;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, parcel, i);
            parcel.writeInt(this.mIcon);
            parcel.writeBundle(this.mExtras);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f474a;

        /* renamed from: b  reason: collision with root package name */
        public long f475b;

        /* renamed from: c  reason: collision with root package name */
        private final List<CustomAction> f476c;

        /* renamed from: d  reason: collision with root package name */
        private int f477d;
        private long e;
        private float f;
        private long g;
        private int h;
        private CharSequence i;
        private long j;
        private Bundle k;

        public a() {
            this.f476c = new ArrayList();
            this.f475b = -1L;
        }

        public a(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.f476c = arrayList;
            this.f475b = -1L;
            this.f477d = playbackStateCompat.mState;
            this.e = playbackStateCompat.mPosition;
            this.f = playbackStateCompat.mSpeed;
            this.j = playbackStateCompat.mUpdateTime;
            this.f474a = playbackStateCompat.mBufferedPosition;
            this.g = playbackStateCompat.mActions;
            this.h = playbackStateCompat.mErrorCode;
            this.i = playbackStateCompat.mErrorMessage;
            if (playbackStateCompat.mCustomActions != null) {
                arrayList.addAll(playbackStateCompat.mCustomActions);
            }
            this.f475b = playbackStateCompat.mActiveItemId;
            this.k = playbackStateCompat.mExtras;
        }

        public final a a() {
            this.g = 3670015L;
            return this;
        }

        public final a a(int i, long j, float f, long j2) {
            this.f477d = i;
            this.e = j;
            this.j = j2;
            this.f = f;
            return this;
        }

        public final PlaybackStateCompat b() {
            return new PlaybackStateCompat(this.f477d, this.e, this.f474a, this.f, this.g, this.h, this.i, this.j, this.f476c, this.f475b, this.k);
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.mState = i;
        this.mPosition = j;
        this.mBufferedPosition = j2;
        this.mSpeed = f;
        this.mActions = j3;
        this.mErrorCode = i2;
        this.mErrorMessage = charSequence;
        this.mUpdateTime = j4;
        this.mCustomActions = new ArrayList(list);
        this.mActiveItemId = j5;
        this.mExtras = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.mState = parcel.readInt();
        this.mPosition = parcel.readLong();
        this.mSpeed = parcel.readFloat();
        this.mUpdateTime = parcel.readLong();
        this.mBufferedPosition = parcel.readLong();
        this.mActions = parcel.readLong();
        this.mErrorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mCustomActions = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = parcel.readLong();
        this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.mErrorCode = parcel.readInt();
    }

    public static PlaybackStateCompat fromPlaybackState(Object obj) {
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
                        arrayList.add(CustomAction.fromCustomAction(customAction));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = playbackState.getExtras();
                    MediaSessionCompat.a(bundle);
                }
                playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), bundle);
                playbackStateCompat.mStateFwk = playbackState;
            }
        }
        return playbackStateCompat;
    }

    public static int toKeyCode(long j) {
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

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final long getActions() {
        return this.mActions;
    }

    public final long getActiveQueueItemId() {
        return this.mActiveItemId;
    }

    public final long getBufferedPosition() {
        return this.mBufferedPosition;
    }

    public final long getCurrentPosition(Long l) {
        return Math.max(0L, this.mPosition + (this.mSpeed * ((float) (l != null ? l.longValue() : SystemClock.elapsedRealtime() - this.mUpdateTime))));
    }

    public final List<CustomAction> getCustomActions() {
        return this.mCustomActions;
    }

    public final int getErrorCode() {
        return this.mErrorCode;
    }

    public final CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final long getLastPositionUpdateTime() {
        return this.mUpdateTime;
    }

    public final float getPlaybackSpeed() {
        return this.mSpeed;
    }

    public final Object getPlaybackState() {
        if (this.mStateFwk == null && Build.VERSION.SDK_INT >= 21) {
            PlaybackState.Builder builder = new PlaybackState.Builder();
            builder.setState(this.mState, this.mPosition, this.mSpeed, this.mUpdateTime);
            builder.setBufferedPosition(this.mBufferedPosition);
            builder.setActions(this.mActions);
            builder.setErrorMessage(this.mErrorMessage);
            for (CustomAction customAction : this.mCustomActions) {
                builder.addCustomAction((PlaybackState.CustomAction) customAction.getCustomAction());
            }
            builder.setActiveQueueItemId(this.mActiveItemId);
            if (Build.VERSION.SDK_INT >= 22) {
                builder.setExtras(this.mExtras);
            }
            this.mStateFwk = builder.build();
        }
        return this.mStateFwk;
    }

    public final long getPosition() {
        return this.mPosition;
    }

    public final int getState() {
        return this.mState;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", error code=" + this.mErrorCode + ", error message=" + this.mErrorMessage + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mPosition);
        parcel.writeFloat(this.mSpeed);
        parcel.writeLong(this.mUpdateTime);
        parcel.writeLong(this.mBufferedPosition);
        parcel.writeLong(this.mActions);
        TextUtils.writeToParcel(this.mErrorMessage, parcel, i);
        parcel.writeTypedList(this.mCustomActions);
        parcel.writeLong(this.mActiveItemId);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mErrorCode);
    }
}
