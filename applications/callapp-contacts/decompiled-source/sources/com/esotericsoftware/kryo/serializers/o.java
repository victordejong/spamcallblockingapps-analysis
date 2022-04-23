package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o.class */
public final class o extends m {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$a.class */
    public static final class a extends FieldSerializer.b {
        public a(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putBoolean(obj, this.k, aVar.l());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getBoolean(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putBoolean(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getBoolean(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$b.class */
    public static final class b extends FieldSerializer.b {
        public b(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putByte(obj, this.k, aVar.c());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getByte(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putByte(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getByte(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$c.class */
    public static final class c extends FieldSerializer.b {
        public c(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putChar(obj, this.k, aVar.k());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getChar(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putChar(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getChar(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$d.class */
    public static final class d extends FieldSerializer.b {
        public d(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putDouble(obj, this.k, aVar.i());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getDouble(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putDouble(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getDouble(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$e.class */
    public static final class e extends FieldSerializer.b {
        public e(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putFloat(obj, this.k, aVar.h());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getFloat(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putFloat(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getFloat(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$f.class */
    public static final class f extends FieldSerializer.b {
        public f(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            if (this.f) {
                com.esotericsoftware.kryo.b.a.f18964a.putInt(obj, this.k, aVar.b(false));
            } else {
                com.esotericsoftware.kryo.b.a.f18964a.putInt(obj, this.k, aVar.d());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            if (this.f) {
                cVar.b(com.esotericsoftware.kryo.b.a.f18964a.getInt(obj, this.k), false);
            } else {
                cVar.b(com.esotericsoftware.kryo.b.a.f18964a.getInt(obj, this.k));
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putInt(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getInt(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$g.class */
    public static final class g extends FieldSerializer.b {
        public g(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            if (this.f) {
                com.esotericsoftware.kryo.b.a.f18964a.putLong(obj, this.k, aVar.c(false));
            } else {
                com.esotericsoftware.kryo.b.a.f18964a.putLong(obj, this.k, aVar.g());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            if (this.f) {
                cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getLong(obj, this.k), false);
            } else {
                cVar.a(com.esotericsoftware.kryo.b.a.f18964a.getLong(obj, this.k));
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putLong(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getLong(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$h.class */
    public static final class h extends FieldSerializer.b {
        public h(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putShort(obj, this.k, aVar.j());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.c(com.esotericsoftware.kryo.b.a.f18964a.getShort(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putShort(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getShort(obj, this.k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$i.class */
    public static final class i extends FieldSerializer.b {
        public i(Field field) {
            super(field);
            this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            com.esotericsoftware.kryo.b.a.f18964a.putObject(obj, this.k, aVar.m());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a((String) com.esotericsoftware.kryo.b.a.f18964a.getObject(obj, this.k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            com.esotericsoftware.kryo.b.a.f18964a.putObject(obj2, this.k, com.esotericsoftware.kryo.b.a.f18964a.getObject(obj, this.k));
        }
    }

    public o(Field field, FieldSerializer fieldSerializer, e.a aVar) {
        super(field, fieldSerializer, aVar);
        this.k = com.esotericsoftware.kryo.b.a.f18964a.objectFieldOffset(field);
    }

    @Override // com.esotericsoftware.kryo.serializers.m
    public final Object a(Object obj) throws IllegalAccessException {
        return com.esotericsoftware.kryo.b.a.f18964a.getObject(obj, this.k);
    }

    @Override // com.esotericsoftware.kryo.serializers.m
    public final void a(Object obj, Object obj2) throws IllegalAccessException {
        com.esotericsoftware.kryo.b.a.f18964a.putObject(obj, this.k, obj2);
    }

    @Override // com.esotericsoftware.kryo.serializers.m, com.esotericsoftware.kryo.serializers.FieldSerializer.b
    public final void b(Object obj, Object obj2) {
        try {
            com.esotericsoftware.kryo.b.a.f18964a.putObject(obj2, this.k, this.l.kryo.b((com.esotericsoftware.kryo.c) com.esotericsoftware.kryo.b.a.f18964a.getObject(obj, this.k)));
        } catch (KryoException e2) {
            e2.a(this + " (" + this.l.type.getName() + ")");
            throw e2;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a(this + " (" + this.l.type.getName() + ")");
            throw kryoException;
        }
    }
}
