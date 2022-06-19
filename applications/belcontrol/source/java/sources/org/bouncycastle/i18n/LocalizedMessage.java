package org.bouncycastle.i18n;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import org.bouncycastle.i18n.filter.Filter;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.i18n.filter.UntrustedUrlInput;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/i18n/LocalizedMessage.class */
public class LocalizedMessage {
    public static final String DEFAULT_ENCODING = "ISO-8859-1";
    public FilteredArguments arguments;
    public String encoding;
    public FilteredArguments extraArgs;
    public Filter filter;

    /* renamed from: id */
    public final String f7606id;
    public ClassLoader loader;
    public final String resource;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/i18n/LocalizedMessage$FilteredArguments.class */
    public class FilteredArguments {
        public static final int FILTER = 1;
        public static final int FILTER_URL = 2;
        public static final int NO_FILTER = 0;
        public int[] argFilterType;
        public Object[] arguments;
        public Filter filter;
        public Object[] filteredArgs;
        public boolean[] isLocaleSpecific;
        public Object[] unpackedArgs;

        public FilteredArguments(LocalizedMessage localizedMessage) {
            this(new Object[0]);
        }

        public FilteredArguments(Object[] objArr) {
            LocalizedMessage.this = r6;
            this.filter = null;
            this.arguments = objArr;
            this.unpackedArgs = new Object[objArr.length];
            this.filteredArgs = new Object[objArr.length];
            this.isLocaleSpecific = new boolean[objArr.length];
            this.argFilterType = new int[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof TrustedInput) {
                    this.unpackedArgs[i] = ((TrustedInput) objArr[i]).getInput();
                    this.argFilterType[i] = 0;
                } else if (objArr[i] instanceof UntrustedInput) {
                    this.unpackedArgs[i] = ((UntrustedInput) objArr[i]).getInput();
                    if (objArr[i] instanceof UntrustedUrlInput) {
                        this.argFilterType[i] = 2;
                    } else {
                        this.argFilterType[i] = 1;
                    }
                } else {
                    this.unpackedArgs[i] = objArr[i];
                    this.argFilterType[i] = 1;
                }
                this.isLocaleSpecific[i] = this.unpackedArgs[i] instanceof LocaleString;
            }
        }

        private Object filter(int i, Object obj) {
            Filter filter = this.filter;
            Object obj2 = obj;
            if (filter != null) {
                Object obj3 = obj;
                if (obj == null) {
                    obj3 = "null";
                }
                obj2 = obj3;
                if (i != 0) {
                    if (i == 1) {
                        return filter.doFilter(obj3.toString());
                    }
                    if (i == 2) {
                        return filter.doFilterUrl(obj3.toString());
                    }
                    return null;
                }
            }
            return obj2;
        }

        public Object[] getArguments() {
            return this.arguments;
        }

        public Filter getFilter() {
            return this.filter;
        }

