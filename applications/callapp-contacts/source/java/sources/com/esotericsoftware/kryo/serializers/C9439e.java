package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.C9412g;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9375b;
import com.esotericsoftware.kryo.p278c.C9404m;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.p274b.C9366a;
/* renamed from: com.esotericsoftware.kryo.serializers.e */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/e.class */
public class C9439e<T> extends FieldSerializer<T> {

    /* renamed from: a */
    private final C9440a f32397a;

    /* renamed from: com.esotericsoftware.kryo.serializers.e$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/e$a.class */
    public static final class C9440a extends FieldSerializer.C9421c {

        /* renamed from: b */
        boolean f32399b;

        /* renamed from: a */
        boolean f32398a = true;

        /* renamed from: c */
        int f32400c = 1024;

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.C9421c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ FieldSerializer.C9421c mo24262a() {
            return (C9440a) super.clone();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.C9421c
        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return (C9440a) super.clone();
        }
    }

    public C9439e(C9380c c9380c, Class cls) {
        this(c9380c, cls, new C9440a());
    }

    public C9439e(C9380c c9380c, Class cls, C9440a c9440a) {
        super(c9380c, cls, c9440a);
        this.f32397a = c9440a;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.AbstractC9413h
    public T read(C9380c c9380c, C9374a c9374a, Class<? extends T> cls) {
        C9375b c9375b;
        C9375b c9375b2;
        int pushTypeVariables = pushTypeVariables();
        T create = create(c9380c, c9374a, cls);
        c9380c.m24381a(create);
        FieldSerializer.AbstractC9420b[] abstractC9420bArr = (FieldSerializer.AbstractC9420b[]) c9380c.getGraphContext().m24308c(this);
        if (abstractC9420bArr == null) {
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Read fields for class: " + this.type.getName());
            }
            int m24456b = c9374a.m24456b(true);
            String[] strArr = new String[m24456b];
            for (int i = 0; i < m24456b; i++) {
                strArr[i] = c9374a.m24433m();
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Read field name: " + strArr[i]);
                }
            }
            abstractC9420bArr = new FieldSerializer.AbstractC9420b[m24456b];
            FieldSerializer.AbstractC9420b[] abstractC9420bArr2 = this.cachedFields.f32389c;
            if (m24456b < 32) {
                for (int i2 = 0; i2 < m24456b; i2++) {
                    String str = strArr[i2];
                    int length = abstractC9420bArr2.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (abstractC9420bArr2[i3].f32369b.equals(str)) {
                                abstractC9420bArr[i2] = abstractC9420bArr2[i3];
                                break;
                            }
                            i3++;
                        } else if (C9366a.f32190e) {
                            C9366a.m24494b("kryo", "Unknown field will be skipped: ".concat(String.valueOf(str)));
                        }
                    }
                }
            } else {
                int length2 = abstractC9420bArr2.length;
                for (int i4 = 0; i4 < m24456b; i4++) {
                    String str2 = strArr[i4];
                    int i5 = 0;
                    int i6 = length2;
                    while (true) {
                        if (i5 <= i6) {
                            int i7 = (i5 + i6) >>> 1;
                            int compareTo = str2.compareTo(abstractC9420bArr2[i7].f32369b);
                            if (compareTo >= 0) {
                                if (compareTo <= 0) {
                                    abstractC9420bArr[i4] = abstractC9420bArr2[i7];
                                    break;
                                }
                                i5 = i7 + 1;
                            } else {
                                i6 = i7 - 1;
                            }
                        } else if (C9366a.f32190e) {
                            C9366a.m24494b("kryo", "Unknown field will be skipped: ".concat(String.valueOf(str2)));
                        }
                    }
                }
            }
            c9380c.getGraphContext().m24313a((C9404m) this, (C9439e<T>) abstractC9420bArr);
        }
        boolean z = this.f32397a.f32399b;
        boolean z2 = this.f32397a.f32398a;
        if (z) {
            c9375b = new C9375b(c9374a, this.f32397a.f32400c);
            c9375b2 = c9375b;
        } else {
            c9375b2 = null;
            c9375b = c9374a;
        }
        for (FieldSerializer.AbstractC9420b abstractC9420b : abstractC9420bArr) {
            if (z2) {
                try {
                    C9412g m24393a = c9380c.m24393a(c9375b);
                    if (m24393a != null) {
                        Class<T> cls2 = m24393a.f32360a;
                        if (abstractC9420b == null) {
                            if (C9366a.f32190e) {
                                C9366a.m24494b("kryo", "Read unknown data, type: " + C9408n.m24292d(cls2) + C9408n.m24304a(c9374a.m24458b()));
                            }
                            try {
                                c9380c.m24392a(c9375b, cls2);
                            } catch (KryoException e) {
                                String str3 = "Unable to read unknown data, type: " + C9408n.m24292d(cls2) + " (" + getType().getName() + "#" + abstractC9420b + ")";
                                if (!z) {
                                    throw new KryoException(str3, e);
                                }
                                if (C9366a.f32189d) {
                                    C9366a.m24495a("kryo", str3, e);
                                }
                            }
                            if (z) {
                                c9375b2.m24427o();
                            }
                        } else if (abstractC9420b.f32370c == null || C9408n.m24301a((Class<?>) cls2, abstractC9420b.f32368a.getType())) {
                            abstractC9420b.f32372e = false;
                            abstractC9420b.f32370c = cls2;
                            abstractC9420b.f32375h = false;
                        } else {
                            String str4 = "Read type is incompatible with the field type: " + C9408n.m24292d(cls2) + " -> " + C9408n.m24292d(abstractC9420b.f32370c) + " (" + getType().getName() + "#" + abstractC9420b + ")";
                            if (!z) {
                                throw new KryoException(str4);
                            }
                            if (C9366a.f32189d) {
                                C9366a.m24496a("kryo", str4);
                            }
                            c9375b2.m24427o();
                        }
                    } else if (z) {
                        c9375b2.m24427o();
                    }
                } catch (KryoException e2) {
                    String str5 = "Unable to read unknown data (unknown type). (" + getType().getName() + "#" + abstractC9420b + ")";
                    if (!z) {
                        throw new KryoException(str5, e2);
                    }
                    if (C9366a.f32189d) {
                        C9366a.m24495a("kryo", str5, e2);
                    }
                    c9375b2.m24427o();
                }
            } else if (abstractC9420b == null) {
                if (!z) {
                    throw new KryoException("Unknown field. (" + getType().getName() + ")");
                }
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Skip unknown field.");
                }
                c9375b2.m24427o();
            }
            if (C9366a.f32190e) {
                log("Read", abstractC9420b, c9374a.m24458b());
            }
            abstractC9420b.mo24203a(c9375b, create);
            if (z) {
                c9375b2.m24427o();
            }
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0155  */
    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.AbstractC9413h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.esotericsoftware.kryo.C9380c r6, com.esotericsoftware.kryo.p276a.C9376c r7, T r8) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.C9439e.write(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.c, java.lang.Object):void");
    }
}
