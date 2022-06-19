package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException.class */
public class InvalidProtocolBufferException extends IOException {

    /* renamed from: a */
    public AbstractC19705p f65795a = null;

    public InvalidProtocolBufferException(String str) {
        super(str);
    }

    /* renamed from: a */
    public static InvalidProtocolBufferException m1788a() {
        return new InvalidProtocolBufferException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static InvalidProtocolBufferException m1787b() {
        return new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static InvalidProtocolBufferException m1786c() {
        return new InvalidProtocolBufferException("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static InvalidProtocolBufferException m1785d() {
        return new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: e */
    public static InvalidProtocolBufferException m1784e() {
        return new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: f */
    public static InvalidProtocolBufferException m1783f() {
        return new InvalidProtocolBufferException("Protocol message tag had invalid wire type.");
    }

    /* renamed from: g */
    public static InvalidProtocolBufferException m1782g() {
        return new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: h */
    public static InvalidProtocolBufferException m1781h() {
        return new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }
}
