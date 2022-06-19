.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/e/k;Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;I)Ljava/util/Collection;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 51
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->d:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 52
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->g:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    .line 50
    :cond_1
    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/k;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
