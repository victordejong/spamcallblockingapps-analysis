package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f38154a;

    /* renamed from: b  reason: collision with root package name */
    public static final ByteBuffer f38155b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j$a.class */
    public interface a {
        int getNumber();
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/j$b.class */
    public interface b<T extends a> {
        T a(int i);
    }

    static {
        byte[] bArr = new byte[0];
        f38154a = bArr;
        f38155b = ByteBuffer.wrap(bArr);
    }

    public static boolean a(byte[] bArr) {
        return w.a(bArr, 0, bArr.length);
    }

    public static String b(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }
}
