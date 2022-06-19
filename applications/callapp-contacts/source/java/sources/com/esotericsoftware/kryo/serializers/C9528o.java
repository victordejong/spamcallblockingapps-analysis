package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p277b.C9379a;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
/* renamed from: com.esotericsoftware.kryo.serializers.o */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o.class */
public final class C9528o extends C9504m {

    /* renamed from: com.esotericsoftware.kryo.serializers.o$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$a.class */
    public static final class C9529a extends FieldSerializer.AbstractC9420b {
        public C9529a(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putBoolean(obj, this.f32378k, c9374a.m24435l());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24414a(C9379a.f32220a.getBoolean(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putBoolean(obj2, this.f32378k, C9379a.f32220a.getBoolean(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$b.class */
    public static final class C9530b extends FieldSerializer.AbstractC9420b {
        public C9530b(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putByte(obj, this.f32378k, c9374a.m24455c());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24424a(C9379a.f32220a.getByte(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putByte(obj2, this.f32378k, C9379a.f32220a.getByte(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$c.class */
    public static final class C9531c extends FieldSerializer.AbstractC9420b {
        public C9531c(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putChar(obj, this.f32378k, c9374a.m24437k());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24423a(C9379a.f32220a.getChar(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putChar(obj2, this.f32378k, C9379a.f32220a.getChar(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$d.class */
    public static final class C9532d extends FieldSerializer.AbstractC9420b {
        public C9532d(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putDouble(obj, this.f32378k, c9374a.m24441i());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24422a(C9379a.f32220a.getDouble(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putDouble(obj2, this.f32378k, C9379a.f32220a.getDouble(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$e.class */
    public static final class C9533e extends FieldSerializer.AbstractC9420b {
        public C9533e(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putFloat(obj, this.f32378k, c9374a.m24443h());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24421a(C9379a.f32220a.getFloat(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putFloat(obj2, this.f32378k, C9379a.f32220a.getFloat(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$f */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$f.class */
    public static final class C9534f extends FieldSerializer.AbstractC9420b {
        public C9534f(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            if (this.f32373f) {
                C9379a.f32220a.putInt(obj, this.f32378k, c9374a.m24456b(false));
            } else {
                C9379a.f32220a.putInt(obj, this.f32378k, c9374a.m24452d());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            if (this.f32373f) {
                c9376c.m24402b(C9379a.f32220a.getInt(obj, this.f32378k), false);
            } else {
                c9376c.m24403b(C9379a.f32220a.getInt(obj, this.f32378k));
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putInt(obj2, this.f32378k, C9379a.f32220a.getInt(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$g */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$g.class */
    public static final class C9535g extends FieldSerializer.AbstractC9420b {
        public C9535g(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            if (this.f32373f) {
                C9379a.f32220a.putLong(obj, this.f32378k, c9374a.m24453c(false));
            } else {
                C9379a.f32220a.putLong(obj, this.f32378k, c9374a.m24445g());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            if (this.f32373f) {
                c9376c.m24417a(C9379a.f32220a.getLong(obj, this.f32378k), false);
            } else {
                c9376c.m24418a(C9379a.f32220a.getLong(obj, this.f32378k));
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putLong(obj2, this.f32378k, C9379a.f32220a.getLong(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$h */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$h.class */
    public static final class C9536h extends FieldSerializer.AbstractC9420b {
        public C9536h(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putShort(obj, this.f32378k, c9374a.m24439j());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24399c(C9379a.f32220a.getShort(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putShort(obj2, this.f32378k, C9379a.f32220a.getShort(obj, this.f32378k));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.o$i */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/o$i.class */
    public static final class C9537i extends FieldSerializer.AbstractC9420b {
        public C9537i(Field field) {
            super(field);
            this.f32378k = C9379a.f32220a.objectFieldOffset(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            C9379a.f32220a.putObject(obj, this.f32378k, c9374a.m24433m());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            c9376c.m24416a((String) C9379a.f32220a.getObject(obj, this.f32378k));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            C9379a.f32220a.putObject(obj2, this.f32378k, C9379a.f32220a.getObject(obj, this.f32378k));
        }
    }

    public C9528o(Field field, FieldSerializer fieldSerializer, AbstractC9388e.C9389a c9389a) {
        super(field, fieldSerializer, c9389a);
        this.f32378k = C9379a.f32220a.objectFieldOffset(field);
    }

    @Override // com.esotericsoftware.kryo.serializers.C9504m
    /* renamed from: a */
    public final Object mo24205a(Object obj) throws IllegalAccessException {
        return C9379a.f32220a.getObject(obj, this.f32378k);
    }

    @Override // com.esotericsoftware.kryo.serializers.C9504m
    /* renamed from: a */
    public final void mo24204a(Object obj, Object obj2) throws IllegalAccessException {
        C9379a.f32220a.putObject(obj, this.f32378k, obj2);
    }

    @Override // com.esotericsoftware.kryo.serializers.C9504m, com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
    /* renamed from: b */
    public final void mo24201b(Object obj, Object obj2) {
        try {
            C9379a.f32220a.putObject(obj2, this.f32378k, this.f32422l.kryo.m24373b((C9380c) C9379a.f32220a.getObject(obj, this.f32378k)));
        } catch (KryoException e) {
            e.m24463a(this + " (" + this.f32422l.type.getName() + ")");
            throw e;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a(this + " (" + this.f32422l.type.getName() + ")");
            throw kryoException;
        }
    }
}
