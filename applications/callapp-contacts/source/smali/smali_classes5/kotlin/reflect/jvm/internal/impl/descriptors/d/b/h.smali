.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/h;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/e;


# instance fields
.field private final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 46
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/h;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/h;->b:[Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 81
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
