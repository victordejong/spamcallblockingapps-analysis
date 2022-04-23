package kotlinx.serialization.b;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��¨\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J1\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u001a\u0010\u001a\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u001c0\u001b\"\u0006\u0012\u0002\b\u00030\u001cH\u0016¢\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0��H\u0004J\u0006\u0010!\u001a\u00020\u000fJ\u0016\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020&J\u0016\u0010'\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010(\u001a\u00020)J\u0016\u0010*\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010+\u001a\u00020,J\u0016\u0010-\u001a\u00020,2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u000e\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020\u0019J\u0006\u00100\u001a\u000201J\u0016\u00102\u001a\u0002012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00103\u001a\u00020$J\u0016\u00104\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00105\u001a\u000206J\u0016\u00107\u001a\u0002062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u00108\u001a\u00020\u000fJ\b\u00109\u001a\u0004\u0018\u00010:J7\u0010;\u001a\u0004\u0018\u0001H<\"\b\b\u0001\u0010<*\u00020=2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000e\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H<0?¢\u0006\u0002\u0010@J/\u0010A\u001a\u0002H<\"\u0004\b\u0001\u0010<2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H<0?¢\u0006\u0002\u0010@J\u0006\u0010B\u001a\u00020CJ\u0016\u0010D\u001a\u00020C2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0006\u0010E\u001a\u00020FJ\u0016\u0010G\u001a\u00020F2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$J\u0015\u0010H\u001a\u00020\u000f2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010JJ\u0015\u0010K\u001a\u00020&2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u00020)2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010NJ\u0015\u0010O\u001a\u00020,2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010PJ\u001d\u0010Q\u001a\u00020$2\u0006\u0010I\u001a\u00028��2\u0006\u0010R\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010SJ\u0015\u0010T\u001a\u0002012\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020$2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010WJ\u0015\u0010X\u001a\u0002062\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010YJ\u0015\u0010Z\u001a\u00020\u000f2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010JJ\u0017\u0010[\u001a\u0004\u0018\u00010:2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010\\J\u0015\u0010]\u001a\u00020C2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010^J\u0015\u0010_\u001a\u00020F2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010`J\u0015\u0010a\u001a\u00020\u001f2\u0006\u0010I\u001a\u00028��H\u0017¢\u0006\u0002\u0010bJ\u0015\u0010c\u001a\u00020=2\u0006\u0010I\u001a\u00028��H\u0016¢\u0006\u0002\u0010dJ\b\u0010e\u001a\u00020\u001fH\u0007J\u0018\u0010f\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010g\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\r\u0010h\u001a\u00028��H\u0004¢\u0006\u0002\u0010\u000bJ\u0015\u0010i\u001a\u00020\u001f2\u0006\u0010j\u001a\u00028��H\u0004¢\u0006\u0002\u0010bJ)\u0010k\u001a\u0002Hl\"\u0004\b\u0001\u0010l2\u0006\u0010I\u001a\u00028��2\f\u0010m\u001a\b\u0012\u0004\u0012\u0002Hl0nH\u0002¢\u0006\u0002\u0010oJC\u0010p\u001a\u0004\u0018\u0001H<\"\b\b\u0001\u0010<*\u00020=2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\u000e\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H<0?2\b\u0010q\u001a\u0004\u0018\u0001H<H\u0016¢\u0006\u0002\u0010rJ9\u0010s\u001a\u0002H<\"\u0004\b\u0001\u0010<2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010#\u001a\u00020$2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H<0?2\u0006\u0010q\u001a\u0002H<H\u0016¢\u0006\u0002\u0010rJ\u0019\u0010t\u001a\u00028��*\u00020\u00192\u0006\u0010#\u001a\u00020$H$¢\u0006\u0002\u0010uR\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00028��8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u0004\u0018\u00018��8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00028��0\u0011j\b\u0012\u0004\u0012\u00028��`\u0012X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016¨\u0006v"}, d2 = {"Lkotlinx/serialization/internal/TaggedDecoder;", "Tag", "Lkotlinx/serialization/Decoder;", "Lkotlinx/serialization/CompositeDecoder;", "()V", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "currentTag", "getCurrentTag", "()Ljava/lang/Object;", "currentTagOrNull", "getCurrentTagOrNull", "flag", "", "tagStack", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "updateMode", "Lkotlinx/serialization/UpdateMode;", "getUpdateMode", "()Lkotlinx/serialization/UpdateMode;", "beginStructure", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;", "copyTagsTo", "", "other", "decodeBoolean", "decodeBooleanElement", "index", "", "decodeByte", "", "decodeByteElement", "decodeChar", "", "decodeCharElement", "decodeDouble", "", "decodeDoubleElement", "decodeEnum", "enumDescriptor", "decodeFloat", "", "decodeFloatElement", "decodeInt", "decodeIntElement", "decodeLong", "", "decodeLongElement", "decodeNotNullMark", "decodeNull", "", "decodeNullableSerializableElement", "T", "", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeSerializableElement", "decodeShort", "", "decodeShortElement", "decodeString", "", "decodeStringElement", "decodeTaggedBoolean", "tag", "(Ljava/lang/Object;)Z", "decodeTaggedByte", "(Ljava/lang/Object;)B", "decodeTaggedChar", "(Ljava/lang/Object;)C", "decodeTaggedDouble", "(Ljava/lang/Object;)D", "decodeTaggedEnum", "enumDescription", "(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;)I", "decodeTaggedFloat", "(Ljava/lang/Object;)F", "decodeTaggedInt", "(Ljava/lang/Object;)I", "decodeTaggedLong", "(Ljava/lang/Object;)J", "decodeTaggedNotNullMark", "decodeTaggedNull", "(Ljava/lang/Object;)Ljava/lang/Void;", "decodeTaggedShort", "(Ljava/lang/Object;)S", "decodeTaggedString", "(Ljava/lang/Object;)Ljava/lang/String;", "decodeTaggedUnit", "(Ljava/lang/Object;)V", "decodeTaggedValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "decodeUnit", "decodeUnitElement", "endStructure", "popTag", "pushTag", "name", "tagBlock", "E", "block", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "updateNullableSerializableElement", "old", "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "updateSerializableElement", "getTag", "(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bl.class */
public abstract class bl<Tag> implements Decoder, kotlinx.serialization.a {
    private boolean flag;
    private final v updateMode = v.UPDATE;
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "T", "", "Tag", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bl$a.class */
    static final class a extends r implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.serialization.d f38931b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlinx.serialization.d dVar) {
            super(0);
            this.f38931b = dVar;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return bl.this.decodeNullableSerializableValue(this.f38931b);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0004\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "T", "Tag", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bl$b.class */
    static final class b extends r implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.serialization.d f38933b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlinx.serialization.d dVar) {
            super(0);
            this.f38933b = dVar;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return bl.this.decodeSerializableValue(this.f38933b);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "T", "", "Tag", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bl$c.class */
    static final class c extends r implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.serialization.d f38935b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f38936c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(kotlinx.serialization.d dVar, Object obj) {
            super(0);
            this.f38935b = dVar;
            this.f38936c = obj;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return bl.this.updateNullableSerializableValue(this.f38935b, this.f38936c);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0004\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "T", "Tag", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bl$d.class */
    static final class d extends r implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.serialization.d f38938b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f38939c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlinx.serialization.d dVar, Object obj) {
            super(0);
            this.f38938b = dVar;
            this.f38939c = obj;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return bl.this.updateSerializableValue(this.f38938b, this.f38939c);
        }
    }

    private final <E> E tagBlock(Tag tag, Function0<? extends E> function0) {
        pushTag(tag);
        E e = (E) function0.invoke();
        if (!this.flag) {
            popTag();
        }
        this.flag = false;
        return e;
    }

    @Override // kotlinx.serialization.Decoder
    public kotlinx.serialization.a beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeParams) {
        p.c(descriptor, "descriptor");
        p.c(typeParams, "typeParams");
        return this;
    }

    protected final void copyTagsTo(bl<Tag> other) {
        p.c(other, "other");
        other.tagStack.addAll(this.tagStack);
    }

    @Override // kotlinx.serialization.Decoder
    public final boolean decodeBoolean() {
        return decodeTaggedBoolean(popTag());
    }

    @Override // kotlinx.serialization.a
    public final boolean decodeBooleanElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedBoolean(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final byte decodeByte() {
        return decodeTaggedByte(popTag());
    }

    @Override // kotlinx.serialization.a
    public final byte decodeByteElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedByte(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final char decodeChar() {
        return decodeTaggedChar(popTag());
    }

    @Override // kotlinx.serialization.a
    public final char decodeCharElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedChar(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.a
    public int decodeCollectionSize(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        p.c(descriptor, "descriptor");
        return -1;
    }

    @Override // kotlinx.serialization.Decoder
    public final double decodeDouble() {
        return decodeTaggedDouble(popTag());
    }

    @Override // kotlinx.serialization.a
    public final double decodeDoubleElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedDouble(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final int decodeEnum(SerialDescriptor enumDescriptor) {
        p.c(enumDescriptor, "enumDescriptor");
        return decodeTaggedEnum(popTag(), enumDescriptor);
    }

    @Override // kotlinx.serialization.Decoder
    public final float decodeFloat() {
        return decodeTaggedFloat(popTag());
    }

    @Override // kotlinx.serialization.a
    public final float decodeFloatElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedFloat(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final int decodeInt() {
        return decodeTaggedInt(popTag());
    }

    @Override // kotlinx.serialization.a
    public final int decodeIntElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedInt(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final long decodeLong() {
        return decodeTaggedLong(popTag());
    }

    @Override // kotlinx.serialization.a
    public final long decodeLongElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedLong(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final boolean decodeNotNullMark() {
        return decodeTaggedNotNullMark(getCurrentTag());
    }

    @Override // kotlinx.serialization.Decoder
    public final Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.a
    public final <T> T decodeNullableSerializableElement(SerialDescriptor descriptor, int i, kotlinx.serialization.d<T> deserializer) {
        p.c(descriptor, "descriptor");
        p.c(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i), new a(deserializer));
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T decodeNullableSerializableValue(kotlinx.serialization.d<T> deserializer) {
        p.c(deserializer, "deserializer");
        return (T) Decoder.a.b(this, deserializer);
    }

    @Override // kotlinx.serialization.a
    public boolean decodeSequentially() {
        return false;
    }

    @Override // kotlinx.serialization.a
    public final <T> T decodeSerializableElement(SerialDescriptor descriptor, int i, kotlinx.serialization.d<T> deserializer) {
        p.c(descriptor, "descriptor");
        p.c(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i), new b(deserializer));
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T decodeSerializableValue(kotlinx.serialization.d<T> deserializer) {
        p.c(deserializer, "deserializer");
        return (T) Decoder.a.a(this, deserializer);
    }

    @Override // kotlinx.serialization.Decoder
    public final short decodeShort() {
        return decodeTaggedShort(popTag());
    }

    @Override // kotlinx.serialization.a
    public final short decodeShortElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedShort(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.Decoder
    public final String decodeString() {
        return decodeTaggedString(popTag());
    }

    @Override // kotlinx.serialization.a
    public final String decodeStringElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return decodeTaggedString(getTag(descriptor, i));
    }

    public boolean decodeTaggedBoolean(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Boolean) decodeTaggedValue).booleanValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
    }

    public byte decodeTaggedByte(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Byte) decodeTaggedValue).byteValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Byte");
    }

    public char decodeTaggedChar(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Character) decodeTaggedValue).charValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Char");
    }

    public double decodeTaggedDouble(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Double) decodeTaggedValue).doubleValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Double");
    }

    public int decodeTaggedEnum(Tag tag, SerialDescriptor enumDescription) {
        p.c(enumDescription, "enumDescription");
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Integer) decodeTaggedValue).intValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
    }

    public float decodeTaggedFloat(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Float) decodeTaggedValue).floatValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
    }

    public int decodeTaggedInt(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Integer) decodeTaggedValue).intValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
    }

    public long decodeTaggedLong(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Long) decodeTaggedValue).longValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Long");
    }

    public boolean decodeTaggedNotNullMark(Tag tag) {
        return true;
    }

    public Void decodeTaggedNull(Tag tag) {
        return null;
    }

    public short decodeTaggedShort(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return ((Short) decodeTaggedValue).shortValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Short");
    }

    public String decodeTaggedString(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        if (decodeTaggedValue != null) {
            return (String) decodeTaggedValue;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
    }

    public void decodeTaggedUnit(Tag tag) {
        if (decodeTaggedValue(tag) == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Unit");
        }
    }

    public Object decodeTaggedValue(Tag tag) {
        throw new SerializationException(ac.b(getClass()) + " can't retrieve untyped values", null, 2, null);
    }

    public final void decodeUnit() {
        bo.f38941a.a(this);
    }

    public final void decodeUnitElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        decodeTaggedUnit(getTag(descriptor, i));
    }

    @Override // kotlinx.serialization.a
    public void endStructure(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.a
    public kotlinx.serialization.modules.b getContext() {
        return kotlinx.serialization.modules.a.f39004a;
    }

    protected final Tag getCurrentTag() {
        return (Tag) n.g((List<? extends Object>) this.tagStack);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Tag getCurrentTagOrNull() {
        return (Tag) n.h((List<? extends Object>) this.tagStack);
    }

    protected abstract Tag getTag(SerialDescriptor serialDescriptor, int i);

    @Override // kotlinx.serialization.Decoder
    public v getUpdateMode() {
        return this.updateMode;
    }

    protected final Tag popTag() {
        ArrayList<Tag> arrayList = this.tagStack;
        Tag remove = arrayList.remove(n.a((List) arrayList));
        this.flag = true;
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void pushTag(Tag tag) {
        this.tagStack.add(tag);
    }

    @Override // kotlinx.serialization.a
    public <T> T updateNullableSerializableElement(SerialDescriptor descriptor, int i, kotlinx.serialization.d<T> deserializer, T t) {
        p.c(descriptor, "descriptor");
        p.c(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i), new c(deserializer, t));
    }

    public <T> T updateNullableSerializableValue(kotlinx.serialization.d<T> deserializer, T t) {
        p.c(deserializer, "deserializer");
        return (T) Decoder.a.b(this, deserializer, t);
    }

    @Override // kotlinx.serialization.a
    public <T> T updateSerializableElement(SerialDescriptor descriptor, int i, kotlinx.serialization.d<T> deserializer, T t) {
        p.c(descriptor, "descriptor");
        p.c(deserializer, "deserializer");
        return (T) tagBlock(getTag(descriptor, i), new d(deserializer, t));
    }

    @Override // kotlinx.serialization.Decoder
    public <T> T updateSerializableValue(kotlinx.serialization.d<T> deserializer, T t) {
        p.c(deserializer, "deserializer");
        return (T) Decoder.a.a(this, deserializer, t);
    }
}
