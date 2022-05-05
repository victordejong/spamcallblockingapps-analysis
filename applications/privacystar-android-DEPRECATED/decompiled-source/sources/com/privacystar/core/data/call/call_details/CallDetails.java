package com.privacystar.core.data.call.call_details;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.call.call_event.LogItemHelper;
import com.privacystar.core.data.call.caller.Caller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_details/CallDetails.class */
public class CallDetails implements Parcelable {
    public static final Parcelable.Creator<CallDetails> CREATOR = new Parcelable.Creator<CallDetails>() { // from class: com.privacystar.core.data.call.call_details.CallDetails.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallDetails createFromParcel(Parcel parcel) {
            return new CallDetails(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallDetails[] newArray(int i) {
            return new CallDetails[i];
        }
    };
    private static String parcelKey = "call_details";
    private Caller caller;
    private boolean unknownGrouped = false;
    private List<CallEvent> callEvents = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_details/CallDetails$DateComparator.class */
    public static class DateComparator implements Comparator<CallDetails> {
        public int compare(CallDetails callDetails, CallDetails callDetails2) {
            int i = 1;
            boolean z = callDetails.getMostRecentEvent().getDate() == callDetails2.getMostRecentEvent().getDate();
            if (callDetails.caller.getNumber().equals(callDetails2.caller.getNumber()) && z) {
                return 0;
            }
            if (callDetails.getMostRecentEvent().getDate() > callDetails2.getMostRecentEvent().getDate()) {
                i = -1;
            }
            return i;
        }
    }

    public CallDetails(Parcel parcel) {
        this.caller = Caller.CREATOR.createFromParcel(parcel);
        parcel.readTypedList(this.callEvents, CallEvent.CREATOR);
    }

    public CallDetails(Caller caller) {
        this.caller = caller;
    }

    public CallDetails(Caller caller, CallEvent callEvent) {
        this.caller = caller;
        this.callEvents.add(callEvent);
    }

    public static String getParcelKey() {
        return parcelKey;
    }

    public boolean containsBlockedEvent() {
        if (this.callEvents == null) {
            return false;
        }
        for (CallEvent callEvent : this.callEvents) {
            if (callEvent.wasBlocked()) {
                return true;
            }
        }
        return false;
    }

    public boolean containsOnlySms() {
        return CallDetailsHelper.containsOnlySms(this.callEvents);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<CallEvent> getCallEvents() {
        return this.callEvents;
    }

    public Caller getCaller() {
        return this.caller;
    }

    @NonNull
    public CallEvent getMostRecentEvent() {
        if (this.callEvents != null && !this.callEvents.isEmpty()) {
            return this.callEvents.get(0);
        }
        throw new UnsupportedOperationException();
    }

    public boolean getUnknownGrouped() {
        return this.unknownGrouped;
    }

    public void setToMostRecentEvent() {
        LogItem mostRecentEvent = LogItemHelper.getInstance().getMostRecentEvent(this.caller);
        this.callEvents.clear();
        this.callEvents.add(new CallEvent(mostRecentEvent));
    }

    public void setUnknownGrouped(boolean z) {
        this.unknownGrouped = z;
    }

    public String toString() {
        return "CallDetails Object {\n\tCaller: " + this.caller + "\tCall Event(s): " + Arrays.toString(this.callEvents.toArray());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.caller, i);
        parcel.writeTypedList(this.callEvents);
    }
}
