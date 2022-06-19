package com.esotericsoftware.kryo;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/KryoException.class */
public class KryoException extends RuntimeException {

    /* renamed from: a */
    private StringBuffer f32203a;

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

    /* renamed from: a */
    public final void m24463a(String str) {
        if (str != null) {
            if (this.f32203a == null) {
                this.f32203a = new StringBuffer(512);
            }
            this.f32203a.append('\n');
            this.f32203a.append(str);
            return;
        }
        throw new IllegalArgumentException("info cannot be null.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f32203a == null) {
            return super.getMessage();
        }
        StringBuffer stringBuffer = new StringBuffer(512);
        stringBuffer.append(super.getMessage());
        if (stringBuffer.length() > 0) {
            stringBuffer.append('\n');
        }
        stringBuffer.append("Serialization trace:");
        stringBuffer.append(this.f32203a);
        return stringBuffer.toString();
    }
}
