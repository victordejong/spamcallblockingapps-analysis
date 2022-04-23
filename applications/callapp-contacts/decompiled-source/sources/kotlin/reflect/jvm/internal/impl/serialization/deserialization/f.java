package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final c f38427a;

    /* renamed from: b  reason: collision with root package name */
    final a.b f38428b;

    /* renamed from: c  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.b.b.a f38429c;

    /* renamed from: d  reason: collision with root package name */
    final at f38430d;

    public f(c nameResolver, a.b classProto, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, at sourceElement) {
        p.d(nameResolver, "nameResolver");
        p.d(classProto, "classProto");
        p.d(metadataVersion, "metadataVersion");
        p.d(sourceElement, "sourceElement");
        this.f38427a = nameResolver;
        this.f38428b = classProto;
        this.f38429c = metadataVersion;
        this.f38430d = sourceElement;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p.a(this.f38427a, fVar.f38427a) && p.a(this.f38428b, fVar.f38428b) && p.a(this.f38429c, fVar.f38429c) && p.a(this.f38430d, fVar.f38430d);
    }

    public final int hashCode() {
        return (((((this.f38427a.hashCode() * 31) + this.f38428b.hashCode()) * 31) + this.f38429c.hashCode()) * 31) + this.f38430d.hashCode();
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.f38427a + ", classProto=" + this.f38428b + ", metadataVersion=" + this.f38429c + ", sourceElement=" + this.f38430d + ')';
    }
}
