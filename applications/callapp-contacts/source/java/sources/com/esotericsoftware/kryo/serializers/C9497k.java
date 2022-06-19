package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
/* renamed from: com.esotericsoftware.kryo.serializers.k */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k.class */
public final class C9497k {

    /* renamed from: com.esotericsoftware.kryo.serializers.k$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$a.class */
    public static class C9498a extends AbstractC9494i<OptionalDouble> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return c9374a.m24435l() ? OptionalDouble.of(c9374a.m24441i()) : OptionalDouble.empty();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            OptionalDouble optionalDouble = (OptionalDouble) obj;
            c9376c.m24414a(optionalDouble.isPresent());
            if (optionalDouble.isPresent()) {
                c9376c.m24422a(optionalDouble.getAsDouble());
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.k$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$b.class */
    public static class C9499b extends AbstractC9494i<OptionalInt> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return c9374a.m24435l() ? OptionalInt.of(c9374a.m24452d()) : OptionalInt.empty();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            OptionalInt optionalInt = (OptionalInt) obj;
            c9376c.m24414a(optionalInt.isPresent());
            if (optionalInt.isPresent()) {
                c9376c.m24403b(optionalInt.getAsInt());
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.k$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$c.class */
    public static class C9500c extends AbstractC9494i<OptionalLong> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return c9374a.m24435l() ? OptionalLong.of(c9374a.m24445g()) : OptionalLong.empty();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            OptionalLong optionalLong = (OptionalLong) obj;
            c9376c.m24414a(optionalLong.isPresent());
            if (optionalLong.isPresent()) {
                c9376c.m24418a(optionalLong.getAsLong());
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.k$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$d.class */
    public static class C9501d extends AbstractC9413h<Optional> {
        public C9501d() {
            setAcceptsNull(false);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Optional copy(C9380c c9380c, Optional optional) {
            Optional optional2 = optional;
            return optional2.isPresent() ? Optional.of(c9380c.m24373b((C9380c) optional2.get())) : optional2;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Optional read(C9380c c9380c, C9374a c9374a, Class<? extends Optional> cls) {
            return Optional.ofNullable(c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Optional optional) {
            Optional optional2 = optional;
            c9380c.m24388a(c9376c, optional2.isPresent() ? optional2.get() : null);
        }
    }
}
