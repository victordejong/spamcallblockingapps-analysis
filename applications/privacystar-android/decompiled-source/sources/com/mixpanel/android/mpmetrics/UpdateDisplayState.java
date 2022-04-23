package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.mixpanel.android.util.MPLog;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/UpdateDisplayState.class */
public class UpdateDisplayState implements Parcelable {
    private static final String DISPLAYSTATE_BUNDLE_KEY = "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISPLAYSTATE_BUNDLE_KEY";
    private static final String DISTINCT_ID_BUNDLE_KEY = "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISTINCT_ID_BUNDLE_KEY";
    private static final String LOGTAG = "MixpanelAPI.UpDisplSt";
    private static final long MAX_LOCK_TIME_MILLIS = 43200000;
    private static final String TOKEN_BUNDLE_KEY = "com.mixpanel.android.mpmetrics.UpdateDisplayState.TOKEN_BUNDLE_KEY";
    private static int sNextIntentId = 0;
    private static int sShowingIntentId = -1;
    private static long sUpdateDisplayLockMillis = -1;
    private static UpdateDisplayState sUpdateDisplayState;
    private final DisplayState mDisplayState;
    private final String mDistinctId;
    private final String mToken;
    public static final Parcelable.Creator<UpdateDisplayState> CREATOR = new Parcelable.Creator<UpdateDisplayState>() { // from class: com.mixpanel.android.mpmetrics.UpdateDisplayState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateDisplayState createFromParcel(Parcel parcel) {
            Bundle bundle = new Bundle(UpdateDisplayState.class.getClassLoader());
            bundle.readFromParcel(parcel);
            return new UpdateDisplayState(bundle);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateDisplayState[] newArray(int i) {
            return new UpdateDisplayState[i];
        }
    };
    private static final ReentrantLock sUpdateDisplayLock = new ReentrantLock();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap.class */
    public static class AnswerMap implements Parcelable {
        public static final Parcelable.Creator<AnswerMap> CREATOR = new Parcelable.Creator<AnswerMap>() { // from class: com.mixpanel.android.mpmetrics.UpdateDisplayState.AnswerMap.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AnswerMap createFromParcel(Parcel parcel) {
                Bundle bundle = new Bundle(AnswerMap.class.getClassLoader());
                AnswerMap answerMap = new AnswerMap();
                bundle.readFromParcel(parcel);
                for (String str : bundle.keySet()) {
                    answerMap.put(Integer.valueOf(str), bundle.getString(str));
                }
                return answerMap;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AnswerMap[] newArray(int i) {
                return new AnswerMap[i];
            }
        };
        private final HashMap<Integer, String> mMap = new HashMap<>();

