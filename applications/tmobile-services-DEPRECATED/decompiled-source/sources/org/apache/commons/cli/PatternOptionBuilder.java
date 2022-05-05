package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/PatternOptionBuilder.class */
public class PatternOptionBuilder {
    public static final Class CLASS_VALUE;
    public static final Class DATE_VALUE;
    public static final Class EXISTING_FILE_VALUE;
    public static final Class FILES_VALUE;
    public static final Class FILE_VALUE;
    public static final Class NUMBER_VALUE;
    public static final Class OBJECT_VALUE;
    public static final Class STRING_VALUE;
    public static final Class URL_VALUE;
    static /* synthetic */ Class array$Ljava$io$File;
    static /* synthetic */ Class class$java$io$File;
    static /* synthetic */ Class class$java$io$FileInputStream;
    static /* synthetic */ Class class$java$lang$Class;
    static /* synthetic */ Class class$java$lang$Number;
    static /* synthetic */ Class class$java$lang$Object;
    static /* synthetic */ Class class$java$lang$String;
    static /* synthetic */ Class class$java$net$URL;
    static /* synthetic */ Class class$java$util$Date;

    static {
        Class cls = class$java$lang$String;
        Class cls2 = cls;
        if (cls == null) {
            cls2 = class$("java.lang.String");
            class$java$lang$String = cls2;
        }
        STRING_VALUE = cls2;
        Class cls3 = class$java$lang$Object;
        Class cls4 = cls3;
        if (cls3 == null) {
            cls4 = class$("java.lang.Object");
            class$java$lang$Object = cls4;
        }
        OBJECT_VALUE = cls4;
        Class cls5 = class$java$lang$Number;
        Class cls6 = cls5;
        if (cls5 == null) {
            cls6 = class$("java.lang.Number");
            class$java$lang$Number = cls6;
        }
        NUMBER_VALUE = cls6;
        Class cls7 = class$java$util$Date;
        Class cls8 = cls7;
        if (cls7 == null) {
            cls8 = class$("java.util.Date");
            class$java$util$Date = cls8;
        }
        DATE_VALUE = cls8;
        Class cls9 = class$java$lang$Class;
        Class cls10 = cls9;
        if (cls9 == null) {
            cls10 = class$("java.lang.Class");
            class$java$lang$Class = cls10;
        }
        CLASS_VALUE = cls10;
        Class cls11 = class$java$io$FileInputStream;
        Class cls12 = cls11;
        if (cls11 == null) {
            cls12 = class$("java.io.FileInputStream");
            class$java$io$FileInputStream = cls12;
        }
        EXISTING_FILE_VALUE = cls12;
        Class cls13 = class$java$io$File;
        Class cls14 = cls13;
        if (cls13 == null) {
            cls14 = class$("java.io.File");
            class$java$io$File = cls14;
        }
        FILE_VALUE = cls14;
        Class cls15 = array$Ljava$io$File;
        Class cls16 = cls15;
        if (cls15 == null) {
            cls16 = class$("[Ljava.io.File;");
            array$Ljava$io$File = cls16;
        }
        FILES_VALUE = cls16;
        Class cls17 = class$java$net$URL;
        Class cls18 = cls17;
        if (cls17 == null) {
            cls18 = class$("java.net.URL");
            class$java$net$URL = cls18;
        }
        URL_VALUE = cls18;
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static Object getValueClass(char c) {
        if (c == '#') {
            return DATE_VALUE;
        }
        if (c == '%') {
            return NUMBER_VALUE;
        }
        if (c == '/') {
            return URL_VALUE;
        }
        if (c == ':') {
            return STRING_VALUE;
        }
        if (c == '<') {
            return EXISTING_FILE_VALUE;
        }
        if (c == '>') {
            return FILE_VALUE;
        }
        if (c == '@') {
            return OBJECT_VALUE;
        }
        if (c == '*') {
            return FILES_VALUE;
        }
        if (c != '+') {
            return null;
        }
        return CLASS_VALUE;
    }

    public static boolean isValueCode(char c) {
        return c == '@' || c == ':' || c == '%' || c == '+' || c == '#' || c == '<' || c == '>' || c == '*' || c == '/' || c == '!';
    }

    public static Options parsePattern(String str) {
        Options options = new Options();
        boolean z = false;
        Object obj = null;
        int i = 0;
        char c = ' ';
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            if (i >= str.length()) {
                break;
            }
            char charAt = str.charAt(i);
            if (!isValueCode(charAt)) {
                obj = obj;
                z2 = z2;
                if (c != ' ') {
                    if (obj == null) {
                        z3 = false;
                    }
                    OptionBuilder.hasArg(z3);
                    OptionBuilder.isRequired(z2);
                    OptionBuilder.withType(obj);
                    options.addOption(OptionBuilder.create(c));
                    obj = null;
                    z2 = false;
                }
                c = charAt;
            } else if (charAt == '!') {
                z2 = true;
                c = c;
            } else {
                obj = getValueClass(charAt);
                c = c;
            }
            i++;
        }
        if (c != ' ') {
            if (obj != null) {
                z = true;
            }
            OptionBuilder.hasArg(z);
            OptionBuilder.isRequired(z2);
            OptionBuilder.withType(obj);
            options.addOption(OptionBuilder.create(c));
        }
        return options;
    }
}
