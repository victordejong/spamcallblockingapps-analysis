.class final Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/utils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2

    .line 200
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 1200
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1430
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1431
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1432
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 1200
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1433
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 1430
    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
