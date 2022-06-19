.class public final Lkotlin/reflect/jvm/internal/impl/builtins/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/b;

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

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/b;

    .line 12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->NUMBER_TYPES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/builtins/h;

    .line 12
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 13
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->h:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v2, "string.toSafe()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1, v0}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 14
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->j:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "_boolean.toSafe()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 15
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->s:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "_enum.toSafe()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 16
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 16
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    check-cast v1, Ljava/util/Set;

    .line 16
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/b;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
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

    .line 11
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/b;->b:Ljava/util/Set;

    return-object v0
.end method
