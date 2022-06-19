.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/k;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/k$b;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/k$a;
    }
.end annotation


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/protobuf/p;


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 67
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
