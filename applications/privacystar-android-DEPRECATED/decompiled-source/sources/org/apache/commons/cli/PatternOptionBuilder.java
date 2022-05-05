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
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        Class cls5;
        Class cls6;
        Class cls7;
        Class cls8;
        Class cls9;
        if (class$java$lang$String == null) {
            cls = class$("java.lang.String");
            class$java$lang$String = cls;
        } else {
            cls = class$java$lang$String;
        }
        STRING_VALUE = cls;
        if (class$java$lang$Object == null) {
            cls2 = class$("java.lang.Object");
            class$java$lang$Object = cls2;
        } else {
            cls2 = class$java$lang$Object;
        }
        OBJECT_VALUE = cls2;
        if (class$java$lang$Number == null) {
            cls3 = class$("java.lang.Number");
            class$java$lang$Number = cls3;
        } else {
            cls3 = class$java$lang$Number;
        }
        NUMBER_VALUE = cls3;
        if (class$java$util$Date == null) {
            cls4 = class$("java.util.Date");
            class$java$util$Date = cls4;
        } else {
            cls4 = class$java$util$Date;
        }
        DATE_VALUE = cls4;
        if (class$java$lang$Class == null) {
            cls5 = class$("java.lang.Class");
            class$java$lang$Class = cls5;
        } else {
            cls5 = class$java$lang$Class;
        }
        CLASS_VALUE = cls5;
        if (class$java$io$FileInputStream == null) {
            cls6 = class$("java.io.FileInputStream");
            class$java$io$FileInputStream = cls6;
        } else {
            cls6 = class$java$io$FileInputStream;
        }
        EXISTING_FILE_VALUE = cls6;
        if (class$java$io$File == null) {
            cls7 = class$("java.io.File");
            class$java$io$File = cls7;
        } else {
            cls7 = class$java$io$File;
        }
        FILE_VALUE = cls7;
        if (array$Ljava$io$File == null) {
            cls8 = class$("[Ljava.io.File;");
            array$Ljava$io$File = cls8;
        } else {
            cls8 = array$Ljava$io$File;
        }
        FILES_VALUE = cls8;
        if (class$java$net$URL == null) {
            cls9 = class$("java.net.URL");
            class$java$net$URL = cls9;
        } else {
            cls9 = class$java$net$URL;
        }
        URL_VALUE = cls9;
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
        switch (c) {
            case '*':
                return FILES_VALUE;
            case '+':
                return CLASS_VALUE;
            default:
                return null;
        }
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
                obj = obj;
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
