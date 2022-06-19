package org.apache.commons.lang3.builder;
/* renamed from: org.apache.commons.lang3.builder.f */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/f.class */
public final class C20737f {

    /* renamed from: c */
    private static volatile ToStringStyle f67215c = ToStringStyle.DEFAULT_STYLE;

    /* renamed from: a */
    public final StringBuffer f67216a;

    /* renamed from: b */
    public final ToStringStyle f67217b;

    /* renamed from: d */
    private final Object f67218d;

    public C20737f(Object obj) {
        this(obj, null, null);
    }

    public C20737f(Object obj, ToStringStyle toStringStyle) {
        this(obj, toStringStyle, null);
    }

    public C20737f(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        ToStringStyle toStringStyle2 = toStringStyle == null ? f67215c : toStringStyle;
        StringBuffer stringBuffer2 = stringBuffer == null ? new StringBuffer(512) : stringBuffer;
        this.f67216a = stringBuffer2;
        this.f67217b = toStringStyle2;
        this.f67218d = obj;
        toStringStyle2.appendStart(stringBuffer2, obj);
    }

    public final String toString() {
        Object obj = this.f67218d;
        if (obj == null) {
            this.f67216a.append(this.f67217b.getNullText());
        } else {
            this.f67217b.appendEnd(this.f67216a, obj);
        }
        return this.f67216a.toString();
    }
}
