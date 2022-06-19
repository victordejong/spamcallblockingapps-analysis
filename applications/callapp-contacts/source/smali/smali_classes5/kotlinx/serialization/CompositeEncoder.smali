.class public interface abstract Lkotlinx/serialization/CompositeEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/CompositeEncoder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J \u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000fH&J \u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0011H&J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0013H&J \u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0015H&J \u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH&J \u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0018H&J \u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0001H\u0017J?\u0010\u001a\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u001b*\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001d2\u0008\u0010\u000c\u001a\u0004\u0018\u0001H\u001bH&\u00a2\u0006\u0002\u0010\u001eJ9\u0010\u001f\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u001b2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001d2\u0006\u0010\u000c\u001a\u0002H\u001bH&\u00a2\u0006\u0002\u0010\u001eJ \u0010 \u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020!H&J \u0010\"\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020#H&J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010&\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/serialization/CompositeEncoder;",
        "",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "encodeBooleanElement",
        "",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "index",
        "",
        "value",
        "",
        "encodeByteElement",
        "",
        "encodeCharElement",
        "",
        "encodeDoubleElement",
        "",
        "encodeFloatElement",
        "",
        "encodeIntElement",
        "encodeLongElement",
        "",
        "encodeNonSerializableElement",
        "encodeNullableSerializableElement",
        "T",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeSerializableElement",
        "encodeShortElement",
        "",
        "encodeStringElement",
        "",
        "encodeUnitElement",
        "endStructure",
        "shouldEncodeElementDefault",
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
.method public abstract encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V
.end method

.method public abstract encodeByteElement(Lkotlinx/serialization/SerialDescriptor;IB)V
.end method

.method public abstract encodeCharElement(Lkotlinx/serialization/SerialDescriptor;IC)V
.end method

.method public abstract encodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;ID)V
.end method

.method public abstract encodeFloatElement(Lkotlinx/serialization/SerialDescriptor;IF)V
.end method

.method public abstract encodeIntElement(Lkotlinx/serialization/SerialDescriptor;II)V
.end method

.method public abstract encodeLongElement(Lkotlinx/serialization/SerialDescriptor;IJ)V
.end method

.method public abstract encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeShortElement(Lkotlinx/serialization/SerialDescriptor;IS)V
.end method

.method public abstract encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V
.end method

.method public abstract endStructure(Lkotlinx/serialization/SerialDescriptor;)V
.end method

.method public abstract shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z
.end method
