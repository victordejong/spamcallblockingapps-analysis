.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;-><init>()V

    .line 55
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    invoke-virtual {v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;)V

    .line 56
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    .line 1065
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a:[I

    if-nez v2, :cond_0

    goto :goto_4

    .line 1069
    :cond_0
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a:[I

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->d:I

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v6, v2, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;-><init>([IZ)V

    .line 1072
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1073
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->h:[Ljava/lang/String;

    .line 1074
    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    goto :goto_2

    .line 1096
    :cond_2
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-eq v2, v4, :cond_4

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-eq v2, v4, :cond_4

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 1076
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    .line 1082
    :cond_5
    :goto_2
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    goto :goto_3

    :cond_6
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a/c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    :goto_3
    move-object v7, v4

    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->h:[Ljava/lang/String;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->g:[Ljava/lang/String;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->c:Ljava/lang/String;

    iget v12, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->d:I

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->e:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;Lkotlin/reflect/jvm/internal/impl/b/c/a/f;Lkotlin/reflect/jvm/internal/impl/b/c/a/c;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v2, v3

    :goto_5
    if-nez v2, :cond_8

    return-object v3

    .line 56
    :cond_8
    invoke-direct {v1, p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;-><init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
