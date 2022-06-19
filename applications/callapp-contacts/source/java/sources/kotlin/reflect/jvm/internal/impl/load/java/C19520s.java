package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.EnumMap;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/s.class */
public final class C19520s {

    /* renamed from: a */
    public final EnumMap<EnumC19343a, C19514p> f65507a;

    public C19520s(EnumMap<EnumC19343a, C19514p> defaultQualifiers) {
        C18524p.m3840d(defaultQualifiers, "defaultQualifiers");
        this.f65507a = defaultQualifiers;
    }

    /* renamed from: a */
    public final C19514p m2049a(EnumC19343a enumC19343a) {
        return this.f65507a.get(enumC19343a);
    }
}
