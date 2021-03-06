package com.callapp.contacts.util;

import com.callapp.contacts.framework.log.FileLogger;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallAppDebugUtils.class */
public class CallAppDebugUtils {
    /* renamed from: a */
    public static void m27583a(FileLogger fileLogger) {
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            String str = entry.getKey() + StringUtils.SPACE + entry.getKey().getState();
            CLog.m27611a(CallAppDebugUtils.class, str);
            if (fileLogger != null) {
                fileLogger.m28978a(str);
            }
            for (StackTraceElement stackTraceElement : entry.getValue()) {
                String concat = "\tat ".concat(String.valueOf(stackTraceElement));
                CLog.m27611a(CallAppDebugUtils.class, concat);
                if (fileLogger != null) {
                    fileLogger.m28978a(concat);
                }
            }
        }
        if (fileLogger != null) {
            fileLogger.m28980a();
        }
    }
}
