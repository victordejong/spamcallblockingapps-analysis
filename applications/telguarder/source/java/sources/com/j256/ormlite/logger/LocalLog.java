package com.j256.ormlite.logger;

import com.j256.ormlite.logger.Log;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/LocalLog.class */
public class LocalLog implements Log {
    public static final String LOCAL_LOG_FILE_PROPERTY = "com.j256.ormlite.logger.file";
    public static final String LOCAL_LOG_LEVEL_PROPERTY = "com.j256.ormlite.logger.level";
    private static PrintStream printStream;
    private final String className;
    private final Log.Level level;
    private static final Log.Level DEFAULT_LEVEL = Log.Level.DEBUG;
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
    public static final String LOCAL_LOG_PROPERTIES_FILE = "/ormliteLocalLog.properties";
    private static final List<PatternLevel> classLevels = readLevelResourceFile(LocalLog.class.getResourceAsStream(LOCAL_LOG_PROPERTIES_FILE));

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/logger/LocalLog$PatternLevel.class */
    public static class PatternLevel {
        Log.Level level;
        Pattern pattern;

        public PatternLevel(Pattern pattern, Log.Level level) {
            this.pattern = pattern;
            this.level = level;
        }
    }

    static {
        openLogFile(System.getProperty(LOCAL_LOG_FILE_PROPERTY));
    }

    public LocalLog(String str) {
        this.className = LoggerFactory.getSimpleClassName(str);
        List<PatternLevel> list = classLevels;
        Log.Level level = null;
        Log.Level level2 = null;
        if (list != null) {
            Iterator<PatternLevel> it = list.iterator();
            while (true) {
                level = level2;
                if (!it.hasNext()) {
                    break;
                }
                PatternLevel next = it.next();
                if (next.pattern.matcher(str).matches() && (level2 == null || next.level.ordinal() < level2.ordinal())) {
                    level2 = next.level;
                }
            }
        }
        Log.Level level3 = level;
        if (level == null) {
            String property = System.getProperty(LOCAL_LOG_LEVEL_PROPERTY);
            if (property == null) {
                level3 = DEFAULT_LEVEL;
            } else {
                try {
                    level3 = Log.Level.valueOf(property.toUpperCase());
                } catch (IllegalArgumentException e) {
                    try {
                        level3 = Log.Level.valueOf(property.toUpperCase(Locale.ENGLISH));
                    } catch (IllegalArgumentException e2) {
                        throw new IllegalArgumentException("Level '" + property + "' was not found", e2);
                    }
                }
            }
        }
        this.level = level3;
    }

    private static List<PatternLevel> configureClassLevels(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayList arrayList = new ArrayList();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return arrayList;
            }
            if (readLine.length() != 0 && readLine.charAt(0) != '#') {
                String[] split = readLine.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (split.length != 2) {
                    PrintStream printStream2 = System.err;
                    printStream2.println("Line is not in the format of 'pattern = level': " + readLine);
                } else {
                    try {
                        arrayList.add(new PatternLevel(Pattern.compile(split[0].trim()), Log.Level.valueOf(split[1].trim())));
                    } catch (IllegalArgumentException e) {
                        PrintStream printStream3 = System.err;
                        printStream3.println("Level '" + split[1] + "' was not found");
                    }
                }
            }
        }
    }

    public static void openLogFile(String str) {
        if (str == null) {
            printStream = System.out;
            return;
        }
        try {
            printStream = new PrintStream(new File(str));
        } catch (FileNotFoundException e) {
            throw new IllegalArgumentException("Log file " + str + " was not found", e);
        }
    }

    private void printMessage(Log.Level level, String str, Throwable th) {
        if (!isLevelEnabled(level)) {
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append(((DateFormat) DATE_FORMAT.clone()).format(new Date()));
        sb.append(" [");
        sb.append(level.name());
        sb.append("] ");
        sb.append(this.className);
        sb.append(' ');
        sb.append(str);
        printStream.println(sb.toString());
        if (th == null) {
            return;
        }
        th.printStackTrace(printStream);
    }

    static List<PatternLevel> readLevelResourceFile(InputStream inputStream) {
        List<PatternLevel> list;
        try {
            if (inputStream != null) {
                try {
                    List<PatternLevel> configureClassLevels = configureClassLevels(inputStream);
                    IOUtils.closeQuietly(inputStream);
                    list = configureClassLevels;
                } catch (IOException e) {
                    System.err.println("IO exception reading the log properties file '/ormliteLocalLog.properties': " + e);
                    IOUtils.closeQuietly(inputStream);
                }
                return list;
            }
            list = null;
            return list;
        } catch (Throwable th) {
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }

    void flush() {
        printStream.flush();
    }

    @Override // com.j256.ormlite.logger.Log
    public boolean isLevelEnabled(Log.Level level) {
        return this.level.isEnabled(level);
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str) {
        printMessage(level, str, null);
    }

    @Override // com.j256.ormlite.logger.Log
    public void log(Log.Level level, String str, Throwable th) {
        printMessage(level, str, th);
    }
}
