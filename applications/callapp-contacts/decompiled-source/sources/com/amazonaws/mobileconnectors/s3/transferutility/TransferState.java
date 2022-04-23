package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferState.class */
public enum TransferState {
    WAITING,
    IN_PROGRESS,
    PAUSED,
    RESUMED_WAITING,
    COMPLETED,
    CANCELED,
    FAILED,
    WAITING_FOR_NETWORK,
    PART_COMPLETED,
    PENDING_CANCEL,
    PENDING_PAUSE,
    PENDING_NETWORK_DISCONNECT,
    UNKNOWN;
    
    private static final Log LOGGER;
    private static final Map<String, TransferState> MAP = new HashMap();

    static {
        TransferState[] values;
        for (TransferState transferState : values()) {
            MAP.put(transferState.toString(), transferState);
        }
        LOGGER = LogFactory.a(TransferState.class);
    }

    public static TransferState getState(String str) {
        Map<String, TransferState> map = MAP;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        Log log = LOGGER;
        log.e("Unknown state " + str + " transfer will be have state set to UNKNOWN.");
        return UNKNOWN;
    }
}
