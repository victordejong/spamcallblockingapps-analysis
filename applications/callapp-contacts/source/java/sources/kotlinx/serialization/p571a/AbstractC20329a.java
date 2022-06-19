package kotlinx.serialization.p571a;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.EnumC20471v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.modules.C20446a;
import kotlinx.serialization.p572b.C20385bo;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b&\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J1\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u001a\u0010\u000f\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00110\u0010\"\u0006\u0012\u0002\b\u00030\u0011H\u0016¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u000eH\u0016J\b\u0010#\u001a\u00020$H\u0016J\u0016\u0010%\u001a\u00020$2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010&\u001a\u00020\u0017H\u0016J\u0016\u0010'\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010(\u001a\u00020)H\u0016J\u0016\u0010*\u001a\u00020)2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010+\u001a\u00020\u0014H\u0016J\n\u0010,\u001a\u0004\u0018\u00010-H\u0016J7\u0010.\u001a\u0004\u0018\u0001H/\"\b\b��\u0010/*\u0002002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H/02¢\u0006\u0002\u00103J/\u00104\u001a\u0002H/\"\u0004\b��\u0010/2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\f\u00101\u001a\b\u0012\u0004\u0012\u0002H/02¢\u0006\u0002\u00103J\b\u00105\u001a\u000206H\u0016J\u0016\u00107\u001a\u0002062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u00108\u001a\u000209H\u0016J\u0016\u0010:\u001a\u0002092\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010;\u001a\u00020<H\u0016J\u0016\u0010=\u001a\u00020<2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010>\u001a\u000200H\u0016J\u0010\u0010?\u001a\u00020<2\u0006\u0010\r\u001a\u00020\u000eH\u0016JA\u0010@\u001a\u0004\u0018\u0001H/\"\b\b��\u0010/*\u0002002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H/022\b\u0010A\u001a\u0004\u0018\u0001H/¢\u0006\u0002\u0010BJ7\u0010C\u001a\u0002H/\"\u0004\b��\u0010/2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\f\u00101\u001a\b\u0012\u0004\u0012\u0002H/022\u0006\u0010A\u001a\u0002H/¢\u0006\u0002\u0010BR\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006D"}, m4298d2 = {"Lkotlinx/serialization/builtins/AbstractDecoder;", "Lkotlinx/serialization/Decoder;", "Lkotlinx/serialization/CompositeDecoder;", "()V", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "updateMode", "Lkotlinx/serialization/UpdateMode;", "getUpdateMode", "()Lkotlinx/serialization/UpdateMode;", "beginStructure", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;", "decodeBoolean", "", "decodeBooleanElement", "index", "", "decodeByte", "", "decodeByteElement", "decodeChar", "", "decodeCharElement", "decodeDouble", "", "decodeDoubleElement", "decodeEnum", "enumDescriptor", "decodeFloat", "", "decodeFloatElement", "decodeInt", "decodeIntElement", "decodeLong", "", "decodeLongElement", "decodeNotNullMark", "decodeNull", "", "decodeNullableSerializableElement", "T", "", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeSerializableElement", "decodeShort", "", "decodeShortElement", "decodeString", "", "decodeStringElement", "decodeUnit", "", "decodeUnitElement", "decodeValue", "endStructure", "updateNullableSerializableElement", "old", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "updateSerializableElement", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.a.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/a.class */
public abstract class AbstractC20329a implements Decoder, AbstractC20327a {
    private final EnumC20471v updateMode = EnumC20471v.UPDATE;

    @Override // kotlinx.serialization.Decoder
    public AbstractC20327a beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeParams) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(typeParams, "typeParams");
        return this;
    }

    @Override // kotlinx.serialization.Decoder
    public boolean decodeBoolean() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Boolean) decodeValue).booleanValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final boolean decodeBooleanElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeBoolean();
    }

    @Override // kotlinx.serialization.Decoder
    public byte decodeByte() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Byte) decodeValue).byteValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Byte");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final byte decodeByteElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeByte();
    }

    @Override // kotlinx.serialization.Decoder
    public char decodeChar() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Character) decodeValue).charValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Char");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final char decodeCharElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeChar();
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public int decodeCollectionSize(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(descriptor, "descriptor");
        return -1;
    }

    @Override // kotlinx.serialization.Decoder
    public double decodeDouble() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Double) decodeValue).doubleValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Double");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final double decodeDoubleElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeDouble();
    }

    @Override // kotlinx.serialization.Decoder
    public int decodeEnum(SerialDescriptor enumDescriptor) {
        C18524p.m3841c(enumDescriptor, "enumDescriptor");
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Integer) decodeValue).intValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
    }

    @Override // kotlinx.serialization.Decoder
    public float decodeFloat() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Float) decodeValue).floatValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final float decodeFloatElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeFloat();
    }

    @Override // kotlinx.serialization.Decoder
    public int decodeInt() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Integer) decodeValue).intValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final int decodeIntElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeInt();
    }

    @Override // kotlinx.serialization.Decoder
    public long decodeLong() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Long) decodeValue).longValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Long");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final long decodeLongElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeLong();
    }

    @Override // kotlinx.serialization.Decoder
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // kotlinx.serialization.Decoder
    public Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final <T> T decodeNullableSerializableElement(SerialDescriptor descriptor, int i, AbstractC20415d<T> deserializer) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(deserializer, "deserializer");
        return (T) decodeNullableSerializableValue(deserializer);
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T decodeNullableSerializableValue(AbstractC20415d<T> deserializer) {
        C18524p.m3841c(deserializer, "deserializer");
        return (T) Decoder.C20324a.m751b(this, deserializer);
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public boolean decodeSequentially() {
        return false;
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final <T> T decodeSerializableElement(SerialDescriptor descriptor, int i, AbstractC20415d<T> deserializer) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer);
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T decodeSerializableValue(AbstractC20415d<T> deserializer) {
        C18524p.m3841c(deserializer, "deserializer");
        return (T) Decoder.C20324a.m753a(this, deserializer);
    }

    @Override // kotlinx.serialization.Decoder
    public short decodeShort() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return ((Short) decodeValue).shortValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Short");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final short decodeShortElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeShort();
    }

    @Override // kotlinx.serialization.Decoder
    public String decodeString() {
        Object decodeValue = decodeValue();
        if (decodeValue != null) {
            return (String) decodeValue;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final String decodeStringElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return decodeString();
    }

    public void decodeUnit() {
        C20385bo.f66879a.deserialize(this);
    }

    public final void decodeUnitElement(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        decodeUnit();
    }

    public Object decodeValue() {
        throw new SerializationException(C18496ac.m3882b(getClass()) + " can't retrieve untyped values", null, 2, null);
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public void endStructure(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public AbstractC20447b getContext() {
        return C20446a.f66947a;
    }

    @Override // kotlinx.serialization.Decoder
    public EnumC20471v getUpdateMode() {
        return this.updateMode;
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final <T> T updateNullableSerializableElement(SerialDescriptor descriptor, int i, AbstractC20415d<T> deserializer, T t) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(deserializer, "deserializer");
        return (T) updateNullableSerializableValue(deserializer, t);
    }

    public <T> T updateNullableSerializableValue(AbstractC20415d<T> deserializer, T t) {
        C18524p.m3841c(deserializer, "deserializer");
        return (T) Decoder.C20324a.m750b(this, deserializer, t);
    }

    @Override // kotlinx.serialization.AbstractC20327a
    public final <T> T updateSerializableElement(SerialDescriptor descriptor, int i, AbstractC20415d<T> deserializer, T t) {
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(deserializer, "deserializer");
        return (T) updateSerializableValue(deserializer, t);
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T updateSerializableValue(AbstractC20415d<T> deserializer, T t) {
        C18524p.m3841c(deserializer, "deserializer");
        return (T) Decoder.C20324a.m752a(this, deserializer, t);
    }
}
