package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m.class */
public class m extends FieldSerializer.b {
    final FieldSerializer l;
    final e.a m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$a.class */
    public static final class a extends FieldSerializer.b {
        public a(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setBoolean(obj, aVar.l());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.a(this.f19046a.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setBoolean(obj2, this.f19046a.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (boolean)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$b.class */
    public static final class b extends FieldSerializer.b {
        public b(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setByte(obj, aVar.c());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.a(this.f19046a.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setByte(obj2, this.f19046a.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (byte)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$c.class */
    public static final class c extends FieldSerializer.b {
        public c(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setChar(obj, aVar.k());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.a(this.f19046a.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setChar(obj2, this.f19046a.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (char)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$d.class */
    public static final class d extends FieldSerializer.b {
        public d(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setDouble(obj, aVar.i());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.a(this.f19046a.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setDouble(obj2, this.f19046a.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (double)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$e.class */
    public static final class e extends FieldSerializer.b {
        public e(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setFloat(obj, aVar.h());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.a(this.f19046a.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setFloat(obj2, this.f19046a.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (float)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$f.class */
    public static final class f extends FieldSerializer.b {
        public f(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                if (this.f) {
                    this.f19046a.setInt(obj, aVar.b(false));
                } else {
                    this.f19046a.setInt(obj, aVar.d());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                if (this.f) {
                    cVar.b(this.f19046a.getInt(obj), false);
                } else {
                    cVar.b(this.f19046a.getInt(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setInt(obj2, this.f19046a.getInt(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (int)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$g.class */
    public static final class g extends FieldSerializer.b {
        public g(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                if (this.f) {
                    this.f19046a.setLong(obj, aVar.c(false));
                } else {
                    this.f19046a.setLong(obj, aVar.g());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                if (this.f) {
                    cVar.a(this.f19046a.getLong(obj), false);
                } else {
                    cVar.a(this.f19046a.getLong(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setLong(obj2, this.f19046a.getLong(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (long)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$h.class */
    public static final class h extends FieldSerializer.b {
        public h(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
            try {
                this.f19046a.setShort(obj, aVar.j());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
            try {
                cVar.c(this.f19046a.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
        public final void b(Object obj, Object obj2) {
            try {
                this.f19046a.setShort(obj2, this.f19046a.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.a(this.f19047b + " (short)");
                throw kryoException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Field field, FieldSerializer fieldSerializer, e.a aVar) {
        super(field);
        this.l = fieldSerializer;
        this.m = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class a() {
        Class a2;
        return (this.f19048c != null || (a2 = this.m.a(this.l.kryo.getGenerics())) == null || !com.esotericsoftware.kryo.c.f(a2)) ? this.f19048c : a2;
    }

    public Object a(Object obj) throws IllegalAccessException {
        return this.f19046a.get(obj);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
    public final void a(com.esotericsoftware.kryo.a.a aVar, Object obj) {
        Object obj2;
        com.esotericsoftware.kryo.c cVar = this.l.kryo;
        try {
            com.esotericsoftware.kryo.h hVar = this.f19049d;
            Class a2 = a();
            if (a2 == null) {
                com.esotericsoftware.kryo.g a3 = cVar.a(aVar);
                if (a3 == null) {
                    a(obj, (Object) null);
                    return;
                }
                com.esotericsoftware.kryo.h hVar2 = hVar;
                if (hVar == null) {
                    hVar2 = a3.f19042d;
                }
                cVar.getGenerics().a(this.m);
                obj2 = cVar.a(aVar, a3.f19039a, hVar2);
            } else {
                com.esotericsoftware.kryo.h hVar3 = hVar;
                if (hVar == null) {
                    com.esotericsoftware.kryo.h d2 = cVar.d(a2);
                    hVar3 = d2;
                    if (this.f19048c != null) {
                        hVar3 = d2;
                        if (this.h) {
                            this.f19049d = d2;
                            hVar3 = d2;
                        }
                    }
                }
                cVar.getGenerics().a(this.m);
                obj2 = this.e ? cVar.b(aVar, a2, hVar3) : cVar.a(aVar, a2, hVar3);
            }
            cVar.getGenerics().a();
            a(obj, obj2);
        } catch (KryoException e2) {
            e2.a(this.f19047b + " (" + this.l.type.getName() + ")");
            throw e2;
        } catch (IllegalAccessException e3) {
            throw new KryoException("Error accessing field: " + this.f19047b + " (" + this.l.type.getName() + ")", e3);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a(this.f19047b + " (" + this.l.type.getName() + ")");
            throw kryoException;
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
    public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
        com.esotericsoftware.kryo.h hVar;
        com.esotericsoftware.kryo.c cVar2 = this.l.kryo;
        try {
            Object a2 = a(obj);
            com.esotericsoftware.kryo.h hVar2 = this.f19049d;
            Class a3 = a();
            if (a3 != null) {
                hVar = hVar2;
                if (hVar2 == null) {
                    com.esotericsoftware.kryo.h d2 = cVar2.d(a3);
                    hVar = d2;
                    if (this.f19048c != null) {
                        hVar = d2;
                        if (this.h) {
                            this.f19049d = d2;
                            hVar = d2;
                        }
                    }
                }
                cVar2.getGenerics().a(this.m);
                if (this.e) {
                    cVar2.b(cVar, a2, hVar);
                    cVar2.getGenerics().a();
                } else if (a2 == null) {
                    throw new KryoException("Field value cannot be null when canBeNull is false: " + this.f19047b + " (" + obj.getClass().getName() + ")");
                }
            } else if (a2 == null) {
                cVar2.a(cVar, (Class) null);
                return;
            } else {
                com.esotericsoftware.kryo.g a4 = cVar2.a(cVar, (Class) a2.getClass());
                hVar = hVar2;
                if (hVar2 == null) {
                    hVar = a4.f19042d;
                }
                cVar2.getGenerics().a(this.m);
            }
            cVar2.a(cVar, a2, hVar);
            cVar2.getGenerics().a();
        } catch (KryoException e2) {
            e2.a(this.f19047b + " (" + obj.getClass().getName() + ")");
            throw e2;
        } catch (IllegalAccessException e3) {
            throw new KryoException("Error accessing field: " + this.f19047b + " (" + obj.getClass().getName() + ")", e3);
        } catch (StackOverflowError e4) {
            throw new KryoException("A StackOverflow occurred. The most likely cause is that your data has a circular reference resulting in infinite recursion. Try enabling references with Kryo.setReferences(true). If your data structure is really more than " + cVar2.getDepth() + " levels deep then try increasing your Java stack size.", e4);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a(this.f19047b + " (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    public void a(Object obj, Object obj2) throws IllegalAccessException {
        this.f19046a.set(obj, obj2);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.b
    public void b(Object obj, Object obj2) {
        try {
            a(obj2, this.l.kryo.b((com.esotericsoftware.kryo.c) a(obj)));
        } catch (KryoException e2) {
            e2.a(this.f19047b + " (" + this.l.type.getName() + ")");
            throw e2;
        } catch (IllegalAccessException e3) {
            throw new KryoException("Error accessing field: " + this.f19047b + " (" + this.l.type.getName() + ")", e3);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a(this.f19047b + " (" + this.l.type.getName() + ")");
            throw kryoException;
        }
    }
}
