.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1050
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 1112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2046
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    .line 1050
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 3045
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 4028
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1050
    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
