package com.j256.ormlite.logger;

import com.j256.ormlite.logger.Log;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/Log4j2Log.class */
public class Log4j2Log implements Log {
    private final Logger logger;

    /* renamed from: com.j256.ormlite.logger.Log4j2Log$1 */
    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/Log4j2Log$1.class */
    static /* synthetic */ class C18141 {
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

    public Log4j2Log(String str) {
        this.logger = LogManager.getLogger(str);
    }

    @Override // com.j256.ormlite.logger.Log
    public boolean isLevelEnabled(Log.Level level) {
        switch (C18141.$SwitchMap$com$j256$ormlite$logger$Log$Level[level.ordinal()]) {
            case 1:
                return this.logger.isTraceEnabled();
            case 2:
                return this.logger.isDebugEnabled();
            case 3:
                return this.logger.isInfoEnabled();
            case 4:
                return this.logger.isWarnEnabled();
            case 5:
                return this.logger.isErrorEnabled();
            case 6:
                return this.logger.isFatalEnabled();
            default:
                return this.logger.isInfoEnabled();
        }
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str) {
        switch (C18141.$SwitchMap$com$j256$ormlite$logger$Log$Level[level.ordinal()]) {
            case 1:
                this.logger.trace(str);
                return;
            case 2:
                this.logger.debug(str);
                return;
            case 3:
                this.logger.info(str);
                return;
            case 4:
                this.logger.warn(str);
                return;
            case 5:
                this.logger.error(str);
                return;
            case 6:
                this.logger.fatal(str);
                return;
            default:
                this.logger.info(str);
                return;
        }
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str, Throwable th) {
        switch (C18141.$SwitchMap$com$j256$ormlite$logger$Log$Level[level.ordinal()]) {
            case 1:
                this.logger.trace(str, th);
                return;
            case 2:
                this.logger.debug(str, th);
                return;
            case 3:
                this.logger.info(str, th);
                return;
            case 4:
                this.logger.warn(str, th);
                return;
            case 5:
                this.logger.error(str, th);
                return;
            case 6:
                this.logger.fatal(str, th);
                return;
            default:
                this.logger.info(str, th);
                return;
        }
    }
}
