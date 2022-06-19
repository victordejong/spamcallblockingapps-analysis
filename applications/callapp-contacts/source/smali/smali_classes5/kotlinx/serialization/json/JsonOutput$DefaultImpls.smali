.class public final Lkotlinx/serialization/json/JsonOutput$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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
.method public static varargs beginCollection(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonOutput;",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "typeSerializers"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Encoder;

    invoke-static {p0, p1, p3}, Lkotlinx/serialization/Encoder$a;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static encodeNonSerializableElement(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerialDescriptor;ILjava/lang/Object;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlinx/serialization/CompositeEncoder$a;->a(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeNotNullMark(Lkotlinx/serialization/json/JsonOutput;)V
    .locals 0

    return-void
.end method

.method public static encodeNullableSerializableValue(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonOutput;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Encoder;

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Encoder$a;->b(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeSerializableValue(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonOutput;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Encoder;

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Encoder$a;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldEncodeElementDefault(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
