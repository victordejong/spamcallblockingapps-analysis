package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/OptionBuilder.class */
public final class OptionBuilder {
    private static String argName;
    private static String description;
    private static OptionBuilder instance = new OptionBuilder();
    private static String longopt;
    private static int numberOfArgs = -1;
    private static boolean optionalArg;
    private static boolean required;
    private static Object type;
    private static char valuesep;

    private OptionBuilder() {
    }

    public static Option create() throws IllegalArgumentException {
        if (longopt != null) {
            return create((String) null);
        }
        reset();
        throw new IllegalArgumentException("must specify longopt");
    }

    public static Option create(char c) throws IllegalArgumentException {
        return create(String.valueOf(c));
    }

    public static Option create(String str) throws IllegalArgumentException {
        try {
            Option option = new Option(str, description);
            option.setLongOpt(longopt);
            option.setRequired(required);
            option.setOptionalArg(optionalArg);
            option.setArgs(numberOfArgs);
            option.setType(type);
            option.setValueSeparator(valuesep);
            option.setArgName(argName);
            reset();
            return option;
        } catch (Throwable th) {
            reset();
            throw th;
        }
    }

    public static OptionBuilder hasArg() {
        numberOfArgs = 1;
        return instance;
    }

    public static OptionBuilder hasArg(boolean z) {
        numberOfArgs = z ? 1 : -1;
        return instance;
    }

    public static OptionBuilder hasArgs() {
        numberOfArgs = -2;
        return instance;
    }

    public static OptionBuilder hasArgs(int i) {
        numberOfArgs = i;
        return instance;
    }

    public static OptionBuilder hasOptionalArg() {
        numberOfArgs = 1;
        optionalArg = true;
        return instance;
    }

    public static OptionBuilder hasOptionalArgs() {
        numberOfArgs = -2;
        optionalArg = true;
        return instance;
    }

    public static OptionBuilder hasOptionalArgs(int i) {
        numberOfArgs = i;
        optionalArg = true;
        return instance;
    }

    public static OptionBuilder isRequired() {
        required = true;
        return instance;
    }

    public static OptionBuilder isRequired(boolean z) {
        required = z;
        return instance;
    }

    private static void reset() {
        description = null;
        argName = HelpFormatter.DEFAULT_ARG_NAME;
        longopt = null;
        type = null;
        required = false;
        numberOfArgs = -1;
        optionalArg = false;
        valuesep = (char) 0;
    }

    public static OptionBuilder withArgName(String str) {
        argName = str;
        return instance;
    }

    public static OptionBuilder withDescription(String str) {
        description = str;
        return instance;
    }

    public static OptionBuilder withLongOpt(String str) {
        longopt = str;
        return instance;
    }

    public static OptionBuilder withType(Object obj) {
        type = obj;
        return instance;
    }

    public static OptionBuilder withValueSeparator() {
        valuesep = (char) 61;
        return instance;
    }

    public static OptionBuilder withValueSeparator(char c) {
        valuesep = c;
        return instance;
    }
}
