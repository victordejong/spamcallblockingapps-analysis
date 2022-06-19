package kotlin.reflect.jvm.internal.impl.protobuf;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x.class */
public final class C19728x {

    /* renamed from: a */
    static final int f65916a = 11;

    /* renamed from: b */
    static final int f65917b = 12;

    /* renamed from: c */
    static final int f65918c = 16;

    /* renamed from: d */
    static final int f65919d = 26;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.x$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x$a.class */
    public enum EnumC19730a {
        DOUBLE(EnumC19735b.DOUBLE, 1),
        FLOAT(EnumC19735b.FLOAT, 5),
        INT64(EnumC19735b.LONG, 0),
        UINT64(EnumC19735b.LONG, 0),
        INT32(EnumC19735b.INT, 0),
        FIXED64(EnumC19735b.LONG, 1),
        FIXED32(EnumC19735b.INT, 5),
        BOOL(EnumC19735b.BOOLEAN, 0),
        STRING(EnumC19735b.STRING, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19728x.EnumC19730a
            public final boolean isPackable() {
                return false;
            }
        },
        GROUP(EnumC19735b.MESSAGE, 3) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.2
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19728x.EnumC19730a
            public final boolean isPackable() {
                return false;
            }
        },
        MESSAGE(EnumC19735b.MESSAGE, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.3
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19728x.EnumC19730a
            public final boolean isPackable() {
                return false;
            }
        },
        BYTES(EnumC19735b.BYTE_STRING, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.4
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19728x.EnumC19730a
            public final boolean isPackable() {
                return false;
            }
        },
        UINT32(EnumC19735b.INT, 0),
        ENUM(EnumC19735b.ENUM, 0),
        SFIXED32(EnumC19735b.INT, 5),
        SFIXED64(EnumC19735b.LONG, 1),
        SINT32(EnumC19735b.INT, 0),
        SINT64(EnumC19735b.LONG, 0);
        
        private final EnumC19735b javaType;
        private final int wireType;

        EnumC19730a(EnumC19735b enumC19735b, int i) {
            this.javaType = enumC19735b;
            this.wireType = i;
        }

        public EnumC19735b getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.x$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x$b.class */
    public enum EnumC19735b {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(AbstractC19673d.f65805b),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        EnumC19735b(Object obj) {
            this.defaultDefault = obj;
        }
    }

    /* renamed from: a */
    public static int m1591a(int i) {
        return i & 7;
    }

    /* renamed from: a */
    public static int m1590a(int i, int i2) {
        return (i << 3) | i2;
    }

    /* renamed from: b */
    public static int m1589b(int i) {
        return i >>> 3;
    }
}
