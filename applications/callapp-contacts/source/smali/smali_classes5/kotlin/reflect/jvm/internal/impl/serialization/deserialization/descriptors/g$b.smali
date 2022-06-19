.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/b/h;",
            ">;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->a:Lkotlin/reflect/jvm/internal/impl/b/b/h$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->k()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-result-object v1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->h()Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/h$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
