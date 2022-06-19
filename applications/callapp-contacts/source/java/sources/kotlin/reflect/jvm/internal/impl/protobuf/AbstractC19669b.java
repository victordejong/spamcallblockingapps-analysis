package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/b.class */
public abstract class AbstractC19669b<MessageType extends AbstractC19705p> implements AbstractC19708r<MessageType> {

    /* renamed from: a */
    private static final C19678f f65799a = C19678f.m1732b();

    /* renamed from: a */
    private static MessageType m1777a(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.mo1655e()) {
            return messagetype;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException((messagetype instanceof AbstractC19666a ? new UninitializedMessageException((AbstractC19666a) messagetype) : new UninitializedMessageException(messagetype)).getMessage());
        invalidProtocolBufferException.f65795a = messagetype;
        throw invalidProtocolBufferException;
    }

    /* renamed from: b */
    private MessageType m1776b(AbstractC19673d abstractC19673d, C19678f c19678f) throws InvalidProtocolBufferException {
        try {
            C19676e mo1636g = abstractC19673d.mo1636g();
            MessageType messagetype = (MessageType) mo1651a(mo1636g, c19678f);
            try {
                mo1636g.m1758a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e) {
                e.f65795a = messagetype;
                throw e;
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    /* renamed from: c */
    private MessageType m1775c(InputStream inputStream, C19678f c19678f) throws InvalidProtocolBufferException {
        C19676e m1755a = C19676e.m1755a(inputStream);
        MessageType messagetype = (MessageType) mo1651a(m1755a, c19678f);
        try {
            m1755a.m1758a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e) {
            e.f65795a = messagetype;
            throw e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
        if (r11 >= 64) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
        r0 = r7.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
        if (r0 == (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
        if ((r0 & 128) != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0083, code lost:
        r11 = r11 + 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
        throw kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.m1788a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
        throw kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.m1786c();
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private MessageType m1774d(java.io.InputStream r7, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r8) throws kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.read()     // Catch: java.io.IOException -> L91
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 != r1) goto Lc
            r0 = 0
            return r0
        Lc:
            r0 = r9
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L17
            goto L74
        L17:
            r0 = r9
            r1 = 127(0x7f, float:1.78E-43)
            r0 = r0 & r1
            r9 = r0
            r0 = 7
            r10 = r0
        L20:
            r0 = r10
            r11 = r0
            r0 = r10
            r1 = 32
            if (r0 >= r1) goto L58
            r0 = r7
            int r0 = r0.read()     // Catch: java.io.IOException -> L91
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 == r1) goto L54
            r0 = r9
            r1 = r11
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r2 = r10
            int r1 = r1 << r2
            r0 = r0 | r1
            r9 = r0
            r0 = r11
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L4e
            goto L74
        L4e:
            int r10 = r10 + 7
            goto L20
        L54:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.m1788a()     // Catch: java.io.IOException -> L91
            throw r0     // Catch: java.io.IOException -> L91
        L58:
            r0 = r11
            r1 = 64
            if (r0 >= r1) goto L8d
            r0 = r7
            int r0 = r0.read()     // Catch: java.io.IOException -> L91
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L89
            r0 = r10
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L83
        L74:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.protobuf.a$a$a r1 = new kotlin.reflect.jvm.internal.impl.protobuf.a$a$a
            r2 = r1
            r3 = r7
            r4 = r9
            r2.<init>(r3, r4)
            r2 = r8
            kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.m1775c(r1, r2)
            return r0
        L83:
            int r11 = r11 + 7
            goto L58
        L89:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.m1788a()     // Catch: java.io.IOException -> L91
            throw r0     // Catch: java.io.IOException -> L91
        L8d:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.m1786c()     // Catch: java.io.IOException -> L91 java.io.IOException -> L91
            throw r0     // Catch: java.io.IOException -> L91
        L91:
            r7 = move-exception
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = new kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.getMessage()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19669b.m1774d(java.io.InputStream, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.protobuf.p");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
    /* renamed from: a */
    public final /* synthetic */ Object mo1653a(InputStream inputStream, C19678f c19678f) throws InvalidProtocolBufferException {
        return m1777a(m1774d(inputStream, c19678f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
    /* renamed from: a */
    public final /* synthetic */ Object mo1652a(AbstractC19673d abstractC19673d, C19678f c19678f) throws InvalidProtocolBufferException {
        return m1777a(m1776b(abstractC19673d, c19678f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
    /* renamed from: b */
    public final /* synthetic */ Object mo1650b(InputStream inputStream, C19678f c19678f) throws InvalidProtocolBufferException {
        return m1777a(m1775c(inputStream, c19678f));
    }
}
