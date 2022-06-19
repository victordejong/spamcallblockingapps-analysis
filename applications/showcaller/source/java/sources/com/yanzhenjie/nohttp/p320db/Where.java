package com.yanzhenjie.nohttp.p320db;

import java.util.List;
/* renamed from: com.yanzhenjie.nohttp.db.Where */
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/db/Where.class */
public class Where {
    private StringBuilder builder = new StringBuilder();

    /* renamed from: com.yanzhenjie.nohttp.db.Where$Options */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/db/Where$Options.class */
    public enum Options {
        IN("IN"),
        EQUAL("="),
        NO_EQUAL("!="),
        ThAN_LARGE(">"),
        THAN_SMALL("<");
        
        private String value;

        Options(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.value;
        }
    }

    public Where() {
    }

    public Where(CharSequence charSequence, Options options, Object obj) {
        add(charSequence, options, obj);
    }

    private Where addColumnName(CharSequence charSequence, Options options) {
        StringBuilder sb = this.builder;
        sb.append("\"");
        sb.append(charSequence);
        sb.append("\" ");
        sb.append(options.toString());
        sb.append(' ');
        return this;
    }

    private Where and() {
        if (this.builder.length() > 0) {
            this.builder.append(" AND ");
        }
        return this;
    }

    /* renamed from: in */
    private <T> Where m555in(List<T> list) {
        StringBuilder sb = this.builder;
        sb.append(Options.IN);
        sb.append(" (");
        for (T t : list) {
            if (t instanceof CharSequence) {
                StringBuilder sb2 = this.builder;
                sb2.append("'");
                sb2.append(t);
                sb2.append("'");
            } else if ((t instanceof Integer) || (t instanceof Long) || (t instanceof Short)) {
                this.builder.append(t);
            }
            this.builder.append(", ");
        }
        if (this.builder.lastIndexOf(", ") > 0) {
            StringBuilder sb3 = this.builder;
            sb3.delete(sb3.length() - 2, this.builder.length());
        }
        this.builder.append(")");
        return this;
    }

    public static boolean isNumber(Object obj) {
        return obj != null && ((obj instanceof Character) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Double) || (obj instanceof Float));
    }

    /* renamed from: or */
    private Where m554or() {
        if (this.builder.length() > 0) {
            this.builder.append(" OR ");
        }
        return this;
    }

    public final Where add(CharSequence charSequence, Options options, Object obj) {
        if (Options.EQUAL.equals(options) || Options.ThAN_LARGE.equals(options) || Options.THAN_SMALL.equals(options) || Options.NO_EQUAL.equals(options)) {
            addColumnName(charSequence, options);
            if (isNumber(obj)) {
                this.builder.append(obj);
            } else {
                StringBuilder sb = this.builder;
                sb.append("'");
                sb.append(obj);
                sb.append("'");
            }
        } else if (!Options.IN.equals(options) || !(obj instanceof List)) {
            throw new IllegalArgumentException("Value is not supported by the data type");
        } else {
            addColumnName(charSequence, options).append(obj).m555in((List) obj);
        }
        return this;
    }

    public final Where and(Where where) {
        return and().append(where);
    }

    public final Where and(CharSequence charSequence, Options options, Object obj) {
        return and().add(charSequence, options, obj);
    }

    public final Where andNull(CharSequence charSequence) {
        return and().isNull(charSequence);
    }

    public final Where append(Object obj) {
        this.builder.append(obj);
        return this;
    }

    public final Where bracket() {
        return insert(0, "(").append(')');
    }

    public final Where clear() {
        StringBuilder sb = this.builder;
        sb.delete(0, sb.length());
        return this;
    }

    public final String get() {
        return this.builder.toString();
    }

    public final Where insert(int i, CharSequence charSequence) {
        this.builder.insert(i, charSequence);
        return this;
    }

    public final Where isNull(CharSequence charSequence) {
        StringBuilder sb = this.builder;
        sb.append("\"");
        sb.append(charSequence);
        sb.append("\" ");
        sb.append("IS ");
        sb.append("NULL");
        return this;
    }

    /* renamed from: or */
    public final Where m553or(Where where) {
        return m554or().append(where);
    }

    /* renamed from: or */
    public final Where m552or(CharSequence charSequence, Options options, Object obj) {
        return m554or().add(charSequence, options, obj);
    }

    public final Where orNull(CharSequence charSequence) {
        return m554or().isNull(charSequence);
    }

    public final Where set(String str) {
        clear().append(str);
        return this;
    }

    public String toString() {
        return this.builder.toString();
    }
}
