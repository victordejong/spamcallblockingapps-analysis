package io.agora.rtc;

import android.content.Context;
import io.agora.rtc.Constants;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/RtcEngineConfig.class */
public class RtcEngineConfig {
    public Context mContext = null;
    public IRtcEngineEventHandler mEventHandler = null;
    public String mAppId = "";
    public int mAreaCode = -1;
    public LogConfig mLogConfig = new LogConfig();

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/RtcEngineConfig$AreaCode.class */
    public static class AreaCode {
        public static final int AREA_CODE_AS = 8;
        public static final int AREA_CODE_CN = 1;
        public static final int AREA_CODE_EU = 4;
        public static final int AREA_CODE_GLOB = -1;
        public static final int AREA_CODE_IN = 32;
        public static final int AREA_CODE_JP = 16;
        public static final int AREA_CODE_NA = 2;
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/RtcEngineConfig$LogConfig.class */
    public static class LogConfig {
        public String filePath = null;
        public int fileSize = -1;
        public int level = Constants.LogLevel.getValue(Constants.LogLevel.LOG_LEVEL_INFO);
    }
}
