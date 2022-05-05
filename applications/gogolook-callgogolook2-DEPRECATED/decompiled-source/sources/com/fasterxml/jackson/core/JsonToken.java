package com.fasterxml.jackson.core;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonToken.class */
public enum JsonToken {
    NOT_AVAILABLE(null, -1),
    START_OBJECT(CssParser.BLOCK_START, 1),
    END_OBJECT(CssParser.BLOCK_END, 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL(C14247d.f31851f, 11);
    
    public final int _id;
    public final boolean _isNumber;
    public final boolean _isScalar;
    public final boolean _isStructEnd;
    public final boolean _isStructStart;
    public final String _serialized;
    public final byte[] _serializedBytes;
    public final char[] _serializedChars;

    JsonToken(String str, int i) {
        if (str == null) {
            this._serialized = null;
            this._serializedChars = null;
            this._serializedBytes = null;
        } else {
            this._serialized = str;
            this._serializedChars = str.toCharArray();
            int length = this._serializedChars.length;
            this._serializedBytes = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this._serializedBytes[i2] = (byte) this._serializedChars[i2];
            }
        }
        this._id = i;
        if (i != 10) {
        }
        this._isNumber = i == 7 || i == 8;
        this._isStructStart = i == 1 || i == 3;
        this._isStructEnd = i == 2 || i == 4;
        boolean z = false;
        if (!this._isStructStart) {
            z = false;
            if (!this._isStructEnd) {
                z = false;
                if (i != 5) {
                    z = false;
                    if (i != -1) {
                        z = true;
                    }
                }
            }
        }
        this._isScalar = z;
    }

    public final char[] asCharArray() {
        return this._serializedChars;
    }

    public final String asString() {
        return this._serialized;
    }

    /* renamed from: id */
    public final int m33768id() {
        return this._id;
    }

    public final boolean isNumeric() {
        return this._isNumber;
    }

    public final boolean isScalarValue() {
        return this._isScalar;
    }

    public final boolean isStructEnd() {
        return this._isStructEnd;
    }

    public final boolean isStructStart() {
        return this._isStructStart;
    }
}
