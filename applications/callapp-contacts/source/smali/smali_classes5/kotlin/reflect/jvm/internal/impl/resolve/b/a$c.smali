.class final Lkotlin/reflect/jvm/internal/impl/resolve/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/utils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2

    .line 249
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 1250
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$c;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 1251
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    .line 2071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 1251
    check-cast p1, Ljava/lang/Iterable;

    return-object p1

    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    return-object v1
.end method
