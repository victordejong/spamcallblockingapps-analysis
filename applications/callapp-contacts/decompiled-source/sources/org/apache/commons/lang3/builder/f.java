package org.apache.commons.lang3.builder;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/f.class */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static volatile ToStringStyle f39148c = ToStringStyle.DEFAULT_STYLE;

    /* renamed from: a  reason: collision with root package name */
    public final StringBuffer f39149a;

    /* renamed from: b  reason: collision with root package name */
    public final ToStringStyle f39150b;

    /* renamed from: d  reason: collision with root package name */
    private final Object f39151d;

    public f(Object obj) {
        this(obj, null, null);
    }

    public f(Object obj, ToStringStyle toStringStyle) {
        this(obj, toStringStyle, null);
    }

    public f(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        ToStringStyle toStringStyle2 = toStringStyle == null ? f39148c : toStringStyle;
        StringBuffer stringBuffer2 = stringBuffer == null ? new StringBuffer(512) : stringBuffer;
        this.f39149a = stringBuffer2;
        this.f39150b = toStringStyle2;
        this.f39151d = obj;
        toStringStyle2.appendStart(stringBuffer2, obj);
    }

    public final String toString() {
        Object obj = this.f39151d;
        if (obj == null) {
            this.f39149a.append(this.f39150b.getNullText());
        } else {
            this.f39150b.appendEnd(this.f39149a, obj);
        }
        return this.f39149a.toString();
    }
}