        public Object[] getFilteredArgs(Locale locale) {
            Object obj;
            Object[] objArr = new Object[this.unpackedArgs.length];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.unpackedArgs;
                if (i < objArr2.length) {
                    Object[] objArr3 = this.filteredArgs;
                    if (objArr3[i] != null) {
                        obj = objArr3[i];
                    } else {
                        Object obj2 = objArr2[i];
                        if (this.isLocaleSpecific[i]) {
                            obj = filter(this.argFilterType[i], ((LocaleString) obj2).getLocaleString(locale));
                        } else {
                            obj = filter(this.argFilterType[i], obj2);
                            this.filteredArgs[i] = obj;
                        }
                    }
                    objArr[i] = obj;
                    i++;
                } else {
                    return objArr;
                }
            }
        }

        public boolean isEmpty() {
            return this.unpackedArgs.length == 0;
        }

        public void setFilter(Filter filter) {
            if (filter != this.filter) {
                for (int i = 0; i < this.unpackedArgs.length; i++) {
                    this.filteredArgs[i] = null;
                }
            }
            this.filter = filter;
        }
    }

    public LocalizedMessage(String str, String str2) {
        this.encoding = "ISO-8859-1";
        this.extraArgs = null;
        this.filter = null;
        this.loader = null;
        if (str == null || str2 == null) {
            throw null;
        }
        this.f7606id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(this);
    }

    public LocalizedMessage(String str, String str2, String str3) {
        this.encoding = "ISO-8859-1";
        this.extraArgs = null;
        this.filter = null;
        this.loader = null;
        if (str == null || str2 == null) {
            throw null;
        }
        this.f7606id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(this);
        if (Charset.isSupported(str3)) {
            this.encoding = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public LocalizedMessage(String str, String str2, String str3, Object[] objArr) {
        this.encoding = "ISO-8859-1";
        this.extraArgs = null;
        this.filter = null;
        this.loader = null;
        if (str == null || str2 == null || objArr == null) {
            throw null;
        }
        this.f7606id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(objArr);
        if (Charset.isSupported(str3)) {
            this.encoding = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public LocalizedMessage(String str, String str2, Object[] objArr) {
        this.encoding = "ISO-8859-1";
        this.extraArgs = null;
        this.filter = null;
        this.loader = null;
        if (str == null || str2 == null || objArr == null) {
            throw null;
        }
        this.f7606id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(objArr);
    }

    public String addExtraArgs(String str, Locale locale) {
        String str2 = str;
        if (this.extraArgs != null) {
            StringBuffer stringBuffer = new StringBuffer(str);
            for (Object obj : this.extraArgs.getFilteredArgs(locale)) {
                stringBuffer.append(obj);
            }
            str2 = stringBuffer.toString();
        }
        return str2;
    }

    public String formatWithTimeZone(String str, Object[] objArr, Locale locale, TimeZone timeZone) {
        MessageFormat messageFormat = new MessageFormat(" ");
        messageFormat.setLocale(locale);
        messageFormat.applyPattern(str);
        if (!timeZone.equals(TimeZone.getDefault())) {
            Format[] formats = messageFormat.getFormats();
            for (int i = 0; i < formats.length; i++) {
                if (formats[i] instanceof DateFormat) {
                    DateFormat dateFormat = (DateFormat) formats[i];
                    dateFormat.setTimeZone(timeZone);
                    messageFormat.setFormat(i, dateFormat);
                }
            }
        }
        return messageFormat.format(objArr);
    }

    public Object[] getArguments() {
        return this.arguments.getArguments();
    }

    public ClassLoader getClassLoader() {
        return this.loader;
    }

    public String getEntry(String str, Locale locale, TimeZone timeZone) {
        String str2 = this.f7606id;
        String str3 = str2;
        if (str != null) {
            str3 = str2 + "." + str;
        }
        try {
            ClassLoader classLoader = this.loader;
            String string = (classLoader == null ? ResourceBundle.getBundle(this.resource, locale) : ResourceBundle.getBundle(this.resource, locale, classLoader)).getString(str3);
            String str4 = string;
            if (!this.encoding.equals("ISO-8859-1")) {
                str4 = new String(string.getBytes("ISO-8859-1"), this.encoding);
            }
            String str5 = str4;
            if (!this.arguments.isEmpty()) {
                str5 = formatWithTimeZone(str4, this.arguments.getFilteredArgs(locale), locale, timeZone);
            }
            return addExtraArgs(str5, locale);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (MissingResourceException e2) {
            String str6 = "Can't find entry " + str3 + " in resource file " + this.resource + ".";
            String str7 = this.resource;
            ClassLoader classLoader2 = this.loader;
            if (classLoader2 == null) {
                classLoader2 = getClassLoader();
            }
            throw new MissingEntryException(str6, str7, str3, locale, classLoader2);
        }
    }

    public Object[] getExtraArgs() {
        FilteredArguments filteredArguments = this.extraArgs;
        return filteredArguments == null ? null : filteredArguments.getArguments();
    }

    public Filter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.f7606id;
    }

    public String getResource() {
        return this.resource;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.loader = classLoader;
    }

    public void setExtraArgument(Object obj) {
        setExtraArguments(new Object[]{obj});
    }

    public void setExtraArguments(Object[] objArr) {
        if (objArr == null) {
            this.extraArgs = null;
            return;
        }
        FilteredArguments filteredArguments = new FilteredArguments(objArr);
        this.extraArgs = filteredArguments;
        filteredArguments.setFilter(this.filter);
    }

    public void setFilter(Filter filter) {
        this.arguments.setFilter(filter);
        FilteredArguments filteredArguments = this.extraArgs;
        if (filteredArguments != null) {
            filteredArguments.setFilter(filter);
        }
        this.filter = filter;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Resource: \"");
        stringBuffer.append(this.resource);
        stringBuffer.append("\" Id: \"");
        stringBuffer.append(this.f7606id);
        stringBuffer.append("\"");
        stringBuffer.append(" Arguments: ");
        stringBuffer.append(this.arguments.getArguments().length);
        stringBuffer.append(" normal");
        FilteredArguments filteredArguments = this.extraArgs;
        if (filteredArguments != null && filteredArguments.getArguments().length > 0) {
            stringBuffer.append(", ");
            stringBuffer.append(this.extraArgs.getArguments().length);
            stringBuffer.append(" extra");
        }
        stringBuffer.append(" Encoding: ");
        stringBuffer.append(this.encoding);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(this.loader);
        return stringBuffer.toString();
    }
}
