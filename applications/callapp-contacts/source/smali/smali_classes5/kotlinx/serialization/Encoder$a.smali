.class public final Lkotlinx/serialization/Encoder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static varargs a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Encoder;",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Encoder;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/r;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Encoder;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 260
    invoke-interface {p0}, Lkotlinx/serialization/Encoder;->encodeNull()V

    return-void

    .line 262
    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/Encoder;->encodeNotNullMark()V

    .line 263
    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/Encoder;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method
