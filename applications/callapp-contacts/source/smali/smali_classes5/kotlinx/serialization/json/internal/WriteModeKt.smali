.class public final Lkotlinx/serialization/json/internal/WriteModeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aP\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0008\u0008\u0001\u0010\u0002*\u0002H\u0001\"\u0008\u0008\u0002\u0010\u0003*\u0002H\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0008H\u0080\u0008\u00a2\u0006\u0002\u0010\n\u001a\u0014\u0010\u000b\u001a\u00020\u000c*\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "selectMapMode",
        "T",
        "R1",
        "R2",
        "Lkotlinx/serialization/json/Json;",
        "mapDescriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "ifMap",
        "Lkotlin/Function0;",
        "ifList",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "switchMode",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "desc",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final selectMapMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R1::TT;R2::TT;>(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/SerialDescriptor;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR1;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR2;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$selectMapMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lkotlinx/serialization/j;

    if-nez v1, :cond_2

    sget-object v1, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys$kotlinx_serialization_runtime()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 42
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 40
    :cond_2
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;
    .locals 2

    const-string v0, "$this$switchMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lkotlinx/serialization/h;

    if-eqz v1, :cond_0

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0

    .line 27
    :cond_0
    sget-object v1, Lkotlinx/serialization/t$b;->a:Lkotlinx/serialization/t$b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0

    .line 28
    :cond_1
    sget-object v1, Lkotlinx/serialization/t$c;->a:Lkotlinx/serialization/t$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lkotlinx/serialization/j;

    if-nez v1, :cond_4

    sget-object v1, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys$kotlinx_serialization_runtime()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 28
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0

    .line 55
    :cond_3
    invoke-static {p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 28
    :cond_4
    :goto_0
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0

    .line 29
    :cond_5
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0
.end method
