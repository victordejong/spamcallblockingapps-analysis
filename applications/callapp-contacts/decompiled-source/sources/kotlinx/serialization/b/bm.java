package kotlinx.serialization.b;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.modules.a;
import kotlinx.serialization.modules.b;
import kotlinx.serialization.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b*\b'\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J1\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u001a\u0010\u0014\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00160\u0015\"\u0006\u0012\u0002\b\u00030\u0016H\u0016¢\u0006\u0002\u0010\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020 J\u001e\u0010!\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020#J\u001e\u0010$\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020#J\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020&J\u001e\u0010'\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020&J\u0016\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010,\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020-J\u001e\u0010.\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020-J\u000e\u0010/\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001eJ\u001e\u00100\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u001eJ\u000e\u00101\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u000202J\u001e\u00103\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u000202J\u0006\u00104\u001a\u00020\u0019J\u0006\u00105\u001a\u00020\u0019J=\u00106\u001a\u00020\u0019\"\b\b\u0001\u00107*\u0002082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H70:2\b\u0010\u001a\u001a\u0004\u0018\u0001H7¢\u0006\u0002\u0010;J7\u0010<\u001a\u00020\u0019\"\u0004\b\u0001\u001072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H70:2\u0006\u0010\u001a\u001a\u0002H7¢\u0006\u0002\u0010;J\u000e\u0010=\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020>J\u001e\u0010?\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020>J\u000e\u0010@\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020AJ\u001e\u0010B\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020AJ\u001d\u0010C\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0002\u0010EJ\u001d\u0010F\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020 H\u0016¢\u0006\u0002\u0010GJ\u001d\u0010H\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020#H\u0016¢\u0006\u0002\u0010IJ\u001d\u0010J\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020&H\u0016¢\u0006\u0002\u0010KJ%\u0010L\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010M\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u001eH\u0016¢\u0006\u0002\u0010OJ\u001d\u0010P\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020-H\u0016¢\u0006\u0002\u0010QJ\u001d\u0010R\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u001eH\u0016¢\u0006\u0002\u0010SJ\u001d\u0010T\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u000202H\u0016¢\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��H\u0016¢\u0006\u0002\u0010WJ\u0015\u0010X\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��H\u0016¢\u0006\u0002\u0010WJ\u001d\u0010Y\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020>H\u0016¢\u0006\u0002\u0010ZJ\u001d\u0010[\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020AH\u0016¢\u0006\u0002\u0010\\J\u0015\u0010]\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��H\u0017¢\u0006\u0002\u0010WJ\u001d\u0010^\u001a\u00020\u00192\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001a\u001a\u000208H\u0016¢\u0006\u0002\u0010_J\u0006\u0010`\u001a\u00020\u0019J\u0016\u0010a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010b\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u000e\u0010c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010d\u001a\u00028��H\u0004¢\u0006\u0002\u0010\u000bJ\u0015\u0010e\u001a\u00020\u00192\u0006\u0010f\u001a\u00028��H\u0004¢\u0006\u0002\u0010WJ%\u0010g\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00132\u0006\u0010D\u001a\u00028��2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016¢\u0006\u0002\u0010hJ\u0019\u0010i\u001a\u00028��*\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eH$¢\u0006\u0002\u0010jR\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00028��8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u0004\u0018\u00018��8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028��0\u000fj\b\u0012\u0004\u0012\u00028��`\u0010X\u0082\u0004¢\u0006\u0002\n��¨\u0006k"}, d2 = {"Lkotlinx/serialization/internal/TaggedEncoder;", "Tag", "Lkotlinx/serialization/Encoder;", "Lkotlinx/serialization/CompositeEncoder;", "()V", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "currentTag", "getCurrentTag", "()Ljava/lang/Object;", "currentTagOrNull", "getCurrentTagOrNull", "tagStack", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "beginStructure", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeSerializers", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;", "encodeBoolean", "", "value", "", "encodeBooleanElement", "index", "", "encodeByte", "", "encodeByteElement", "encodeChar", "", "encodeCharElement", "encodeDouble", "", "encodeDoubleElement", "encodeElement", "desc", "encodeEnum", "enumDescriptor", "encodeFloat", "", "encodeFloatElement", "encodeInt", "encodeIntElement", "encodeLong", "", "encodeLongElement", "encodeNotNullMark", "encodeNull", "encodeNullableSerializableElement", "T", "", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeSerializableElement", "encodeShort", "", "encodeShortElement", "encodeString", "", "encodeStringElement", "encodeTaggedBoolean", "tag", "(Ljava/lang/Object;Z)V", "encodeTaggedByte", "(Ljava/lang/Object;B)V", "encodeTaggedChar", "(Ljava/lang/Object;C)V", "encodeTaggedDouble", "(Ljava/lang/Object;D)V", "encodeTaggedEnum", "enumDescription", "ordinal", "(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;I)V", "encodeTaggedFloat", "(Ljava/lang/Object;F)V", "encodeTaggedInt", "(Ljava/lang/Object;I)V", "encodeTaggedLong", "(Ljava/lang/Object;J)V", "encodeTaggedNotNullMark", "(Ljava/lang/Object;)V", "encodeTaggedNull", "encodeTaggedShort", "(Ljava/lang/Object;S)V", "encodeTaggedString", "(Ljava/lang/Object;Ljava/lang/String;)V", "encodeTaggedUnit", "encodeTaggedValue", "(Ljava/lang/Object;Ljava/lang/Object;)V", "encodeUnit", "encodeUnitElement", "endEncode", "endStructure", "popTag", "pushTag", "name", "shouldWriteElement", "(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;I)Z", "getTag", "(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bm.class */
public abstract class bm<Tag> implements CompositeEncoder, Encoder {
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    @Override // kotlinx.serialization.Encoder
    public CompositeEncoder beginCollection(SerialDescriptor descriptor, int i, KSerializer<?>... typeSerializers) {
        p.c(descriptor, "descriptor");
        p.c(typeSerializers, "typeSerializers");
        return Encoder.a.a(this, descriptor, typeSerializers);
    }

    @Override // kotlinx.serialization.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeSerializers) {
        p.c(descriptor, "descriptor");
        p.c(typeSerializers, "typeSerializers");
        return this;
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeBoolean(boolean z) {
        encodeTaggedBoolean(popTag(), z);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeBooleanElement(SerialDescriptor descriptor, int i, boolean z) {
        p.c(descriptor, "descriptor");
        encodeTaggedBoolean(getTag(descriptor, i), z);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeByte(byte b2) {
        encodeTaggedByte(popTag(), b2);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeByteElement(SerialDescriptor descriptor, int i, byte b2) {
        p.c(descriptor, "descriptor");
        encodeTaggedByte(getTag(descriptor, i), b2);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeChar(char c2) {
        encodeTaggedChar(popTag(), c2);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeCharElement(SerialDescriptor descriptor, int i, char c2) {
        p.c(descriptor, "descriptor");
        encodeTaggedChar(getTag(descriptor, i), c2);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeDouble(double d2) {
        encodeTaggedDouble(popTag(), d2);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeDoubleElement(SerialDescriptor descriptor, int i, double d2) {
        p.c(descriptor, "descriptor");
        encodeTaggedDouble(getTag(descriptor, i), d2);
    }

    public final boolean encodeElement(SerialDescriptor desc, int i) {
        p.c(desc, "desc");
        Tag tag = getTag(desc, i);
        boolean shouldWriteElement = shouldWriteElement(desc, tag, i);
        if (shouldWriteElement) {
            pushTag(tag);
        }
        return shouldWriteElement;
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeEnum(SerialDescriptor enumDescriptor, int i) {
        p.c(enumDescriptor, "enumDescriptor");
        encodeTaggedEnum(popTag(), enumDescriptor, i);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeFloat(float f) {
        encodeTaggedFloat(popTag(), f);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeFloatElement(SerialDescriptor descriptor, int i, float f) {
        p.c(descriptor, "descriptor");
        encodeTaggedFloat(getTag(descriptor, i), f);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeInt(int i) {
        encodeTaggedInt(popTag(), i);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor descriptor, int i, int i2) {
        p.c(descriptor, "descriptor");
        encodeTaggedInt(getTag(descriptor, i), i2);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeLong(long j) {
        encodeTaggedLong(popTag(), j);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor descriptor, int i, long j) {
        p.c(descriptor, "descriptor");
        encodeTaggedLong(getTag(descriptor, i), j);
    }

    public void encodeNonSerializableElement(SerialDescriptor descriptor, int i, Object value) {
        p.c(descriptor, "descriptor");
        p.c(value, "value");
        CompositeEncoder.a.a(descriptor, value);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeNotNullMark() {
        encodeTaggedNotNullMark(getCurrentTag());
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeNull() {
        encodeTaggedNull(popTag());
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int i, r<? super T> serializer, T t) {
        p.c(descriptor, "descriptor");
        p.c(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeNullableSerializableValue(serializer, t);
        }
    }

    public <T> void encodeNullableSerializableValue(r<? super T> serializer, T t) {
        p.c(serializer, "serializer");
        Encoder.a.b(this, serializer, t);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final <T> void encodeSerializableElement(SerialDescriptor descriptor, int i, r<? super T> serializer, T t) {
        p.c(descriptor, "descriptor");
        p.c(serializer, "serializer");
        if (encodeElement(descriptor, i)) {
            encodeSerializableValue(serializer, t);
        }
    }

    @Override // kotlinx.serialization.Encoder
    public <T> void encodeSerializableValue(r<? super T> serializer, T t) {
        p.c(serializer, "serializer");
        Encoder.a.a(this, serializer, t);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeShort(short s) {
        encodeTaggedShort(popTag(), s);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeShortElement(SerialDescriptor descriptor, int i, short s) {
        p.c(descriptor, "descriptor");
        encodeTaggedShort(getTag(descriptor, i), s);
    }

    @Override // kotlinx.serialization.Encoder
    public final void encodeString(String value) {
        p.c(value, "value");
        encodeTaggedString(popTag(), value);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor descriptor, int i, String value) {
        p.c(descriptor, "descriptor");
        p.c(value, "value");
        encodeTaggedString(getTag(descriptor, i), value);
    }

    public void encodeTaggedBoolean(Tag tag, boolean z) {
        encodeTaggedValue(tag, Boolean.valueOf(z));
    }

    public void encodeTaggedByte(Tag tag, byte b2) {
        encodeTaggedValue(tag, Byte.valueOf(b2));
    }

    public void encodeTaggedChar(Tag tag, char c2) {
        encodeTaggedValue(tag, Character.valueOf(c2));
    }

    public void encodeTaggedDouble(Tag tag, double d2) {
        encodeTaggedValue(tag, Double.valueOf(d2));
    }

    public void encodeTaggedEnum(Tag tag, SerialDescriptor enumDescription, int i) {
        p.c(enumDescription, "enumDescription");
        encodeTaggedValue(tag, Integer.valueOf(i));
    }

    public void encodeTaggedFloat(Tag tag, float f) {
        encodeTaggedValue(tag, Float.valueOf(f));
    }

    public void encodeTaggedInt(Tag tag, int i) {
        encodeTaggedValue(tag, Integer.valueOf(i));
    }

    public void encodeTaggedLong(Tag tag, long j) {
        encodeTaggedValue(tag, Long.valueOf(j));
    }

    public void encodeTaggedNotNullMark(Tag tag) {
    }

    public void encodeTaggedNull(Tag tag) {
        throw new SerializationException("null is not supported", null, 2, null);
    }

    public void encodeTaggedShort(Tag tag, short s) {
        encodeTaggedValue(tag, Short.valueOf(s));
    }

    public void encodeTaggedString(Tag tag, String value) {
        p.c(value, "value");
        encodeTaggedValue(tag, value);
    }

    public void encodeTaggedUnit(Tag tag) {
        encodeTaggedValue(tag, v.f38654a);
    }

    public void encodeTaggedValue(Tag tag, Object value) {
        p.c(value, "value");
        throw new SerializationException("Non-serializable " + ac.b(value.getClass()) + " is not supported by " + ac.b(getClass()) + " encoder", null, 2, null);
    }

    public final void encodeUnit() {
        bo.f38941a.serialize(this, v.f38654a);
    }

    public final void encodeUnitElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        encodeTaggedUnit(getTag(descriptor, i));
    }

    public void endEncode(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void endStructure(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        if (!this.tagStack.isEmpty()) {
            popTag();
        }
        endEncode(descriptor);
    }

    @Override // kotlinx.serialization.Encoder
    public b getContext() {
        return a.f39004a;
    }

    public final Tag getCurrentTag() {
        return (Tag) n.g((List<? extends Object>) this.tagStack);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Tag getCurrentTagOrNull() {
        return (Tag) n.h((List<? extends Object>) this.tagStack);
    }

    protected abstract Tag getTag(SerialDescriptor serialDescriptor, int i);

    protected final Tag popTag() {
        if (!this.tagStack.isEmpty()) {
            ArrayList<Tag> arrayList = this.tagStack;
            return arrayList.remove(n.a((List) arrayList));
        }
        throw new SerializationException("No tag in stack for requested element", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void pushTag(Tag tag) {
        this.tagStack.add(tag);
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        p.c(descriptor, "descriptor");
        return true;
    }

    public boolean shouldWriteElement(SerialDescriptor desc, Tag tag, int i) {
        p.c(desc, "desc");
        return true;
    }
}
