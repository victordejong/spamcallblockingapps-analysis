package com.zendesk.logger;

import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/zendesk/logger/LoggerHelper.class */
class LoggerHelper {
    private static final String DEFAULT_LOG_TAG = "Zendesk";
    private static final int MAXIMUM_ANDROID_LOG_TAG_LENGTH = 23;

    private LoggerHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getAndroidTag(String str) {
        if (StringUtils.isEmpty(str)) {
            return DEFAULT_LOG_TAG;
        }
        String str2 = str;
        if (str.length() > 23) {
            str2 = str.substring(0, 23);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char getLevelFromPriority(int i) {
        switch (i) {
            case 2:
                return 'V';
            case 3:
                return 'D';
            case 4:
                return 'I';
            case 5:
                return 'W';
            case 6:
                return 'E';
            case 7:
                return 'A';
            default:
                return 'I';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> splitLogMessage(String str, int i) {
        int min;
        ArrayList arrayList = new ArrayList();
        if (i < 1) {
            if (!StringUtils.hasLength(str)) {
                arrayList.add("");
                return arrayList;
            }
            arrayList.add(str);
            return arrayList;
        } else if (!StringUtils.hasLength(str)) {
            arrayList.add("");
            return arrayList;
        } else if (str.length() < i) {
            arrayList.add(str);
            return arrayList;
        } else {
            int i2 = 0;
            int length = str.length();
            while (i2 < length) {
                int indexOf = str.indexOf(StringUtils.LINE_SEPARATOR, i2);
                if (indexOf == -1) {
                    indexOf = length;
                }
                while (true) {
                    min = Math.min(indexOf, i2 + i);
                    arrayList.add(str.substring(i2, min));
                    if (min >= indexOf) {
                        break;
                    }
                    i2 = min;
                }
                i2 = min + 1;
            }
            return arrayList;
        }
    }
}
