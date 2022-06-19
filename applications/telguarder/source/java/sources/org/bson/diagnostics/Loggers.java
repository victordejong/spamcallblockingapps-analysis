package org.bson.diagnostics;

import org.bson.assertions.Assertions;
/* loaded from: classes-dex2jar.jar:org/bson/diagnostics/Loggers.class */
public final class Loggers {
    public static final String PREFIX = "org.bson";
    private static final boolean USE_SLF4J = shouldUseSLF4J();

    private Loggers() {
    }

    public static Logger getLogger(String str) {
        Assertions.notNull("suffix", str);
        if (str.startsWith(".") || str.endsWith(".")) {
            throw new IllegalArgumentException("The suffix can not start or end with a '.'");
        }
        String str2 = "org.bson." + str;
        return USE_SLF4J ? new SLF4JLogger(str2) : new JULLogger(str2);
    }

    private static boolean shouldUseSLF4J() {
        try {
            Class.forName("org.slf4j.Logger");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
