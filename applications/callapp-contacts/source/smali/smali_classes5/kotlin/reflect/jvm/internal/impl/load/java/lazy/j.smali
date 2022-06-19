.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;


# instance fields
.field public a:Lkotlin/reflect/jvm/internal/impl/resolve/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/j;->a:Lkotlin/reflect/jvm/internal/impl/resolve/c/b;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "resolver"

    .line 1032
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
