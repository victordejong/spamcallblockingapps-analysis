.class public final Lkotlin/reflect/jvm/internal/impl/load/java/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final d:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 20
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 21
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 24
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/load/java/a;

    .line 27
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 29
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 30
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 31
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 26
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->e:Ljava/util/List;

    .line 35
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    .line 36
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v2, v4, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    check-cast v0, Ljava/util/Collection;

    .line 35
    invoke-direct {v5, v6, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Ljava/util/Collection;Z)V

    invoke-static {v1, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/a/ai;->a(Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->f:Ljava/util/Map;

    new-array v1, v4, [Lkotlin/n;

    .line 43
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v6, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    .line 45
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {v10, v7, v2, v4, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/a;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    invoke-static {v7}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v6

    .line 44
    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-static {v5, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v5

    aput-object v5, v1, v2

    .line 48
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v6, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    .line 50
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {v10, v7, v2, v4, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/a;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    invoke-static {v7}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    move-object v9, v6

    .line 49
    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    invoke-static {v5, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v5

    aput-object v5, v1, v3

    .line 42
    invoke-static {v1}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v1

    const-string v5, "$this$plus"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "map"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    check-cast v5, Ljava/util/Map;

    .line 42
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/b;->g:Ljava/util/Map;

    new-array v0, v4, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 55
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->h:Ljava/util/Set;

    return-void
.end method

.method public static final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 21
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final c()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 22
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final d()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 24
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->h:Ljava/util/Set;

    return-object v0
.end method
