package kotlinx.serialization.p571a;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.modules.C20446a;
import kotlinx.serialization.p572b.C20385bo;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b&\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J1\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u001a\u0010\u000b\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\r0\f\"\u0006\u0012\u0002\b\u00030\rH\u0016¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u001aH\u0016J\u001e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u001aJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u001dH\u0016J\u001e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u001dJ\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020#H\u0016J\u001e\u0010$\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020#J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0015H\u0016J\u001e\u0010&\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015J\u0010\u0010'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020(H\u0016J\u001e\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020(J\b\u0010*\u001a\u00020\u0010H\u0016J=\u0010+\u001a\u00020\u0010\"\b\b��\u0010,*\u00020-2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\b\u0010\u0011\u001a\u0004\u0018\u0001H,¢\u0006\u0002\u00100J7\u00101\u001a\u00020\u0010\"\u0004\b��\u0010,2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H,0/2\u0006\u0010\u0011\u001a\u0002H,¢\u0006\u0002\u00100J\u0010\u00102\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u000203H\u0016J\u001e\u00104\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u000203J\u0010\u00105\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u000206H\u0016J\u001e\u00107\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u000206J\b\u00108\u001a\u00020\u0010H\u0016J\u0016\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010:\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020-H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006;"}, m4298d2 = {"Lkotlinx/serialization/builtins/AbstractEncoder;", "Lkotlinx/serialization/Encoder;", "Lkotlinx/serialization/CompositeEncoder;", "()V", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "beginStructure", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeSerializers", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;", "encodeBoolean", "", "value", "", "encodeBooleanElement", "index", "", "encodeByte", "", "encodeByteElement", "encodeChar", "", "encodeCharElement", "encodeDouble", "", "encodeDoubleElement", "encodeElement", "encodeEnum", "enumDescriptor", "encodeFloat", "", "encodeFloatElement", "encodeInt", "encodeIntElement", "encodeLong", "", "encodeLongElement", "encodeNull", "encodeNullableSerializableElement", "T", "", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeSerializableElement", "encodeShort", "", "encodeShortElement", "encodeString", "", "encodeStringElement", "encodeUnit", "encodeUnitElement", "encodeValue", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.a.b */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/b.class */
public abstract class AbstractC20330b implements CompositeEncoder, Encoder {
    @Override // kotlinx.serialization.Encoder
    public CompositeEncoder beginCollection(SerialDescriptor descriptor, int i, KSerializer<?>... typeSerializers) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(typeSerializers, "typeSerializers");
        return Encoder.C20325a.m749a(this, descriptor, typeSerializers);
    }

    @Override // kotlinx.serialization.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeSerializers) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(typeSerializers, "typeSerializers");
        return this;
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeBoolean(boolean z) {
        encodeValue(Boolean.valueOf(z));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeBooleanElement(SerialDescriptor descriptor, int i, boolean z) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeBoolean(z);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeByte(byte b) {
        encodeValue(Byte.valueOf(b));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeByteElement(SerialDescriptor descriptor, int i, byte b) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeByte(b);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeCharElement(SerialDescriptor descriptor, int i, char c) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeChar(c);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeDoubleElement(SerialDescriptor descriptor, int i, double d) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeDouble(d);
        }
    }

    public boolean encodeElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return true;
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeEnum(SerialDescriptor enumDescriptor, int i) {
        C18524p.m3841c(enumDescriptor, "enumDescriptor");
        encodeValue(Integer.valueOf(i));
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeFloat(float f) {
        encodeValue(Float.valueOf(f));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeFloatElement(SerialDescriptor descriptor, int i, float f) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeFloat(f);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeInt(int i) {
        encodeValue(Integer.valueOf(i));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor descriptor, int i, int i2) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeInt(i2);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeLong(long j) {
        encodeValue(Long.valueOf(j));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor descriptor, int i, long j) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeLong(j);
        }
    }

    public void encodeNonSerializableElement(SerialDescriptor descriptor, int i, Object value) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(value, "value");
        CompositeEncoder.C20323a.m754a(descriptor, value);
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeNotNullMark() {
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeNull() {
        throw new SerializationException("'null' is not supported by default", null, 2, null);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int i, AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeNullableSerializableValue(serializer, t);
        }
    }

    public <T> void encodeNullableSerializableValue(AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(serializer, "serializer");
        Encoder.C20325a.m747b(this, serializer, t);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final <T> void encodeSerializableElement(SerialDescriptor descriptor, int i, AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeSerializableValue(serializer, t);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public <T> void encodeSerializableValue(AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(serializer, "serializer");
        Encoder.C20325a.m748a(this, serializer, t);
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeShort(short s) {
        encodeValue(Short.valueOf(s));
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeShortElement(SerialDescriptor descriptor, int i, short s) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeShort(s);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public void encodeString(String value) {
        C18524p.m3841c(value, "value");
        encodeValue(value);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor descriptor, int i, String value) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(value, "value");
        if (encodeElement(descriptor, i)) {
            encodeString(value);
        }
    }

    public void encodeUnit() {
        C20385bo.f66879a.serialize(this, C20128v.f66529a);
    }

    public final void encodeUnitElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        if (encodeElement(descriptor, i)) {
            encodeUnit();
        }
    }

    public void encodeValue(Object value) {
        C18524p.m3841c(value, "value");
        throw new SerializationException("Non-serializable " + C18496ac.m3882b(value.getClass()) + " is not supported by " + C18496ac.m3882b(getClass()) + " encoder", null, 2, null);
    }

    @Override // kotlinx.serialization.Encoder
    public AbstractC20447b getContext() {
        return C20446a.f66947a;
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(descriptor, "descriptor");
        return true;
    }
}
