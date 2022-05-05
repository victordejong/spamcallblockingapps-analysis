package org.apache.commons.cli;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/HelpFormatter.class */
public class HelpFormatter {
    public static final String DEFAULT_ARG_NAME = "arg";
    public static final int DEFAULT_DESC_PAD = 3;
    public static final int DEFAULT_LEFT_PAD = 1;
    public static final String DEFAULT_LONG_OPT_PREFIX = "--";
    public static final String DEFAULT_OPT_PREFIX = "-";
    public static final String DEFAULT_SYNTAX_PREFIX = "usage: ";
    public static final int DEFAULT_WIDTH = 74;
    public int defaultWidth = 74;
    public int defaultLeftPad = 1;
    public int defaultDescPad = 3;
    public String defaultSyntaxPrefix = DEFAULT_SYNTAX_PREFIX;
    public String defaultNewLine = System.getProperty("line.separator");
    public String defaultOptPrefix = DEFAULT_OPT_PREFIX;
    public String defaultLongOptPrefix = DEFAULT_LONG_OPT_PREFIX;
    public String defaultArgName = DEFAULT_ARG_NAME;
    protected Comparator optionComparator = new OptionComparator();

    /* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/HelpFormatter$OptionComparator.class */
    private static class OptionComparator implements Comparator {
        private OptionComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Option) obj).getKey().compareToIgnoreCase(((Option) obj2).getKey());
        }
    }

    private static void appendOption(StringBuffer stringBuffer, Option option, boolean z) {
        if (!z) {
            stringBuffer.append("[");
        }
        if (option.getOpt() != null) {
            stringBuffer.append(DEFAULT_OPT_PREFIX);
            stringBuffer.append(option.getOpt());
        } else {
            stringBuffer.append(DEFAULT_LONG_OPT_PREFIX);
            stringBuffer.append(option.getLongOpt());
        }
        if (option.hasArg() && option.hasArgName()) {
            stringBuffer.append(" <");
            stringBuffer.append(option.getArgName());
            stringBuffer.append(">");
        }
        if (!z) {
            stringBuffer.append("]");
        }
    }

    private void appendOptionGroup(StringBuffer stringBuffer, OptionGroup optionGroup) {
        if (!optionGroup.isRequired()) {
            stringBuffer.append("[");
        }
        ArrayList arrayList = new ArrayList(optionGroup.getOptions());
        Collections.sort(arrayList, getOptionComparator());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            appendOption(stringBuffer, (Option) it.next(), true);
            if (it.hasNext()) {
                stringBuffer.append(" | ");
            }
        }
        if (!optionGroup.isRequired()) {
            stringBuffer.append("]");
        }
    }

    protected String createPadding(int i) {
        StringBuffer stringBuffer = new StringBuffer(i);
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r0 > r6) goto L_0x0019;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findWrapPos(java.lang.String r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r5
            r1 = 10
            r2 = r7
            int r0 = r0.indexOf(r1, r2)
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0019
            r0 = r8
            r9 = r0
            r0 = r8
            r1 = r6
            if (r0 <= r1) goto L_0x002e
        L_0x0019:
            r0 = r5
            r1 = 9
            r2 = r7
            int r0 = r0.indexOf(r1, r2)
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0033
            r0 = r9
            r1 = r6
            if (r0 > r1) goto L_0x0033
        L_0x002e:
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            return r0
        L_0x0033:
            r0 = r6
            r1 = r7
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            r1 = r5
            int r1 = r1.length()
            if (r0 < r1) goto L_0x0041
            r0 = -1
            return r0
        L_0x0041:
            r0 = r6
            r9 = r0
        L_0x0044:
            r0 = r9
            r1 = r7
            if (r0 < r1) goto L_0x006d
            r0 = r5
            r1 = r9
            char r0 = r0.charAt(r1)
            r8 = r0
            r0 = r8
            r1 = 32
            if (r0 == r1) goto L_0x006d
            r0 = r8
            r1 = 10
            if (r0 == r1) goto L_0x006d
            r0 = r8
            r1 = 13
            if (r0 == r1) goto L_0x006d
            int r9 = r9 + (-1)
            goto L_0x0044
        L_0x006d:
            r0 = r9
            r1 = r7
            if (r0 <= r1) goto L_0x0076
            r0 = r9
            return r0
        L_0x0076:
            r0 = r6
            r1 = r5
            int r1 = r1.length()
            if (r0 > r1) goto L_0x009c
            r0 = r5
            r1 = r6
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r7
            r1 = 32
            if (r0 == r1) goto L_0x009c
            r0 = r7
            r1 = 10
            if (r0 == r1) goto L_0x009c
            r0 = r7
            r1 = 13
            if (r0 == r1) goto L_0x009c
            int r6 = r6 + 1
            goto L_0x0076
        L_0x009c:
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r5
            int r1 = r1.length()
            if (r0 != r1) goto L_0x00a8
            r0 = -1
            r7 = r0
        L_0x00a8:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.cli.HelpFormatter.findWrapPos(java.lang.String, int, int):int");
    }

    public String getArgName() {
        return this.defaultArgName;
    }

    public int getDescPadding() {
        return this.defaultDescPad;
    }

    public int getLeftPadding() {
        return this.defaultLeftPad;
    }

    public String getLongOptPrefix() {
        return this.defaultLongOptPrefix;
    }

    public String getNewLine() {
        return this.defaultNewLine;
    }

    public String getOptPrefix() {
        return this.defaultOptPrefix;
    }

    public Comparator getOptionComparator() {
        return this.optionComparator;
    }

    public String getSyntaxPrefix() {
        return this.defaultSyntaxPrefix;
    }

    public int getWidth() {
        return this.defaultWidth;
    }

    public void printHelp(int i, String str, String str2, Options options, String str3) {
        printHelp(i, str, str2, options, str3, false);
    }

    public void printHelp(int i, String str, String str2, Options options, String str3, boolean z) {
        PrintWriter printWriter = new PrintWriter(System.out);
        printHelp(printWriter, i, str, str2, options, this.defaultLeftPad, this.defaultDescPad, str3, z);
        printWriter.flush();
    }

    public void printHelp(PrintWriter printWriter, int i, String str, String str2, Options options, int i2, int i3, String str3) {
        printHelp(printWriter, i, str, str2, options, i2, i3, str3, false);
    }

    public void printHelp(PrintWriter printWriter, int i, String str, String str2, Options options, int i2, int i3, String str3, boolean z) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("cmdLineSyntax not provided");
        }
        if (z) {
            printUsage(printWriter, i, str, options);
        } else {
            printUsage(printWriter, i, str);
        }
        if (str2 != null && str2.trim().length() > 0) {
            printWrapped(printWriter, i, str2);
        }
        printOptions(printWriter, i, options, i2, i3);
        if (str3 != null && str3.trim().length() > 0) {
            printWrapped(printWriter, i, str3);
        }
    }

    public void printHelp(String str, String str2, Options options, String str3) {
        printHelp(str, str2, options, str3, false);
    }

    public void printHelp(String str, String str2, Options options, String str3, boolean z) {
        printHelp(this.defaultWidth, str, str2, options, str3, z);
    }

    public void printHelp(String str, Options options) {
        printHelp(this.defaultWidth, str, null, options, null, false);
    }

    public void printHelp(String str, Options options, boolean z) {
        printHelp(this.defaultWidth, str, null, options, null, z);
    }

    public void printOptions(PrintWriter printWriter, int i, Options options, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        renderOptions(stringBuffer, i, options, i2, i3);
        printWriter.println(stringBuffer.toString());
    }

    public void printUsage(PrintWriter printWriter, int i, String str) {
        int indexOf = str.indexOf(32);
        int length = this.defaultSyntaxPrefix.length();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.defaultSyntaxPrefix);
        stringBuffer.append(str);
        printWrapped(printWriter, i, length + indexOf + 1, stringBuffer.toString());
    }

    public void printUsage(PrintWriter printWriter, int i, String str, Options options) {
        StringBuffer stringBuffer = new StringBuffer(this.defaultSyntaxPrefix);
        stringBuffer.append(str);
        stringBuffer.append(" ");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(options.getOptions());
        Collections.sort(arrayList2, getOptionComparator());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Option option = (Option) it.next();
            OptionGroup optionGroup = options.getOptionGroup(option);
            if (optionGroup == null) {
                appendOption(stringBuffer, option, option.isRequired());
            } else if (!arrayList.contains(optionGroup)) {
                arrayList.add(optionGroup);
                appendOptionGroup(stringBuffer, optionGroup);
            }
            if (it.hasNext()) {
                stringBuffer.append(" ");
            }
        }
        printWrapped(printWriter, i, stringBuffer.toString().indexOf(32) + 1, stringBuffer.toString());
    }

    public void printWrapped(PrintWriter printWriter, int i, int i2, String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        renderWrappedText(stringBuffer, i, i2, str);
        printWriter.println(stringBuffer.toString());
    }

    public void printWrapped(PrintWriter printWriter, int i, String str) {
        printWrapped(printWriter, i, 0, str);
    }

    protected StringBuffer renderOptions(StringBuffer stringBuffer, int i, Options options, int i2, int i3) {
        String createPadding = createPadding(i2);
        String createPadding2 = createPadding(i3);
        ArrayList arrayList = new ArrayList();
        List<Option> helpOptions = options.helpOptions();
        Collections.sort(helpOptions, getOptionComparator());
        int i4 = 0;
        int i5 = 0;
        for (Option option : helpOptions) {
            StringBuffer stringBuffer2 = new StringBuffer(8);
            if (option.getOpt() == null) {
                stringBuffer2.append(createPadding);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("   ");
                stringBuffer3.append(this.defaultLongOptPrefix);
                stringBuffer2.append(stringBuffer3.toString());
                stringBuffer2.append(option.getLongOpt());
            } else {
                stringBuffer2.append(createPadding);
                stringBuffer2.append(this.defaultOptPrefix);
                stringBuffer2.append(option.getOpt());
                if (option.hasLongOpt()) {
                    stringBuffer2.append(',');
                    stringBuffer2.append(this.defaultLongOptPrefix);
                    stringBuffer2.append(option.getLongOpt());
                }
            }
            if (option.hasArg()) {
                if (option.hasArgName()) {
                    stringBuffer2.append(" <");
                    stringBuffer2.append(option.getArgName());
                    stringBuffer2.append(">");
                } else {
                    stringBuffer2.append(' ');
                }
            }
            arrayList.add(stringBuffer2);
            if (stringBuffer2.length() > i5) {
                i5 = stringBuffer2.length();
            }
        }
        Iterator it = helpOptions.iterator();
        while (it.hasNext()) {
            Option option2 = (Option) it.next();
            StringBuffer stringBuffer4 = new StringBuffer(arrayList.get(i4).toString());
            if (stringBuffer4.length() < i5) {
                stringBuffer4.append(createPadding(i5 - stringBuffer4.length()));
            }
            stringBuffer4.append(createPadding2);
            if (option2.getDescription() != null) {
                stringBuffer4.append(option2.getDescription());
            }
            renderWrappedText(stringBuffer, i, i5 + i3, stringBuffer4.toString());
            if (it.hasNext()) {
                stringBuffer.append(this.defaultNewLine);
            }
            i4++;
        }
        return stringBuffer;
    }

    protected StringBuffer renderWrappedText(StringBuffer stringBuffer, int i, int i2, String str) {
        int findWrapPos = findWrapPos(str, i, 0);
        if (findWrapPos == -1) {
            stringBuffer.append(rtrim(str));
            return stringBuffer;
        }
        stringBuffer.append(rtrim(str.substring(0, findWrapPos)));
        stringBuffer.append(this.defaultNewLine);
        int i3 = i2;
        if (i2 >= i) {
            i3 = 1;
        }
        String createPadding = createPadding(i3);
        int i4 = findWrapPos;
        while (true) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(createPadding);
            stringBuffer2.append(str.substring(i4).trim());
            str = stringBuffer2.toString();
            int findWrapPos2 = findWrapPos(str, i, 0);
            if (findWrapPos2 == -1) {
                stringBuffer.append(str);
                return stringBuffer;
            }
            i4 = findWrapPos2;
            if (str.length() > i) {
                i4 = findWrapPos2;
                if (findWrapPos2 == i3 - 1) {
                    i4 = i;
                }
            }
            stringBuffer.append(rtrim(str.substring(0, i4)));
            stringBuffer.append(this.defaultNewLine);
        }
    }

    protected String rtrim(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return str.substring(0, length);
    }

    public void setArgName(String str) {
        this.defaultArgName = str;
    }

    public void setDescPadding(int i) {
        this.defaultDescPad = i;
    }

    public void setLeftPadding(int i) {
        this.defaultLeftPad = i;
    }

    public void setLongOptPrefix(String str) {
        this.defaultLongOptPrefix = str;
    }

    public void setNewLine(String str) {
        this.defaultNewLine = str;
    }

    public void setOptPrefix(String str) {
        this.defaultOptPrefix = str;
    }

    public void setOptionComparator(Comparator comparator) {
        if (comparator == null) {
            this.optionComparator = new OptionComparator();
        } else {
            this.optionComparator = comparator;
        }
    }

    public void setSyntaxPrefix(String str) {
        this.defaultSyntaxPrefix = str;
    }

    public void setWidth(int i) {
        this.defaultWidth = i;
    }
}
