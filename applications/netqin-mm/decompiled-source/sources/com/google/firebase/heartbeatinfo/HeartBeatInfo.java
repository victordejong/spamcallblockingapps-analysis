package com.google.firebase.heartbeatinfo;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo.class */
public interface HeartBeatInfo {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat.class */
    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        public final int code;

        HeartBeat(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }
    }

    /* renamed from: a */
    HeartBeat mo7360a(String str);
}
