package org.apache.commons.cli;

import com.tmobile.services.nameid.model.TmoUserStatus;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.ListIterator;
import java.util.Properties;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/Parser.class */
public abstract class Parser implements CommandLineParser {
    protected CommandLine cmd;
    private Options options;
    private List requiredOptions;

    protected void checkRequiredOptions() throws MissingOptionException {
        if (!getRequiredOptions().isEmpty()) {
            throw new MissingOptionException(getRequiredOptions());
        }
    }

    protected abstract String[] flatten(Options options, String[] strArr, boolean z);

    protected Options getOptions() {
        return this.options;
    }

    protected List getRequiredOptions() {
        return this.requiredOptions;
    }

    @Override // org.apache.commons.cli.CommandLineParser
    public CommandLine parse(Options options, String[] strArr) throws ParseException {
        return parse(options, strArr, null, false);
    }

    public CommandLine parse(Options options, String[] strArr, Properties properties) throws ParseException {
        return parse(options, strArr, properties, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d8, code lost:
        if (r9 != false) goto L_0x0073;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0057 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.cli.CommandLine parse(org.apache.commons.cli.Options r6, java.lang.String[] r7, java.util.Properties r8, boolean r9) throws org.apache.commons.cli.ParseException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.cli.Parser.parse(org.apache.commons.cli.Options, java.lang.String[], java.util.Properties, boolean):org.apache.commons.cli.CommandLine");
    }

    @Override // org.apache.commons.cli.CommandLineParser
    public CommandLine parse(Options options, String[] strArr, boolean z) throws ParseException {
        return parse(options, strArr, null, z);
    }

    public void processArgs(Option option, ListIterator listIterator) throws ParseException {
        while (true) {
            if (!listIterator.hasNext()) {
                break;
            }
            String str = (String) listIterator.next();
            if (getOptions().hasOption(str) && str.startsWith(HelpFormatter.DEFAULT_OPT_PREFIX)) {
                listIterator.previous();
                break;
            } else {
                try {
                    option.addValueForProcessing(Util.stripLeadingAndTrailingQuotes(str));
                } catch (RuntimeException e) {
                    listIterator.previous();
                }
            }
        }
        if (option.getValues() == null && !option.hasOptionalArg()) {
            throw new MissingArgumentException(option);
        }
    }

    protected void processOption(String str, ListIterator listIterator) throws ParseException {
        if (getOptions().hasOption(str)) {
            Option option = (Option) getOptions().getOption(str).clone();
            if (option.isRequired()) {
                getRequiredOptions().remove(option.getKey());
            }
            if (getOptions().getOptionGroup(option) != null) {
                OptionGroup optionGroup = getOptions().getOptionGroup(option);
                if (optionGroup.isRequired()) {
                    getRequiredOptions().remove(optionGroup);
                }
                optionGroup.setSelected(option);
            }
            if (option.hasArg()) {
                processArgs(option, listIterator);
            }
            this.cmd.addOption(option);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unrecognized option: ");
        stringBuffer.append(str);
        throw new UnrecognizedOptionException(stringBuffer.toString(), str);
    }

    protected void processProperties(Properties properties) {
        if (properties != null) {
            Enumeration<?> propertyNames = properties.propertyNames();
            while (propertyNames.hasMoreElements()) {
                String obj = propertyNames.nextElement().toString();
                if (!this.cmd.hasOption(obj)) {
                    Option option = getOptions().getOption(obj);
                    String property = properties.getProperty(obj);
                    if (option.hasArg()) {
                        if (option.getValues() == null || option.getValues().length == 0) {
                            try {
                                option.addValueForProcessing(property);
                            } catch (RuntimeException e) {
                            }
                        }
                    } else if (!"yes".equalsIgnoreCase(property) && !"true".equalsIgnoreCase(property) && !TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equalsIgnoreCase(property)) {
                        return;
                    }
                    this.cmd.addOption(option);
                }
            }
        }
    }

    protected void setOptions(Options options) {
        this.options = options;
        this.requiredOptions = new ArrayList(options.getRequiredOptions());
    }
}
