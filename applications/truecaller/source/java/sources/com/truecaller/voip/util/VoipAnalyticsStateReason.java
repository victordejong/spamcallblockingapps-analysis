package com.truecaller.voip.util;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b%\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&¨\u0006'"}, d2 = {"Lcom/truecaller/voip/util/VoipAnalyticsStateReason;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "GET_PHONE_FAILED", "WAKE_UP_SENT_FAILED", "WAKE_UP_TIMEOUT", "SEARCH_FAILED", "GET_VOIP_ID_FAILED", "GET_RTM_FAILED", "GET_RTC_FAILED", "JOIN_RTC_FAILED", "JOIN_RTM_FAILED", "JOIN_RTM_CHANNEL_FAILED", "RECEIVED_END", "PRESSED_END", "REMOTE_LEFT_CHANNEL", "POLL_FAILED", "INVITE_TIMEOUT", "RING_TIMEOUT", "GET_CALL_INFO_FAILED", "CREATE_RTM_CHANNEL_FAILED", "CREATE_CHANNEL_FAILED", "LAST_ON_CALL", "BLOCKED", "REJECTED", "BUSY", "CANCELLED", "ALL_MEMBERS_RINGING", "SET_RINGING_FAILED", "INVITED_STATE_NOT_RECEIVED", "SET_JOINED_FAILED", "DELETED_ON_REMOTE", "CONNECTION_LOST", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/util/VoipAnalyticsStateReason.class */
public enum VoipAnalyticsStateReason {
    GET_PHONE_FAILED("GetPhoneFailed"),
    WAKE_UP_SENT_FAILED("WakeUpSendFailed"),
    WAKE_UP_TIMEOUT("WakeUpTimeout"),
    SEARCH_FAILED("SearchFailed"),
    GET_VOIP_ID_FAILED("GetVoipIdFailed"),
    GET_RTM_FAILED("GetRtmFailed"),
    GET_RTC_FAILED("GetRtcFailed"),
    JOIN_RTC_FAILED("JoinRtcFailed"),
    JOIN_RTM_FAILED("JoinRtmFailed"),
    JOIN_RTM_CHANNEL_FAILED("JoinRtmChannelFailed"),
    RECEIVED_END("ReceivedEnd"),
    PRESSED_END("PressedEnd"),
    REMOTE_LEFT_CHANNEL("RemoteLeftChannel"),
    POLL_FAILED("PollFailed"),
    INVITE_TIMEOUT("InviteTimeout"),
    RING_TIMEOUT("RingTimeout"),
    GET_CALL_INFO_FAILED("GetCallInfoFailed"),
    CREATE_RTM_CHANNEL_FAILED("CreateRtmChannelFailed"),
    CREATE_CHANNEL_FAILED("CreateChannelFailed"),
    LAST_ON_CALL("LastOnCall"),
    BLOCKED("Blocked"),
    REJECTED("Rejected"),
    BUSY("Busy"),
    CANCELLED("Cancelled"),
    ALL_MEMBERS_RINGING("AllMembersRinging"),
    SET_RINGING_FAILED("SetRingingFailed"),
    INVITED_STATE_NOT_RECEIVED("InvitedStateNotReceived"),
    SET_JOINED_FAILED("SetJoinedFailed"),
    DELETED_ON_REMOTE("DeletedOnRemote"),
    CONNECTION_LOST("ConnectionLost");
    
    private final String value;

    VoipAnalyticsStateReason(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
