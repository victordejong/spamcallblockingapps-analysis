package com.esotericsoftware.kryo;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/KryoException.class */
public class KryoException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private StringBuffer f18955a;

    public KryoException() {
    }

    public KryoException(String str) {
        super(str);
    }

    public KryoException(String str, Throwable th) {
        super(str, th);
    }

    public KryoException(Throwable th) {
        super(th);
    }

    public final void a(String str) {
        if (str != null) {
            if (this.f18955a == null) {
                this.f18955a = new StringBuffer(512);
            }
            this.f18955a.append('\n');
            this.f18955a.append(str);
            return;
        }
        throw new IllegalArgumentException("info cannot be null.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f18955a == null) {
            return super.getMessage();
        }
        StringBuffer stringBuffer = new StringBuffer(512);
        stringBuffer.append(super.getMessage());
        if (stringBuffer.length() > 0) {
            stringBuffer.append('\n');
        }
        stringBuffer.append("Serialization trace:");
        stringBuffer.append(this.f18955a);
        return stringBuffer.toString();
    }
}
