.class public final Lkotlin/reflect/jvm/internal/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/a;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/a;->a:Lkotlin/reflect/jvm/internal/impl/a;

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 14
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 15
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 16
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 20
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 20
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    check-cast v1, Ljava/util/Set;

    .line 20
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/a;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a;->b:Ljava/util/Set;

    return-object v0
.end method
