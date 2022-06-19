package com.j256.ormlite.logger;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/Log.class */
public interface Log {

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/Log$Level.class */
    public enum Level {
        TRACE(1),
        DEBUG(2),
        INFO(3),
        WARNING(4),
        ERROR(5),
        FATAL(6),
        OFF(7);
        
        private int level;

        Level(int i) {
            this.level = i;
        }

        public boolean isEnabled(Level level) {
            Level level2 = OFF;
            return (this == level2 || level == level2 || this.level > level.level) ? false : true;
        }
    }

    boolean isLevelEnabled(Level level);

    void log(Level level, String str);

    void log(Level level, String str, Throwable th);
}
