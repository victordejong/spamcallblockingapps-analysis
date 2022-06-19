package com.j256.ormlite.logger;

import com.j256.ormlite.logger.Log;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/JavaUtilLog.class */
public class JavaUtilLog implements Log {
    private final Logger logger;

    /* renamed from: com.j256.ormlite.logger.JavaUtilLog$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/JavaUtilLog$1.class */
    public static /* synthetic */ class C18131 {
        static final /* synthetic */ int[] $SwitchMap$com$j256$ormlite$logger$Log$Level;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[Log.Level.values().length];
            $SwitchMap$com$j256$ormlite$logger$Log$Level = iArr;
            try {
                iArr[Log.Level.TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Log$Level[Log.Level.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Log$Level[Log.Level.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Log$Level[Log.Level.WARNING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Log$Level[Log.Level.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$j256$ormlite$logger$Log$Level[Log.Level.FATAL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public JavaUtilLog(String str) {
        this.logger = Logger.getLogger(str);
    }

    private Level levelToJavaLevel(Log.Level level) {
        switch (C18131.$SwitchMap$com$j256$ormlite$logger$Log$Level[level.ordinal()]) {
            case 1:
                return Level.FINER;
            case 2:
                return Level.FINE;
            case 3:
                return Level.INFO;
            case 4:
                return Level.WARNING;
            case 5:
                return Level.SEVERE;
            case 6:
                return Level.SEVERE;
            default:
                return Level.INFO;
        }
    }

    @Override // com.j256.ormlite.logger.Log
    public boolean isLevelEnabled(Log.Level level) {
        return this.logger.isLoggable(levelToJavaLevel(level));
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str) {
        this.logger.log(levelToJavaLevel(level), str);
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str, Throwable th) {
        this.logger.log(levelToJavaLevel(level), str, th);
    }
}
