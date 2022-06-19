.class public final Lkotlin/reflect/jvm/internal/impl/load/java/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final f:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final i:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final j:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final k:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "org.jspecify.annotations.Nullable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 22
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "org.jspecify.annotations.NullnessUnspecified"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/v;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 24
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v3, "org.jspecify.annotations.DefaultNonNull"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/v;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/16 v3, 0xd

    new-array v3, v3, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 27
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/u;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 28
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v6, "androidx.annotation.Nullable"

    invoke-direct {v4, v6}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 29
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v4, v6}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 30
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v8, "android.annotation.Nullable"

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 31
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "com.android.annotations.Nullable"

    invoke-direct {v4, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 32
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v10, "org.eclipse.jdt.annotation.Nullable"

    invoke-direct {v4, v10}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x5

    aput-object v4, v3, v10

    .line 33
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v11, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-direct {v4, v11}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    aput-object v4, v3, v11

    .line 34
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v12, "javax.annotation.Nullable"

    invoke-direct {v4, v12}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x7

    aput-object v4, v3, v12

    .line 35
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v13, "javax.annotation.CheckForNull"

    invoke-direct {v4, v13}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x8

    aput-object v4, v3, v14

    .line 36
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v15, "edu.umd.cs.findbugs.annotations.CheckForNull"

    invoke-direct {v4, v15}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v4, v3, v15

    .line 37
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v15, "edu.umd.cs.findbugs.annotations.Nullable"

    invoke-direct {v4, v15}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v4, v3, v15

    .line 38
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v14, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    invoke-direct {v4, v14}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v4, v3, v14

    .line 39
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v14, "io.reactivex.annotations.Nullable"

    invoke-direct {v4, v14}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xc

    aput-object v4, v3, v14

    .line 26
    invoke-static {v3}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/v;->d:Ljava/util/List;

    .line 42
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v14, "javax.annotation.Nonnull"

    invoke-direct {v4, v14}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/v;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 43
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v14, v13}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/v;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    new-array v13, v15, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 46
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/u;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    aput-object v14, v13, v5

    .line 47
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v15, "edu.umd.cs.findbugs.annotations.NonNull"

    invoke-direct {v14, v15}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v7

    .line 48
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v15, "androidx.annotation.NonNull"

    invoke-direct {v14, v15}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v6

    .line 49
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v14, v15}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v8

    .line 50
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v14, "android.annotation.NonNull"

    invoke-direct {v8, v14}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v8, v13, v9

    .line 51
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "com.android.annotations.NonNull"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v8, v13, v10

    .line 52
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "org.eclipse.jdt.annotation.NonNull"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v8, v13, v11

    .line 53
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    aput-object v8, v13, v12

    .line 54
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "lombok.NonNull"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    aput-object v8, v13, v9

    .line 55
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v9, "io.reactivex.annotations.NonNull"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v8, v13, v9

    .line 45
    invoke-static {v13}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/v;->g:Ljava/util/List;

    .line 58
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v10, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    invoke-direct {v9, v10}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/v;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 59
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v11, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    invoke-direct {v10, v11}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/v;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 61
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v12, "androidx.annotation.RecentlyNullable"

    invoke-direct {v11, v12}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/v;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 62
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v13, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v12, v13}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/v;->k:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 64
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v13, Ljava/util/Set;

    .line 65
    check-cast v3, Ljava/lang/Iterable;

    .line 64
    invoke-static {v13, v3}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 67
    check-cast v8, Ljava/lang/Iterable;

    .line 64
    invoke-static {v3, v8}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->l:Ljava/util/Set;

    new-array v0, v6, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 77
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->l:Lkotlin/reflect/jvm/internal/impl/c/b;

    aput-object v1, v0, v5

    .line 78
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    aput-object v1, v0, v7

    .line 76
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->m:Ljava/util/List;

    new-array v0, v6, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 82
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->k:Lkotlin/reflect/jvm/internal/impl/c/b;

    aput-object v1, v0, v5

    .line 83
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->n:Lkotlin/reflect/jvm/internal/impl/c/b;

    aput-object v1, v0, v7

    .line 81
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->n:Ljava/util/List;

    return-void
.end method

.method public static final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 21
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 22
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final c()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 24
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->d:Ljava/util/List;

    return-object v0
.end method

.method public static final e()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 42
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final f()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 43
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final h()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 58
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final i()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 59
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final j()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 61
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final k()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 62
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->k:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->m:Ljava/util/List;

    return-object v0
.end method

.method public static final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/v;->n:Ljava/util/List;

    return-object v0
.end method
