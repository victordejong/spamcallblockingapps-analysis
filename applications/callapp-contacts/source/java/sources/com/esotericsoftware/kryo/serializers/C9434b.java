package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.esotericsoftware.kryo.serializers.b */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/b.class */
public final class C9434b implements Comparator<FieldSerializer.AbstractC9420b> {

    /* renamed from: a */
    static final FieldSerializer.AbstractC9420b[] f32387a = new FieldSerializer.AbstractC9420b[0];

    /* renamed from: b */
    final FieldSerializer f32388b;

    /* renamed from: c */
    FieldSerializer.AbstractC9420b[] f32389c = new FieldSerializer.AbstractC9420b[0];

    /* renamed from: d */
    FieldSerializer.AbstractC9420b[] f32390d = new FieldSerializer.AbstractC9420b[0];

    /* renamed from: e */
    final ArrayList<Field> f32391e = new ArrayList<>();

    /* renamed from: f */
    private Object f32392f;

    public C9434b(FieldSerializer fieldSerializer) {
        this.f32388b = fieldSerializer;
    }

    /* renamed from: a */
    private AbstractC9413h m24268a(Class cls, Class cls2, Class cls3) {
        Class cls4 = cls2;
        if (cls2 == AbstractC9413h.class) {
            cls4 = null;
        }
        Class cls5 = cls3;
        if (cls3 == AbstractC9414i.class) {
            cls5 = null;
        }
        Class cls6 = cls5;
        if (cls5 == null) {
            cls6 = cls5;
            if (cls4 != null) {
                cls6 = AbstractC9414i.C9417c.class;
            }
        }
        if (cls6 == null) {
            return null;
        }
        return C9408n.m24296b(cls6, cls4).mo24277a(this.f32388b.kryo, cls);
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24269a() {
        /*
            Method dump skipped, instructions count: 2456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.C9434b.m24269a():void");
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(FieldSerializer.AbstractC9420b abstractC9420b, FieldSerializer.AbstractC9420b abstractC9420b2) {
        return abstractC9420b.f32369b.compareTo(abstractC9420b2.f32369b);
    }
}
