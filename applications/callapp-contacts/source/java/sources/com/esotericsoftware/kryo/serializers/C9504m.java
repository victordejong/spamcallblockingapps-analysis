package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.C9412g;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
/* renamed from: com.esotericsoftware.kryo.serializers.m */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m.class */
public class C9504m extends FieldSerializer.AbstractC9420b {

    /* renamed from: l */
    final FieldSerializer f32422l;

    /* renamed from: m */
    final AbstractC9388e.C9389a f32423m;

    /* renamed from: com.esotericsoftware.kryo.serializers.m$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$a.class */
    public static final class C9505a extends FieldSerializer.AbstractC9420b {
        public C9505a(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setBoolean(obj, c9374a.m24435l());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24414a(this.f32368a.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (boolean)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setBoolean(obj2, this.f32368a.getBoolean(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (boolean)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$b.class */
    public static final class C9506b extends FieldSerializer.AbstractC9420b {
        public C9506b(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setByte(obj, c9374a.m24455c());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24424a(this.f32368a.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (byte)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setByte(obj2, this.f32368a.getByte(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (byte)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$c.class */
    public static final class C9507c extends FieldSerializer.AbstractC9420b {
        public C9507c(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setChar(obj, c9374a.m24437k());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24423a(this.f32368a.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (char)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setChar(obj2, this.f32368a.getChar(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (char)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$d.class */
    public static final class C9508d extends FieldSerializer.AbstractC9420b {
        public C9508d(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setDouble(obj, c9374a.m24441i());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24422a(this.f32368a.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (double)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setDouble(obj2, this.f32368a.getDouble(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (double)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$e.class */
    public static final class C9509e extends FieldSerializer.AbstractC9420b {
        public C9509e(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setFloat(obj, c9374a.m24443h());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24421a(this.f32368a.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (float)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setFloat(obj2, this.f32368a.getFloat(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (float)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$f */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$f.class */
    public static final class C9510f extends FieldSerializer.AbstractC9420b {
        public C9510f(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                if (this.f32373f) {
                    this.f32368a.setInt(obj, c9374a.m24456b(false));
                } else {
                    this.f32368a.setInt(obj, c9374a.m24452d());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                if (this.f32373f) {
                    c9376c.m24402b(this.f32368a.getInt(obj), false);
                } else {
                    c9376c.m24403b(this.f32368a.getInt(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (int)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setInt(obj2, this.f32368a.getInt(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (int)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$g */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$g.class */
    public static final class C9511g extends FieldSerializer.AbstractC9420b {
        public C9511g(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                if (this.f32373f) {
                    this.f32368a.setLong(obj, c9374a.m24453c(false));
                } else {
                    this.f32368a.setLong(obj, c9374a.m24445g());
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                if (this.f32373f) {
                    c9376c.m24417a(this.f32368a.getLong(obj), false);
                } else {
                    c9376c.m24418a(this.f32368a.getLong(obj));
                }
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (long)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setLong(obj2, this.f32368a.getLong(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (long)");
                throw kryoException;
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.m$h */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/m$h.class */
    public static final class C9512h extends FieldSerializer.AbstractC9420b {
        public C9512h(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24203a(C9374a c9374a, Object obj) {
            try {
                this.f32368a.setShort(obj, c9374a.m24439j());
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: a */
        public final void mo24202a(C9376c c9376c, Object obj) {
            try {
                c9376c.m24399c(this.f32368a.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (short)");
                throw kryoException;
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
        /* renamed from: b */
        public final void mo24201b(Object obj, Object obj2) {
            try {
                this.f32368a.setShort(obj2, this.f32368a.getShort(obj));
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(this.f32369b + " (short)");
                throw kryoException;
            }
        }
    }

    public C9504m(Field field, FieldSerializer fieldSerializer, AbstractC9388e.C9389a c9389a) {
        super(field);
        this.f32422l = fieldSerializer;
        this.f32423m = c9389a;
    }

    /* renamed from: a */
    public final Class m24214a() {
        Class m24341a;
        return (this.f32370c != null || (m24341a = this.f32423m.m24341a(this.f32422l.kryo.getGenerics())) == null || !C9380c.m24369f(m24341a)) ? this.f32370c : m24341a;
    }

    /* renamed from: a */
    public Object mo24205a(Object obj) throws IllegalAccessException {
        return this.f32368a.get(obj);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
    /* renamed from: a */
    public final void mo24203a(C9374a c9374a, Object obj) {
        Object obj2;
        C9380c c9380c = this.f32422l.kryo;
        try {
            AbstractC9413h abstractC9413h = this.f32371d;
            Class m24214a = m24214a();
            if (m24214a == null) {
                C9412g m24393a = c9380c.m24393a(c9374a);
                if (m24393a == null) {
                    mo24204a(obj, (Object) null);
                    return;
                }
                AbstractC9413h abstractC9413h2 = abstractC9413h;
                if (abstractC9413h == null) {
                    abstractC9413h2 = m24393a.f32363d;
                }
                c9380c.getGenerics().mo24346a(this.f32423m);
                obj2 = c9380c.m24391a(c9374a, m24393a.f32360a, abstractC9413h2);
            } else {
                AbstractC9413h abstractC9413h3 = abstractC9413h;
                if (abstractC9413h == null) {
                    AbstractC9413h m24371d = c9380c.m24371d(m24214a);
                    abstractC9413h3 = m24371d;
                    if (this.f32370c != null) {
                        abstractC9413h3 = m24371d;
                        if (this.f32375h) {
                            this.f32371d = m24371d;
                            abstractC9413h3 = m24371d;
                        }
                    }
                }
                c9380c.getGenerics().mo24346a(this.f32423m);
                obj2 = this.f32372e ? c9380c.m24377b(c9374a, m24214a, abstractC9413h3) : c9380c.m24391a(c9374a, m24214a, abstractC9413h3);
            }
            c9380c.getGenerics().mo24348a();
            mo24204a(obj, obj2);
        } catch (KryoException e) {
            e.m24463a(this.f32369b + " (" + this.f32422l.type.getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f32369b + " (" + this.f32422l.type.getName() + ")", e2);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a(this.f32369b + " (" + this.f32422l.type.getName() + ")");
            throw kryoException;
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
    /* renamed from: a */
    public final void mo24202a(C9376c c9376c, Object obj) {
        AbstractC9413h abstractC9413h;
        C9380c c9380c = this.f32422l.kryo;
        try {
            Object mo24205a = mo24205a(obj);
            AbstractC9413h abstractC9413h2 = this.f32371d;
            Class m24214a = m24214a();
            if (m24214a != null) {
                abstractC9413h = abstractC9413h2;
                if (abstractC9413h2 == null) {
                    AbstractC9413h m24371d = c9380c.m24371d(m24214a);
                    abstractC9413h = m24371d;
                    if (this.f32370c != null) {
                        abstractC9413h = m24371d;
                        if (this.f32375h) {
                            this.f32371d = m24371d;
                            abstractC9413h = m24371d;
                        }
                    }
                }
                c9380c.getGenerics().mo24346a(this.f32423m);
                if (this.f32372e) {
                    c9380c.m24376b(c9376c, mo24205a, abstractC9413h);
                    c9380c.getGenerics().mo24348a();
                } else if (mo24205a == null) {
                    throw new KryoException("Field value cannot be null when canBeNull is false: " + this.f32369b + " (" + obj.getClass().getName() + ")");
                }
            } else if (mo24205a == null) {
                c9380c.m24389a(c9376c, (Class) null);
                return;
            } else {
                C9412g m24389a = c9380c.m24389a(c9376c, (Class) mo24205a.getClass());
                abstractC9413h = abstractC9413h2;
                if (abstractC9413h2 == null) {
                    abstractC9413h = m24389a.f32363d;
                }
                c9380c.getGenerics().mo24346a(this.f32423m);
            }
            c9380c.m24387a(c9376c, mo24205a, abstractC9413h);
            c9380c.getGenerics().mo24348a();
        } catch (KryoException e) {
            e.m24463a(this.f32369b + " (" + obj.getClass().getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f32369b + " (" + obj.getClass().getName() + ")", e2);
        } catch (StackOverflowError e3) {
            throw new KryoException("A StackOverflow occurred. The most likely cause is that your data has a circular reference resulting in infinite recursion. Try enabling references with Kryo.setReferences(true). If your data structure is really more than " + c9380c.getDepth() + " levels deep then try increasing your Java stack size.", e3);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a(this.f32369b + " (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: a */
    public void mo24204a(Object obj, Object obj2) throws IllegalAccessException {
        this.f32368a.set(obj, obj2);
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.AbstractC9420b
    /* renamed from: b */
    public void mo24201b(Object obj, Object obj2) {
        try {
            mo24204a(obj2, this.f32422l.kryo.m24373b((C9380c) mo24205a(obj)));
        } catch (KryoException e) {
            e.m24463a(this.f32369b + " (" + this.f32422l.type.getName() + ")");
            throw e;
        } catch (IllegalAccessException e2) {
            throw new KryoException("Error accessing field: " + this.f32369b + " (" + this.f32422l.type.getName() + ")", e2);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a(this.f32369b + " (" + this.f32422l.type.getName() + ")");
            throw kryoException;
        }
    }
}
