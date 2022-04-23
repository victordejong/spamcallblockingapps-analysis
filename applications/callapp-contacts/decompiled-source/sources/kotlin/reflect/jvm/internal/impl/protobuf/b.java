package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/b.class */
public abstract class b<MessageType extends p> implements r<MessageType> {

    /* renamed from: a  reason: collision with root package name */
    private static final f f38111a = f.b();

    private static MessageType a(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.e()) {
            return messagetype;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException((messagetype instanceof a ? new UninitializedMessageException((a) messagetype) : new UninitializedMessageException(messagetype)).getMessage());
        invalidProtocolBufferException.f38108a = messagetype;
        throw invalidProtocolBufferException;
    }

    private MessageType b(d dVar, f fVar) throws InvalidProtocolBufferException {
        try {
            e g = dVar.g();
            MessageType messagetype = (MessageType) ((p) a(g, fVar));
            try {
                g.a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e) {
                e.f38108a = messagetype;
                throw e;
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    private MessageType c(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        e a2 = e.a(inputStream);
        MessageType messagetype = (MessageType) ((p) a(a2, fVar));
        try {
            a2.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e) {
            e.f38108a = messagetype;
            throw e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
        if (r11 >= 64) goto L_0x008d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
        r0 = r7.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
        if (r0 == (-1)) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
        if ((r0 & 128) != 0) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0083, code lost:
        r11 = r11 + 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008c, code lost:
        throw kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
        throw kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.c();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private MessageType d(java.io.InputStream r7, kotlin.reflect.jvm.internal.impl.protobuf.f r8) throws kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.read()     // Catch: IOException -> 0x0091
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 != r1) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r9
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0017
            goto L_0x0074
        L_0x0017:
            r0 = r9
            r1 = 127(0x7f, float:1.78E-43)
            r0 = r0 & r1
            r9 = r0
            r0 = 7
            r10 = r0
        L_0x0020:
            r0 = r10
            r11 = r0
            r0 = r10
            r1 = 32
            if (r0 >= r1) goto L_0x0058
            r0 = r7
            int r0 = r0.read()     // Catch: IOException -> 0x0091
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 == r1) goto L_0x0054
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
            if (r0 != 0) goto L_0x004e
            goto L_0x0074
        L_0x004e:
            int r10 = r10 + 7
            goto L_0x0020
        L_0x0054:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.a()     // Catch: IOException -> 0x0091
            throw r0     // Catch: IOException -> 0x0091
        L_0x0058:
            r0 = r11
            r1 = 64
            if (r0 >= r1) goto L_0x008d
            r0 = r7
            int r0 = r0.read()     // Catch: IOException -> 0x0091
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x0089
            r0 = r10
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0083
        L_0x0074:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.protobuf.a$a$a r1 = new kotlin.reflect.jvm.internal.impl.protobuf.a$a$a
            r2 = r1
            r3 = r7
            r4 = r9
            r2.<init>(r3, r4)
            r2 = r8
            kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.c(r1, r2)
            return r0
        L_0x0083:
            int r11 = r11 + 7
            goto L_0x0058
        L_0x0089:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.a()     // Catch: IOException -> 0x0091
            throw r0     // Catch: IOException -> 0x0091
        L_0x008d:
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException.c()     // Catch: IOException -> 0x0091, IOException -> 0x0091
            throw r0     // Catch: IOException -> 0x0091
        L_0x0091:
            r7 = move-exception
            kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException r0 = new kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.getMessage()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.b.d(java.io.InputStream, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.protobuf.p");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
    public final /* synthetic */ Object a(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        return a(d(inputStream, fVar));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
    public final /* synthetic */ Object a(d dVar, f fVar) throws InvalidProtocolBufferException {
        return a(b(dVar, fVar));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
    public final /* synthetic */ Object b(InputStream inputStream, f fVar) throws InvalidProtocolBufferException {
        return a(c(inputStream, fVar));
    }
}
