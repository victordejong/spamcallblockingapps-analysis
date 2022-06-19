package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/f.class */
public final class C19939f {

    /* renamed from: a */
    final AbstractC18813c f66235a;

    /* renamed from: b */
    final C18702a.C18715b f66236b;

    /* renamed from: c */
    final AbstractC18806a f66237c;

    /* renamed from: d */
    final AbstractC19026at f66238d;

    public C19939f(AbstractC18813c nameResolver, C18702a.C18715b classProto, AbstractC18806a metadataVersion, AbstractC19026at sourceElement) {
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(classProto, "classProto");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        C18524p.m3840d(sourceElement, "sourceElement");
        this.f66235a = nameResolver;
        this.f66236b = classProto;
        this.f66237c = metadataVersion;
        this.f66238d = sourceElement;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19939f)) {
            return false;
        }
        C19939f c19939f = (C19939f) obj;
        return C18524p.m3850a(this.f66235a, c19939f.f66235a) && C18524p.m3850a(this.f66236b, c19939f.f66236b) && C18524p.m3850a(this.f66237c, c19939f.f66237c) && C18524p.m3850a(this.f66238d, c19939f.f66238d);
    }

    public final int hashCode() {
        return (((((this.f66235a.hashCode() * 31) + this.f66236b.hashCode()) * 31) + this.f66237c.hashCode()) * 31) + this.f66238d.hashCode();
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.f66235a + ", classProto=" + this.f66236b + ", metadataVersion=" + this.f66237c + ", sourceElement=" + this.f66238d + ')';
    }
}
