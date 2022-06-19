.class public interface abstract Lkotlinx/serialization/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/Encoder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J9\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u001a\u0010\u000c\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\r\"\u0006\u0012\u0002\u0008\u00030\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ1\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u001a\u0010\u000c\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\r\"\u0006\u0012\u0002\u0008\u00030\u000eH&\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u001bH&J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000bH&J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020 H&J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH&J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020#H&J\u0008\u0010$\u001a\u00020\u0013H\u0016J\u0008\u0010%\u001a\u00020\u0013H&J/\u0010&\u001a\u00020\u0013\"\u0008\u0008\u0000\u0010\'*\u00020\u00012\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)2\u0008\u0010\u0014\u001a\u0004\u0018\u0001H\'H\u0016\u00a2\u0006\u0002\u0010*J)\u0010+\u001a\u00020\u0013\"\u0004\u0008\u0000\u0010\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\'0)2\u0006\u0010\u0014\u001a\u0002H\'H\u0016\u00a2\u0006\u0002\u0010*J\u0010\u0010,\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020-H&J\u0010\u0010.\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020/H&J\u0008\u00100\u001a\u00020\u0013H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u00061"
    }
    d2 = {
        "Lkotlinx/serialization/Encoder;",
        "",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "beginCollection",
        "Lkotlinx/serialization/CompositeEncoder;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "collectionSize",
        "",
        "typeSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;",
        "beginStructure",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;",
        "encodeBoolean",
        "",
        "value",
        "",
        "encodeByte",
        "",
        "encodeChar",
        "",
        "encodeDouble",
        "",
        "encodeEnum",
        "enumDescriptor",
        "index",
        "encodeFloat",
        "",
        "encodeInt",
        "encodeLong",
        "",
        "encodeNotNullMark",
        "encodeNull",
        "encodeNullableSerializableValue",
        "T",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeSerializableValue",
        "encodeShort",
        "",
        "encodeString",
        "",
        "encodeUnit",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public varargs abstract beginCollection(Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation
.end method

.method public varargs abstract beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation
.end method

.method public abstract encodeBoolean(Z)V
.end method

.method public abstract encodeByte(B)V
.end method

.method public abstract encodeChar(C)V
.end method

.method public abstract encodeDouble(D)V
.end method

.method public abstract encodeEnum(Lkotlinx/serialization/SerialDescriptor;I)V
.end method

.method public abstract encodeFloat(F)V
.end method

.method public abstract encodeInt(I)V
.end method

.method public abstract encodeLong(J)V
.end method

.method public abstract encodeNotNullMark()V
.end method

.method public abstract encodeNull()V
.end method

.method public abstract encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeShort(S)V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method

.method public abstract getContext()Lkotlinx/serialization/modules/b;
.end method
