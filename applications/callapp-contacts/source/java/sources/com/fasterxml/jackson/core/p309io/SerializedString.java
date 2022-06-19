package com.fasterxml.jackson.core.p309io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* renamed from: com.fasterxml.jackson.core.io.SerializedString */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/SerializedString.class */
public class SerializedString implements SerializableString, Serializable {
    private static final JsonStringEncoder JSON_ENCODER = JsonStringEncoder.getInstance();
    protected transient String _jdkSerializeValue;
    protected char[] _quotedChars;
    protected byte[] _quotedUTF8Ref;
    protected byte[] _unquotedUTF8Ref;
    protected final String _value;

    public SerializedString(String str) {
        if (str != null) {
            this._value = str;
            return;
        }
        throw new IllegalStateException("Null String illegal for SerializedString");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this._jdkSerializeValue = objectInputStream.readUTF();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeUTF(this._value);
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public int appendQuoted(char[] cArr, int i) {
        char[] cArr2 = this._quotedChars;
        char[] cArr3 = cArr2;
        if (cArr2 == null) {
            cArr3 = JSON_ENCODER.quoteAsString(this._value);
            this._quotedChars = cArr3;
        }
        int length = cArr3.length;
        if (i + length > cArr.length) {
            return -1;
        }
        System.arraycopy(cArr3, 0, cArr, i, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public int appendQuotedUTF8(byte[] bArr, int i) {
        byte[] bArr2 = this._quotedUTF8Ref;
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = JSON_ENCODER.quoteAsUTF8(this._value);
            this._quotedUTF8Ref = bArr3;
        }
        int length = bArr3.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr3, 0, bArr, i, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public int appendUnquoted(char[] cArr, int i) {
        String str = this._value;
        int length = str.length();
        if (i + length > cArr.length) {
            return -1;
        }
        str.getChars(0, length, cArr, i);
        return length;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public int appendUnquotedUTF8(byte[] bArr, int i) {
        byte[] bArr2 = this._unquotedUTF8Ref;
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = JSON_ENCODER.encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = bArr3;
        }
        int length = bArr3.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr3, 0, bArr, i, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public final char[] asQuotedChars() {
        char[] cArr = this._quotedChars;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = JSON_ENCODER.quoteAsString(this._value);
            this._quotedChars = cArr2;
        }
        return cArr2;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public final byte[] asQuotedUTF8() {
        byte[] bArr = this._quotedUTF8Ref;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = JSON_ENCODER.quoteAsUTF8(this._value);
            this._quotedUTF8Ref = bArr2;
        }
        return bArr2;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public final byte[] asUnquotedUTF8() {
        byte[] bArr = this._unquotedUTF8Ref;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = JSON_ENCODER.encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = bArr2;
        }
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            return this._value.equals(((SerializedString) obj)._value);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.SerializableString
    public final String getValue() {
        return this._value;
    }

    public final int hashCode() {
        return this._value.hashCode();
    }

    protected Object readResolve() {
        return new SerializedString(this._jdkSerializeValue);
    }

    public final String toString() {
        return this._value;
    }
}
