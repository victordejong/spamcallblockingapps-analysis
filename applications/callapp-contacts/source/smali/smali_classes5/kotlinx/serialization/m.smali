.class public final Lkotlinx/serialization/m;
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
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a\u0016\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a3\u0010\t\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\n2\u0019\u0008\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0008\u000f\u001a\u0015\u0010\u0010\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0011\u0018\u0001*\u00020\rH\u0087\u0008\u001a\u0015\u0010\u0012\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0011\u0018\u0001*\u00020\rH\u0087\u0008\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u001d\u0010\u0014\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0015\u0018\u0001\"\u0006\u0008\u0001\u0010\u0016\u0018\u0001*\u00020\rH\u0087\u0008\u001a\u001a\u0010\u0014\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a\u0015\u0010\u0019\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0011\u0018\u0001*\u00020\rH\u0087\u0008\u001a\u0012\u0010\u0019\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u001a"
    }
    d2 = {
        "nullable",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getNullable",
        "(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/SerialDescriptor;",
        "PrimitiveDescriptor",
        "serialName",
        "",
        "kind",
        "Lkotlinx/serialization/PrimitiveKind;",
        "SerialDescriptor",
        "Lkotlinx/serialization/SerialKind;",
        "builder",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/SerialDescriptorBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "descriptor",
        "T",
        "listDescriptor",
        "typeDescriptor",
        "mapDescriptor",
        "K",
        "V",
        "keyDescriptor",
        "valueDescriptor",
        "setDescriptor",
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
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/j;)Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lkotlinx/serialization/b/bd;->a(Ljava/lang/String;Lkotlinx/serialization/j;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank serial names are prohibited"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static synthetic a(Ljava/lang/String;Lkotlinx/serialization/p;)Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 34
    sget-object v0, Lkotlinx/serialization/m$a;->a:Lkotlinx/serialization/m$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0}, Lkotlinx/serialization/m;->a(Ljava/lang/String;Lkotlinx/serialization/p;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lkotlinx/serialization/p;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/SerialDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/p;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/l;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/SerialDescriptor;"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lkotlinx/serialization/l;

    invoke-direct {v0, p0}, Lkotlinx/serialization/l;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance p2, Lkotlinx/serialization/n;

    .line 1098
    iget-object v1, v0, Lkotlinx/serialization/l;->c:Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, p0, p1, v1, v0}, Lkotlinx/serialization/n;-><init>(Ljava/lang/String;Lkotlinx/serialization/p;ILkotlinx/serialization/l;)V

    check-cast p2, Lkotlinx/serialization/SerialDescriptor;

    return-object p2

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank serial names are prohibited"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
