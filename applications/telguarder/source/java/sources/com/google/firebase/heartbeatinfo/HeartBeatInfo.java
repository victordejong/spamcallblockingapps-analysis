package com.google.firebase.heartbeatinfo;

import com.google.android.gms.tasks.Task;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo.class */
public interface HeartBeatInfo {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat.class */
    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        private final int code;

        HeartBeat(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }
    }

    Task<List<HeartBeatResult>> getAndClearStoredHeartBeatInfo();

    HeartBeat getHeartBeatCode(String str);

    Task<Void> storeHeartBeatInfo(String str);
}
