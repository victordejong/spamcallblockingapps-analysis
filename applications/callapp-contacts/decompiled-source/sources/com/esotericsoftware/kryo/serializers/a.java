package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a.class */
public final class a extends m {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.esotericsoftware.kryo.serializers.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$a.class */
    public static final class C0375a extends FieldSerializer.b {
        public C0375a(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.l();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.d());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$b.class */
    public static final class b extends FieldSerializer.b {
        public b(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.c();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.e());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$c.class */
    public static final class c extends FieldSerializer.b {
        public c(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.k();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.c());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$d.class */
    public static final class d extends FieldSerializer.b {
        public d(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.i();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.i());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$e.class */
    public static final class e extends FieldSerializer.b {
        public e(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.h();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.j());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$f.class */
    public static final class f extends FieldSerializer.b {
        public f(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            if (this.f) {
                aVar.b(false);
            } else {
                aVar.d();
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            if (this.f) {
                cVar.b(this.i.g(), false);
            } else {
                cVar.b(this.i.g());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$g.class */
    public static final class g extends FieldSerializer.b {
        public g(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            if (this.f) {
                aVar.c(false);
            } else {
                aVar.g();
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            if (this.f) {
                cVar.a(this.i.h(), false);
            } else {
                cVar.a(this.i.h());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$h.class */
    public static final class h extends FieldSerializer.b {
        public h(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.j();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.c(this.i.f());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/a$i.class */
    public static final class i extends FieldSerializer.b {
        public i(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            aVar.m();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            cVar.a(this.i.b());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
        }
    }

    public a(Field field, FieldSerializer fieldSerializer, e.a aVar) {
        super(field, fieldSerializer, aVar);
    }

    @Override // com.esotericsoftware.kryo.serializers.m
    public final Object a(Object obj) throws IllegalAccessException {
        return this.i.a();
    }

    @Override // com.esotericsoftware.kryo.serializers.m
    public final void a(Object obj, Object obj2) throws IllegalAccessException {
    }

    @Override // com.esotericsoftware.kryo.serializers.m, com.esotericsoftware.kryo.serializers.FieldSerializer.b
    public final void b(Object obj, Object obj2) {
        try {
            this.l.kryo.b((com.esotericsoftware.kryo.c) this.i.a());
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
