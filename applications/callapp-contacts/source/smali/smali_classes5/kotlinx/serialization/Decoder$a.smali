.class public final Lkotlinx/serialization/Decoder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/Decoder;
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
.method public static a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Decoder;",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-interface {p1, p0}, Lkotlinx/serialization/d;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Decoder;",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->getUpdateMode()Lkotlinx/serialization/v;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/b;->a:[I

    invoke-virtual {v0}, Lkotlinx/serialization/v;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 238
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/d;->patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 237
    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/serialization/Decoder;->decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 236
    :cond_2
    new-instance p0, Lkotlinx/serialization/UpdateNotSupportedException;

    invoke-interface {p1}, Lkotlinx/serialization/d;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/UpdateNotSupportedException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Decoder;",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/serialization/Decoder;->decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->decodeNull()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Decoder;",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->getUpdateMode()Lkotlinx/serialization/v;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/v;->BANNED:Lkotlinx/serialization/v;

    if-eq v0, v1, :cond_3

    .line 246
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->getUpdateMode()Lkotlinx/serialization/v;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/v;->OVERWRITE:Lkotlinx/serialization/v;

    if-eq v0, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/d;->patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/Decoder;->decodeNull()Ljava/lang/Void;

    return-object p2

    .line 246
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Lkotlinx/serialization/Decoder;->decodeNullableSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 245
    :cond_3
    new-instance p0, Lkotlinx/serialization/UpdateNotSupportedException;

    invoke-interface {p1}, Lkotlinx/serialization/d;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/UpdateNotSupportedException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
