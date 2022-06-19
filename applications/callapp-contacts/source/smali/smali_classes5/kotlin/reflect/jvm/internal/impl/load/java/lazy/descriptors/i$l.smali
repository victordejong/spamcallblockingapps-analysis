.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/java/d/n;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;Lkotlin/reflect/jvm/internal/impl/load/java/d/n;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/n;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1317
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 2060
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3052
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/a/f;

    .line 1317
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/n;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/n;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    return-object v0
.end method
