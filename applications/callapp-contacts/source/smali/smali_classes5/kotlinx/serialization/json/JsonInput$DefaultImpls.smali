.class public final Lkotlinx/serialization/json/JsonInput$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonInput;
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
.method public static decodeCollectionSize(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/SerialDescriptor;)I
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static decodeNullableSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonInput;",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Decoder;

    invoke-static {p0, p1}, Lkotlinx/serialization/Decoder$a;->b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decodeSequentially(Lkotlinx/serialization/json/JsonInput;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static decodeSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonInput;",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Decoder;

    invoke-static {p0, p1}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static updateNullableSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonInput;",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Decoder;

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static updateSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonInput;",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/Decoder;

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/Decoder$a;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
