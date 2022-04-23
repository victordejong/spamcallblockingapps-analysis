package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.h;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k.class */
public final class k {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$a.class */
    public static class a extends i<OptionalDouble> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return aVar.l() ? OptionalDouble.of(aVar.i()) : OptionalDouble.empty();
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            OptionalDouble optionalDouble = (OptionalDouble) obj;
            cVar2.a(optionalDouble.isPresent());
            if (optionalDouble.isPresent()) {
                cVar2.a(optionalDouble.getAsDouble());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$b.class */
    public static class b extends i<OptionalInt> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return aVar.l() ? OptionalInt.of(aVar.d()) : OptionalInt.empty();
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            OptionalInt optionalInt = (OptionalInt) obj;
            cVar2.a(optionalInt.isPresent());
            if (optionalInt.isPresent()) {
                cVar2.b(optionalInt.getAsInt());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$c.class */
    public static class c extends i<OptionalLong> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return aVar.l() ? OptionalLong.of(aVar.g()) : OptionalLong.empty();
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            OptionalLong optionalLong = (OptionalLong) obj;
            cVar2.a(optionalLong.isPresent());
            if (optionalLong.isPresent()) {
                cVar2.a(optionalLong.getAsLong());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/k$d.class */
    public static class d extends h<Optional> {
        public d() {
            setAcceptsNull(false);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Optional copy(com.esotericsoftware.kryo.c cVar, Optional optional) {
            Optional optional2 = optional;
            return optional2.isPresent() ? Optional.of(cVar.b((com.esotericsoftware.kryo.c) optional2.get())) : optional2;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Optional read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Optional> cls) {
            return Optional.ofNullable(cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Optional optional) {
            Optional optional2 = optional;
            cVar.a(cVar2, optional2.isPresent() ? optional2.get() : null);
        }
    }
}
