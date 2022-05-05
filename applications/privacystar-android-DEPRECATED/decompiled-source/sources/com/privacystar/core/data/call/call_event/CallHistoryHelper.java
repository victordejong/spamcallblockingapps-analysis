package com.privacystar.core.data.call.call_event;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.providers.standard.CallLogDataProvider;
import com.privacystar.core.util.InformationUtil;
import java.util.Vector;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryHelper.class */
public class CallHistoryHelper {
    private static int NO_DIRECTION_TYPE = 10;
    private static CallHistoryHelper sInstance;
    private Context mContext;

    /* renamed from: com.privacystar.core.data.call.call_event.CallHistoryHelper$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryHelper$1.class */
    static /* synthetic */ class C15821 {

        /* renamed from: $SwitchMap$com$privacystar$core$data$call$call_event$CallHistoryHelper$CallDirection */
        static final /* synthetic */ int[] f246x242913a = new int[CallDirection.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f246x242913a[CallDirection.OUTGOING_RECEIVED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f246x242913a[CallDirection.OUTGOING_MISSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f246x242913a[CallDirection.INCOMING_MISSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f246x242913a[CallDirection.NO_DIRECTION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryHelper$CallDirection.class */
    public enum CallDirection implements Parcelable {
        INCOMING_MISSED(CallLogDataProvider.CALL_TYPE_MISSED),
        INCOMING_RECEIVED(CallLogDataProvider.CALL_TYPE_INCOMING),
        OUTGOING_MISSED(CallLogDataProvider.CALL_TYPE_MISSED),
        OUTGOING_RECEIVED(CallLogDataProvider.CALL_TYPE_OUTGOING),
        NO_DIRECTION("unknown");
        
        public static final Parcelable.Creator<CallDirection> CREATOR = new Parcelable.Creator<CallDirection>() { // from class: com.privacystar.core.data.call.call_event.CallHistoryHelper.CallDirection.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CallDirection createFromParcel(Parcel parcel) {
                int readInt = parcel.readInt();
                return (readInt < 0 || readInt >= CallDirection.values().length) ? CallDirection.NO_DIRECTION : CallDirection.values()[parcel.readInt()];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CallDirection[] newArray(int i) {
                return new CallDirection[i];
            }
        };
        private String value;

        CallDirection(String str) {
            this.value = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getValue() {
            return this.value;
        }

        public int toInt() {
            switch (C15821.f246x242913a[ordinal()]) {
                case 1:
                    return 2;
                case 2:
                case 3:
                    return 3;
                case 4:
                    return CallHistoryHelper.NO_DIRECTION_TYPE;
                default:
                    return 1;
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/CallHistoryHelper$HistoryFilter.class */
    public enum HistoryFilter {
        CALLS(1),
        MESSAGES(2),
        ALL(3);
        
        private final int value;

        HistoryFilter(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    private CallHistoryHelper(Context context) {
        this.mContext = context;
    }

    public static CallHistoryHelper getInstance() {
        CallHistoryHelper instance;
        synchronized (CallHistoryHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static CallHistoryHelper getInstance(Context context) {
        CallHistoryHelper callHistoryHelper;
        synchronized (CallHistoryHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new CallHistoryHelper(context.getApplicationContext());
                }
                callHistoryHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return callHistoryHelper;
    }

    public CallDirection getCallDirection(int i, boolean z) {
        if (!z) {
            return i == 2 ? CallDirection.OUTGOING_RECEIVED : CallDirection.INCOMING_RECEIVED;
        }
        switch (i) {
            case 1:
                return CallDirection.INCOMING_RECEIVED;
            case 2:
                return CallDirection.OUTGOING_RECEIVED;
            case 3:
                return CallDirection.INCOMING_MISSED;
            default:
                return CallDirection.INCOMING_MISSED;
        }
    }

    public Vector<LogItem> getCallHistory(Caller caller) {
        return getCallHistory(caller.getNumber());
    }

    public Vector<LogItem> getCallHistory(Caller caller, HistoryFilter historyFilter) {
        return getCallHistory(caller.getNumber(), historyFilter);
    }

    public Vector<LogItem> getCallHistory(Caller caller, HistoryFilter historyFilter, int i) {
        return getCallHistory(caller.getNumber(), historyFilter, i);
    }

    public Vector<LogItem> getCallHistory(String str) {
        return getCallHistory(str, HistoryFilter.ALL);
    }

    public Vector<LogItem> getCallHistory(String str, int i) {
        return getCallHistory(str, HistoryFilter.ALL, i);
    }

    public Vector<LogItem> getCallHistory(String str, HistoryFilter historyFilter) {
        return getCallHistory(str, historyFilter, 0);
    }

    public Vector<LogItem> getCallHistory(String str, HistoryFilter historyFilter, int i) {
        return InformationUtil.getCallHistory(str, historyFilter.getValue(), i, 0, PSApplication.context());
    }
}
