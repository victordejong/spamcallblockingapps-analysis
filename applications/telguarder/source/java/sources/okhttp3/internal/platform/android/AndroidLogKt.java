package okhttp3.internal.platform.android;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u000e\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010��\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, m400d2 = {"androidLevel", "", "Ljava/util/logging/LogRecord;", "getAndroidLevel", "(Ljava/util/logging/LogRecord;)I", "okhttp"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/internal/platform/android/AndroidLogKt.class */
public final class AndroidLogKt {
    public static final int getAndroidLevel(LogRecord logRecord) {
        return logRecord.getLevel().intValue() > Level.INFO.intValue() ? 5 : logRecord.getLevel().intValue() == Level.INFO.intValue() ? 4 : 3;
    }
}
