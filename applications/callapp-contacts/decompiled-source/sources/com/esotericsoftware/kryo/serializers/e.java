package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.a.b;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.c.m;
import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.g;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/e.class */
public class e<T> extends FieldSerializer<T> {

    /* renamed from: a  reason: collision with root package name */
    private final a f19059a;

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/e$a.class */
    public static final class a extends FieldSerializer.c {

        /* renamed from: b  reason: collision with root package name */
        boolean f19061b;

        /* renamed from: a  reason: collision with root package name */
        boolean f19060a = true;

        /* renamed from: c  reason: collision with root package name */
        int f19062c = 1024;

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.c
        public final /* bridge */ /* synthetic */ FieldSerializer.c a() {
            return (a) super.clone();
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.c
        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            return (a) super.clone();
        }
    }

    public e(c cVar, Class cls) {
        this(cVar, cls, new a());
    }

    public e(c cVar, Class cls, a aVar) {
        super(cVar, cls, aVar);
        this.f19059a = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.h
    public T read(c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls) {
        com.esotericsoftware.kryo.a.a aVar2;
        b bVar;
        int pushTypeVariables = pushTypeVariables();
        T create = create(cVar, aVar, cls);
        cVar.a(create);
        FieldSerializer.b[] bVarArr = (FieldSerializer.b[]) cVar.getGraphContext().c(this);
        if (bVarArr == null) {
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Read fields for class: " + this.type.getName());
            }
            int b2 = aVar.b(true);
            String[] strArr = new String[b2];
            for (int i = 0; i < b2; i++) {
                strArr[i] = aVar.m();
                if (com.esotericsoftware.b.a.e) {
                    com.esotericsoftware.b.a.b("kryo", "Read field name: " + strArr[i]);
                }
            }
            bVarArr = new FieldSerializer.b[b2];
            FieldSerializer.b[] bVarArr2 = this.cachedFields.f19053c;
            if (b2 < 32) {
                for (int i2 = 0; i2 < b2; i2++) {
                    String str = strArr[i2];
                    int length = bVarArr2.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (bVarArr2[i3].f19047b.equals(str)) {
                                bVarArr[i2] = bVarArr2[i3];
                                break;
                            }
                            i3++;
                        } else if (com.esotericsoftware.b.a.e) {
                            com.esotericsoftware.b.a.b("kryo", "Unknown field will be skipped: ".concat(String.valueOf(str)));
                        }
                    }
                }
            } else {
                int length2 = bVarArr2.length;
                for (int i4 = 0; i4 < b2; i4++) {
                    String str2 = strArr[i4];
                    int i5 = 0;
                    while (true) {
                        if (i5 <= length2) {
                            int i6 = (i5 + length2) >>> 1;
                            int compareTo = str2.compareTo(bVarArr2[i6].f19047b);
                            if (compareTo >= 0) {
                                if (compareTo <= 0) {
                                    bVarArr[i4] = bVarArr2[i6];
                                    break;
                                }
                                i5 = i6 + 1;
                            } else {
                                length2 = i6 - 1;
                            }
                        } else if (com.esotericsoftware.b.a.e) {
                            com.esotericsoftware.b.a.b("kryo", "Unknown field will be skipped: ".concat(String.valueOf(str2)));
                        }
                    }
                }
            }
            cVar.getGraphContext().a((m) this, (e<T>) bVarArr);
        }
        boolean z = this.f19059a.f19061b;
        boolean z2 = this.f19059a.f19060a;
        if (z) {
            aVar2 = new b(aVar, this.f19059a.f19062c);
            bVar = aVar2;
        } else {
            bVar = 0;
            aVar2 = aVar;
        }
        for (FieldSerializer.b bVar2 : bVarArr) {
            if (z2) {
                try {
                    g a2 = cVar.a(aVar2);
                    if (a2 != null) {
                        Class<T> cls2 = a2.f19039a;
                        if (bVar2 == null) {
                            if (com.esotericsoftware.b.a.e) {
                                com.esotericsoftware.b.a.b("kryo", "Read unknown data, type: " + n.d(cls2) + n.a(aVar.b()));
                            }
                            try {
                                cVar.a(aVar2, cls2);
                            } catch (KryoException e) {
                                String str3 = "Unable to read unknown data, type: " + n.d(cls2) + " (" + getType().getName() + "#" + bVar2 + ")";
                                if (!z) {
                                    throw new KryoException(str3, e);
                                } else if (com.esotericsoftware.b.a.f18945d) {
                                    com.esotericsoftware.b.a.a("kryo", str3, e);
                                }
                            }
                            if (z) {
                                bVar.o();
                            }
                        } else if (bVar2.f19048c == null || n.a((Class<?>) cls2, bVar2.f19046a.getType())) {
                            bVar2.e = false;
                            bVar2.f19048c = cls2;
                            bVar2.h = false;
                        } else {
                            String str4 = "Read type is incompatible with the field type: " + n.d(cls2) + " -> " + n.d(bVar2.f19048c) + " (" + getType().getName() + "#" + bVar2 + ")";
                            if (z) {
                                if (com.esotericsoftware.b.a.f18945d) {
                                    com.esotericsoftware.b.a.a("kryo", str4);
                                }
                                bVar.o();
                            } else {
                                throw new KryoException(str4);
                            }
                        }
                    } else if (z) {
                        bVar.o();
                    }
                } catch (KryoException e2) {
                    String str5 = "Unable to read unknown data (unknown type). (" + getType().getName() + "#" + bVar2 + ")";
                    if (z) {
                        if (com.esotericsoftware.b.a.f18945d) {
                            com.esotericsoftware.b.a.a("kryo", str5, e2);
                        }
                        bVar.o();
                    } else {
                        throw new KryoException(str5, e2);
                    }
                }
            } else if (bVar2 == null) {
                if (z) {
                    if (com.esotericsoftware.b.a.e) {
                        com.esotericsoftware.b.a.b("kryo", "Skip unknown field.");
                    }
                    bVar.o();
                } else {
                    throw new KryoException("Unknown field. (" + getType().getName() + ")");
                }
            }
            if (com.esotericsoftware.b.a.e) {
                log("Read", bVar2, aVar.b());
            }
            bVar2.a(aVar2, create);
            if (z) {
                bVar.o();
            }
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0155  */
    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.esotericsoftware.kryo.c r6, com.esotericsoftware.kryo.a.c r7, T r8) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.e.write(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.c, java.lang.Object):void");
    }
}
