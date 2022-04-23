package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.i;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/b.class */
final class b implements Comparator<FieldSerializer.b> {

    /* renamed from: a  reason: collision with root package name */
    static final FieldSerializer.b[] f19051a = new FieldSerializer.b[0];

    /* renamed from: b  reason: collision with root package name */
    final FieldSerializer f19052b;

    /* renamed from: c  reason: collision with root package name */
    FieldSerializer.b[] f19053c = new FieldSerializer.b[0];

    /* renamed from: d  reason: collision with root package name */
    FieldSerializer.b[] f19054d = new FieldSerializer.b[0];
    final ArrayList<Field> e = new ArrayList<>();
    private Object f;

    public b(FieldSerializer fieldSerializer) {
        this.f19052b = fieldSerializer;
    }

    private h a(Class cls, Class cls2, Class cls3) {
        Class cls4 = cls2;
        if (cls2 == h.class) {
            cls4 = null;
        }
        Class cls5 = cls3;
        if (cls3 == i.class) {
            cls5 = null;
        }
        Class cls6 = cls5;
        if (cls5 == null) {
            cls6 = cls5;
            if (cls4 != null) {
                cls6 = i.c.class;
            }
        }
        if (cls6 == null) {
            return null;
        }
        return n.b(cls6, cls4).a(this.f19052b.kryo, cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x06d2  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0903  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0922  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 2456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.b.a():void");
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(FieldSerializer.b bVar, FieldSerializer.b bVar2) {
        return bVar.f19047b.compareTo(bVar2.f19047b);
    }
}
