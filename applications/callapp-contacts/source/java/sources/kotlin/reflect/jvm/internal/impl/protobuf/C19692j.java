package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j.class */
public final class C19692j {

    /* renamed from: a */
    public static final byte[] f65858a;

    /* renamed from: b */
    public static final ByteBuffer f65859b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j$a.class */
    public interface AbstractC19693a {
        int getNumber();
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.j$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j$b.class */
    public interface AbstractC19694b<T extends AbstractC19693a> {
        /* renamed from: a */
        T mo1672a(int i);
    }

    static {
        byte[] bArr = new byte[0];
        f65858a = bArr;
        f65859b = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    public static boolean m1674a(byte[] bArr) {
        return C19727w.m1595a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static String m1673b(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }
}
