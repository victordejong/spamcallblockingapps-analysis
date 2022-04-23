package kotlin.reflect.jvm.internal.impl.protobuf;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    static final int f38203a = 11;

    /* renamed from: b  reason: collision with root package name */
    static final int f38204b = 12;

    /* renamed from: c  reason: collision with root package name */
    static final int f38205c = 16;

    /* renamed from: d  reason: collision with root package name */
    static final int f38206d = 26;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x$a.class */
    public enum a {
        DOUBLE(b.DOUBLE, 1),
        FLOAT(b.FLOAT, 5),
        INT64(b.LONG, 0),
        UINT64(b.LONG, 0),
        INT32(b.INT, 0),
        FIXED64(b.LONG, 1),
        FIXED32(b.INT, 5),
        BOOL(b.BOOLEAN, 0),
        STRING(b.STRING, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.x.a
            public final boolean isPackable() {
                return false;
            }
        },
        GROUP(b.MESSAGE, 3) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.2
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.x.a
            public final boolean isPackable() {
                return false;
            }
        },
        MESSAGE(b.MESSAGE, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.3
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.x.a
            public final boolean isPackable() {
                return false;
            }
        },
        BYTES(b.BYTE_STRING, 2) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.x.a.4
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.x.a
            public final boolean isPackable() {
                return false;
            }
        },
        UINT32(b.INT, 0),
        ENUM(b.ENUM, 0),
        SFIXED32(b.INT, 5),
        SFIXED64(b.LONG, 1),
        SINT32(b.INT, 0),
        SINT64(b.LONG, 0);
        
        private final b javaType;
        private final int wireType;

        a(b bVar, int i) {
            this.javaType = bVar;
            this.wireType = i;
        }

        public b getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/x$b.class */
    public enum b {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(d.f38116b),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        b(Object obj) {
            this.defaultDefault = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        return i & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int b(int i) {
        return i >>> 3;
    }
}
