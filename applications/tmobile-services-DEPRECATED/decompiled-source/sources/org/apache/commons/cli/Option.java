package org.apache.commons.cli;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/Option.class */
public class Option implements Cloneable, Serializable {
    public static final int UNINITIALIZED = -1;
    public static final int UNLIMITED_VALUES = -2;
    private static final long serialVersionUID = 1;
    private String argName;
    private String description;
    private String longOpt;
    private int numberOfArgs;
    private String opt;
    private boolean optionalArg;
    private boolean required;
    private Object type;
    private List values;
    private char valuesep;

    public Option(String str, String str2) throws IllegalArgumentException {
        this(str, null, false, str2);
    }

    public Option(String str, String str2, boolean z, String str3) throws IllegalArgumentException {
        this.argName = HelpFormatter.DEFAULT_ARG_NAME;
        this.numberOfArgs = -1;
        this.values = new ArrayList();
        OptionValidator.validateOption(str);
        this.opt = str;
        this.longOpt = str2;
        if (z) {
            this.numberOfArgs = 1;
        }
        this.description = str3;
    }

    public Option(String str, boolean z, String str2) throws IllegalArgumentException {
        this(str, null, z, str2);
    }

    private void add(String str) {
        if (this.numberOfArgs <= 0 || this.values.size() <= this.numberOfArgs - 1) {
            this.values.add(str);
            return;
        }
        throw new RuntimeException("Cannot add value, list full.");
    }

    private boolean hasNoValues() {
        return this.values.isEmpty();
    }

    private void processValue(String str) {
        String str2 = str;
        if (hasValueSeparator()) {
            char valueSeparator = getValueSeparator();
            int indexOf = str.indexOf(valueSeparator);
            while (true) {
                str2 = str;
                if (indexOf == -1) {
                    break;
                } else if (this.values.size() == this.numberOfArgs - 1) {
                    str2 = str;
                    break;
                } else {
                    add(str.substring(0, indexOf));
                    str = str.substring(indexOf + 1);
                    indexOf = str.indexOf(valueSeparator);
                }
            }
        }
        add(str2);
    }

    public boolean addValue(String str) {
        throw new UnsupportedOperationException("The addValue method is not intended for client use. Subclasses should use the addValueForProcessing method instead. ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addValueForProcessing(String str) {
        if (this.numberOfArgs != -1) {
            processValue(str);
            return;
        }
        throw new RuntimeException("NO_ARGS_ALLOWED");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearValues() {
        this.values.clear();
    }

    public Object clone() {
        try {
            Option option = (Option) super.clone();
            option.values = new ArrayList(this.values);
            return option;
        } catch (CloneNotSupportedException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("A CloneNotSupportedException was thrown: ");
            stringBuffer.append(e.getMessage());
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Option.class != obj.getClass()) {
            return false;
        }
        Option option = (Option) obj;
        String str = this.opt;
        if (str != null) {
            if (!str.equals(option.opt)) {
                return false;
            }
        } else if (option.opt != null) {
            return false;
        }
        String str2 = this.longOpt;
        String str3 = option.longOpt;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getArgName() {
        return this.argName;
    }

    public int getArgs() {
        return this.numberOfArgs;
    }

    public String getDescription() {
        return this.description;
    }

    public int getId() {
        return getKey().charAt(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getKey() {
        String str = this.opt;
        String str2 = str;
        if (str == null) {
            str2 = this.longOpt;
        }
        return str2;
    }

    public String getLongOpt() {
        return this.longOpt;
    }

    public String getOpt() {
        return this.opt;
    }

    public Object getType() {
        return this.type;
    }

    public String getValue() {
        return hasNoValues() ? null : (String) this.values.get(0);
    }

    public String getValue(int i) throws IndexOutOfBoundsException {
        return hasNoValues() ? null : (String) this.values.get(i);
    }

    public String getValue(String str) {
        String value = getValue();
        if (value != null) {
            str = value;
        }
        return str;
    }

    public char getValueSeparator() {
        return this.valuesep;
    }

    public String[] getValues() {
        String[] strArr;
        if (hasNoValues()) {
            strArr = null;
        } else {
            List list = this.values;
            strArr = (String[]) list.toArray(new String[list.size()]);
        }
        return strArr;
    }

    public List getValuesList() {
        return this.values;
    }

    public boolean hasArg() {
        int i = this.numberOfArgs;
        return i > 0 || i == -2;
    }

    public boolean hasArgName() {
        String str = this.argName;
        return str != null && str.length() > 0;
    }

    public boolean hasArgs() {
        int i = this.numberOfArgs;
        boolean z = true;
        if (i <= 1) {
            z = i == -2;
        }
        return z;
    }

    public boolean hasLongOpt() {
        return this.longOpt != null;
    }

    public boolean hasOptionalArg() {
        return this.optionalArg;
    }

    public boolean hasValueSeparator() {
        return this.valuesep > 0;
    }

    public int hashCode() {
        String str = this.opt;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.longOpt;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public boolean isRequired() {
        return this.required;
    }

    public void setArgName(String str) {
        this.argName = str;
    }

    public void setArgs(int i) {
        this.numberOfArgs = i;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setLongOpt(String str) {
        this.longOpt = str;
    }

    public void setOptionalArg(boolean z) {
        this.optionalArg = z;
    }

    public void setRequired(boolean z) {
        this.required = z;
    }

    public void setType(Object obj) {
        this.type = obj;
    }

    public void setValueSeparator(char c) {
        this.valuesep = c;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[ option: ");
        stringBuffer.append(this.opt);
        if (this.longOpt != null) {
            stringBuffer.append(" ");
            stringBuffer.append(this.longOpt);
        }
        stringBuffer.append(" ");
        if (hasArgs()) {
            stringBuffer.append("[ARG...]");
        } else if (hasArg()) {
            stringBuffer.append(" [ARG]");
        }
        stringBuffer.append(" :: ");
        stringBuffer.append(this.description);
        if (this.type != null) {
            stringBuffer.append(" :: ");
            stringBuffer.append(this.type);
        }
        stringBuffer.append(" ]");
        return stringBuffer.toString();
    }
}