        public boolean contentEquals(AnswerMap answerMap) {
            return this.mMap.equals(answerMap.mMap);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String get(Integer num) {
            return this.mMap.get(num);
        }

        public void put(Integer num, String str) {
            this.mMap.put(num, str);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            Bundle bundle = new Bundle();
            for (Map.Entry<Integer, String> entry : this.mMap.entrySet()) {
                bundle.putString(Integer.toString(entry.getKey().intValue()), entry.getValue());
            }
            parcel.writeBundle(bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState.class */
    public static abstract class DisplayState implements Parcelable {
        public static final Parcelable.Creator<DisplayState> CREATOR = new Parcelable.Creator<DisplayState>() { // from class: com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DisplayState createFromParcel(Parcel parcel) {
                Bundle bundle = new Bundle(DisplayState.class.getClassLoader());
                bundle.readFromParcel(parcel);
                String string = bundle.getString(DisplayState.STATE_TYPE_KEY);
                Bundle bundle2 = bundle.getBundle(DisplayState.STATE_IMPL_KEY);
                if (InAppNotificationState.TYPE.equals(string)) {
                    return new InAppNotificationState(bundle2);
                }
                throw new RuntimeException("Unrecognized display state type " + string);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DisplayState[] newArray(int i) {
                return new DisplayState[i];
            }
        };
        public static final String STATE_IMPL_KEY = "com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.STATE_IMPL_KEY";
        public static final String STATE_TYPE_KEY = "com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.STATE_TYPE_KEY";

        /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState.class */
        public static final class InAppNotificationState extends DisplayState {
            public static final Parcelable.Creator<InAppNotificationState> CREATOR = new Parcelable.Creator<InAppNotificationState>() { // from class: com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public InAppNotificationState createFromParcel(Parcel parcel) {
                    Bundle bundle = new Bundle(InAppNotificationState.class.getClassLoader());
                    bundle.readFromParcel(parcel);
                    return new InAppNotificationState(bundle);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public InAppNotificationState[] newArray(int i) {
                    return new InAppNotificationState[i];
                }
            };
            private static String HIGHLIGHT_KEY = "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.HIGHLIGHT_KEY";
            private static String INAPP_KEY = "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.INAPP_KEY";
            public static final String TYPE = "InAppNotificationState";
            private final int mHighlightColor;
            private final InAppNotification mInAppNotification;

            private InAppNotificationState(Bundle bundle) {
                super();
                this.mInAppNotification = (InAppNotification) bundle.getParcelable(INAPP_KEY);
                this.mHighlightColor = bundle.getInt(HIGHLIGHT_KEY);
            }

            public InAppNotificationState(InAppNotification inAppNotification, int i) {
                super();
                this.mInAppNotification = inAppNotification;
                this.mHighlightColor = i;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getHighlightColor() {
                return this.mHighlightColor;
            }

            public InAppNotification getInAppNotification() {
                return this.mInAppNotification;
            }

            @Override // com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState
            public String getType() {
                return TYPE;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(INAPP_KEY, this.mInAppNotification);
                bundle.putInt(HIGHLIGHT_KEY, this.mHighlightColor);
                parcel.writeBundle(bundle);
            }
        }

        private DisplayState() {
        }

        public abstract String getType();
    }

    private UpdateDisplayState(Bundle bundle) {
        this.mDistinctId = bundle.getString(DISTINCT_ID_BUNDLE_KEY);
        this.mToken = bundle.getString(TOKEN_BUNDLE_KEY);
        this.mDisplayState = (DisplayState) bundle.getParcelable(DISPLAYSTATE_BUNDLE_KEY);
    }

    UpdateDisplayState(DisplayState displayState, String str, String str2) {
        this.mDistinctId = str;
        this.mToken = str2;
        this.mDisplayState = displayState;
    }

    /* JADX WARN: Finally extract failed */
    public static UpdateDisplayState claimDisplayState(int i) {
        sUpdateDisplayLock.lock();
        try {
            if (sShowingIntentId > 0 && sShowingIntentId != i) {
                sUpdateDisplayLock.unlock();
                return null;
            } else if (sUpdateDisplayState == null) {
                sUpdateDisplayLock.unlock();
                return null;
            } else {
                sUpdateDisplayLockMillis = System.currentTimeMillis();
                sShowingIntentId = i;
                UpdateDisplayState updateDisplayState = sUpdateDisplayState;
                sUpdateDisplayLock.unlock();
                return updateDisplayState;
            }
        } catch (Throwable th) {
            sUpdateDisplayLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ReentrantLock getLockObject() {
        return sUpdateDisplayLock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasCurrentProposal() {
        if (!sUpdateDisplayLock.isHeldByCurrentThread()) {
            throw new AssertionError();
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = sUpdateDisplayLockMillis;
        if (sNextIntentId > 0 && currentTimeMillis - j > MAX_LOCK_TIME_MILLIS) {
            MPLog.m309i(LOGTAG, "UpdateDisplayState set long, long ago, without showing. Update state will be cleared.");
            sUpdateDisplayState = null;
        }
        return sUpdateDisplayState != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int proposeDisplay(DisplayState displayState, String str, String str2) {
        int i;
        if (!sUpdateDisplayLock.isHeldByCurrentThread()) {
            throw new AssertionError();
        }
        if (!hasCurrentProposal()) {
            sUpdateDisplayLockMillis = System.currentTimeMillis();
            sUpdateDisplayState = new UpdateDisplayState(displayState, str, str2);
            sNextIntentId++;
            i = sNextIntentId;
        } else {
            MPLog.m307v(LOGTAG, "Already showing (or cooking) a Mixpanel update, declining to show another.");
            i = -1;
        }
        return i;
    }

    public static void releaseDisplayState(int i) {
        sUpdateDisplayLock.lock();
        try {
            if (i == sShowingIntentId) {
                sShowingIntentId = -1;
                sUpdateDisplayState = null;
            }
            sUpdateDisplayLock.unlock();
        } catch (Throwable th) {
            sUpdateDisplayLock.unlock();
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DisplayState getDisplayState() {
        return this.mDisplayState;
    }

    public String getDistinctId() {
        return this.mDistinctId;
    }

    public String getToken() {
        return this.mToken;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putString(DISTINCT_ID_BUNDLE_KEY, this.mDistinctId);
        bundle.putString(TOKEN_BUNDLE_KEY, this.mToken);
        bundle.putParcelable(DISPLAYSTATE_BUNDLE_KEY, this.mDisplayState);
        parcel.writeBundle(bundle);
    }
}
