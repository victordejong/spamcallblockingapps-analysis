package com.aotter.net.trek.util;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
/* renamed from: com.aotter.net.trek.util.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/c.class */
public final class C1766c extends Handler {

    /* renamed from: a */
    public static final Map<Level, Integer> f1599a = new HashMap(7);

    static {
        f1599a.put(Level.FINEST, 2);
        f1599a.put(Level.FINER, 2);
        f1599a.put(Level.FINE, 2);
        f1599a.put(Level.CONFIG, 3);
        f1599a.put(Level.INFO, 4);
        f1599a.put(Level.WARNING, 5);
        f1599a.put(Level.SEVERE, 6);
    }

    public C1766c() {
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    @Override // java.util.logging.Handler
    @SuppressLint({"LogTagMismatch"})
    public void publish(LogRecord logRecord) {
        if (isLoggable(logRecord)) {
            int intValue = f1599a.containsKey(logRecord.getLevel()) ? f1599a.get(logRecord.getLevel()).intValue() : 2;
            String str = logRecord.getMessage() + "\n";
            Throwable thrown = logRecord.getThrown();
            String str2 = str;
            if (thrown != null) {
                str2 = str + Log.getStackTraceString(thrown);
            }
            Log.println(intValue, "AotterTrek", str2);
        }
    }
}
