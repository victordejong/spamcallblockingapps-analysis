package org.simpleframework.xml.transform;

import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/DateType.class */
enum DateType {
    FULL("yyyy-MM-dd HH:mm:ss.S z"),
    LONG("yyyy-MM-dd HH:mm:ss z"),
    NORMAL("yyyy-MM-dd z"),
    SHORT("yyyy-MM-dd");
    
    private DateFormat format;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/DateType$DateFormat.class */
    public static class DateFormat {
        private SimpleDateFormat format;

        public DateFormat(String str) {
            this.format = new SimpleDateFormat(str);
        }

        public Date getDate(String str) throws Exception {
            Date parse;
            synchronized (this) {
                parse = this.format.parse(str);
            }
            return parse;
        }

        public String getText(Date date) throws Exception {
            String format;
            synchronized (this) {
                format = this.format.format(date);
            }
            return format;
        }
    }

    DateType(String str) {
        this.format = new DateFormat(str);
    }

    public static Date getDate(String str) throws Exception {
        return getType(str).getFormat().getDate(str);
    }

    private DateFormat getFormat() {
        return this.format;
    }

    public static String getText(Date date) throws Exception {
        return FULL.getFormat().getText(date);
    }

    public static DateType getType(String str) {
        int length = str.length();
        return length > 23 ? FULL : length > 20 ? LONG : length > 11 ? NORMAL : SHORT;
    }
}
