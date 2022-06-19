.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.end method

.method public abstract a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
