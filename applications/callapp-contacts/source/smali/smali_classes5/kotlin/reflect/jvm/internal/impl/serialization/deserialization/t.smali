.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 28
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 20078
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 21039
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 21078
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 22049
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 28
    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    return-void
.end method

.method private static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x8

    shl-int/lit8 p0, p0, 0x6

    add-int/2addr v0, p0

    return v0
.end method

.method private final a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 406
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50129
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 406
    move-object/from16 v20, v0

    check-cast v20, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 407
    invoke-interface/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    move-result-object v21

    .line 409
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v1

    check-cast v15, Ljava/util/Collection;

    .line 465
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/16 v23, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v24, v11, 0x1

    if-gez v11, :cond_0

    .line 466
    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 410
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50130
    iget v0, v8, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v21, :cond_2

    .line 411
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50131
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50132
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 412
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;ILkotlin/reflect/jvm/internal/impl/b/a$t;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-direct {v10, v12, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-object v12, v10

    goto :goto_2

    .line 417
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    move-object v12, v0

    .line 421
    :goto_2
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50133
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 50134
    iget v1, v8, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    .line 421
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v13

    .line 422
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50135
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 422
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50136
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 422
    invoke-static {v8, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v14

    .line 423
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->F:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 424
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->G:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v1, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_CROSSINLINE.get(flags)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 425
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->H:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v1, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_NOINLINE.get(flags)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 426
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50137
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 426
    invoke-static {v8, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50138
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 426
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :goto_3
    move-object/from16 v18, v1

    .line 427
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v2, "NO_SOURCE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    const/4 v10, 0x0

    move-object v8, v2

    move-object/from16 v9, v20

    move-object v3, v15

    move v15, v0

    move-object/from16 v19, v1

    invoke-direct/range {v8 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v15, v3

    move/from16 v11, v24

    goto/16 :goto_0

    :cond_4
    move-object v3, v15

    .line 467
    move-object v15, v3

    check-cast v15, Ljava/util/List;

    .line 463
    check-cast v15, Ljava/lang/Iterable;

    .line 429
    invoke-static {v15}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 3

    .line 380
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 50124
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    .line 380
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    return-object p1

    .line 383
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50125
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50126
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 383
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$c;

    invoke-direct {v2, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;ZLkotlin/reflect/jvm/internal/impl/b/a$m;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 2

    .line 369
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 370
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    return-object p1

    .line 372
    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50122
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50123
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 372
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$b;

    invoke-direct {v1, p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object p2
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 3

    .line 395
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50127
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50128
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 395
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$d;

    invoke-direct {v2, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$d;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method private final a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
    .locals 3

    .line 332
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50106
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 332
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Z)",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;"
        }
    .end annotation

    .line 211
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 212
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/z;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 214
    :cond_1
    check-cast p3, Ljava/lang/Iterable;

    .line 442
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 443
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 444
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 214
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 442
    check-cast p1, Ljava/util/Collection;

    const/4 p3, 0x0

    if-nez p2, :cond_3

    move-object p2, p3

    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p5, :cond_4

    goto :goto_2

    .line 216
    :cond_4
    invoke-static {p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :goto_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 217
    :cond_5
    check-cast p4, Ljava/lang/Iterable;

    .line 446
    instance-of p2, p4, Ljava/util/Collection;

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-eqz p2, :cond_6

    move-object p2, p4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 447
    :cond_6
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 217
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p4

    const-string v1, "typeParameter.upperBounds"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Iterable;

    .line 446
    instance-of v1, p4, Ljava/util/Collection;

    if-eqz v1, :cond_8

    move-object v1, p4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 447
    :cond_8
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v2, "it"

    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p4, 0x1

    goto :goto_3

    :cond_a
    const/4 p4, 0x0

    :goto_3
    if-eqz p4, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_c

    .line 218
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 221
    :cond_c
    check-cast p1, Ljava/lang/Iterable;

    .line 449
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 450
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 451
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "type"

    .line 223
    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    .line 224
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 452
    instance-of v0, p4, Ljava/util/Collection;

    if-eqz v0, :cond_d

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 453
    :cond_d
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 224
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v1, "it.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p4, 0x1

    goto :goto_6

    :cond_f
    const/4 p4, 0x0

    :goto_6
    if-eqz p4, :cond_10

    .line 225
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    goto :goto_7

    .line 227
    :cond_10
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->NEEDS_WRAPPER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    goto :goto_7

    .line 229
    :cond_11
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p4

    if-eqz p4, :cond_12

    sget-object p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    goto :goto_7

    .line 231
    :cond_12
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 222
    :goto_7
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 455
    :cond_13
    check-cast p2, Ljava/util/List;

    .line 449
    check-cast p2, Ljava/lang/Iterable;

    .line 233
    invoke-static {p2}, Lkotlin/a/n;->n(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    if-nez p1, :cond_14

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    :cond_14
    if-eqz p6, :cond_15

    .line 237
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->NEEDS_WRAPPER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    goto :goto_8

    .line 239
    :cond_15
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    :goto_8
    check-cast p2, Ljava/lang/Comparable;

    .line 240
    check-cast p1, Ljava/lang/Comparable;

    .line 235
    invoke-static {p2, p1}, Lkotlin/b/a;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 162
    :cond_0
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)V

    .line 32029
    iget-boolean p1, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b:Z

    if-eqz p1, :cond_1

    .line 165
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1

    .line 167
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 0

    .line 27
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;
    .locals 4

    .line 433
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50139
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 433
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50140
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 433
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50141
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 433
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    return-object v0

    .line 434
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 50142
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 434
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 440
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 171
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            "Ljava/util/Map<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "*>;*>;Z)V"
        }
    .end annotation

    .line 194
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    .line 196
    move-object v3, p5

    check-cast v3, Ljava/util/Collection;

    .line 197
    move-object v4, p4

    check-cast v4, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v5, p6

    move/from16 v6, p10

    .line 194
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    move-result-object v9

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 185
    invoke-virtual/range {v0 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Z
    .locals 11

    .line 249
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 32078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 33040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 249
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getReleaseCoroutines()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;->aq_()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 456
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/b/h;

    .line 34025
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->b:Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    .line 250
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34026
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->c:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    .line 250
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    .line 245
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22549
    iget v1, v15, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    goto :goto_0

    .line 22564
    :cond_0
    iget v1, v15, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    .line 31
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(I)I

    move-result v1

    :goto_0
    move v14, v1

    .line 33
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    move-object v1, v13

    .line 34
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 23080
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v3, 0x0

    .line 35
    move-object v12, v15

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v0, v12, v14, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    .line 36
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v5, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v5

    .line 37
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v7, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v6

    .line 38
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/b/b;->w:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v7, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "IS_VAR.get(flags)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 39
    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 24079
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 24579
    iget v9, v15, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    .line 39
    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    .line 40
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/b/b/b;->n:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v10, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/b/a$i;

    invoke-static {v9, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$i;)Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v9

    .line 41
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/b/b/b;->A:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v10, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "IS_LATEINIT.get(flags)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 42
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/b/b;->z:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v11, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v11

    const-string v3, "IS_CONST.get(flags)"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 43
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/b/b;->C:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v3, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v16, v12

    const-string v12, "IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v3, v16

    move-object/from16 v21, v3

    .line 44
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/b/b;->D:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v3, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v16, v13

    const-string v13, "IS_DELEGATED.get(flags)"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v3, v16

    move-object/from16 v22, v3

    .line 45
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/b/b;->E:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v3, v14}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    move/from16 v16, v14

    const-string v14, "IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move/from16 v3, v16

    move/from16 v23, v3

    .line 47
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25079
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-object/from16 v16, v3

    .line 48
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25081
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-object/from16 v17, v3

    .line 49
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25082
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object/from16 v18, v3

    .line 50
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25084
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-object/from16 v19, v3

    move-object v3, v15

    move-object/from16 v15, p1

    move-object/from16 v26, v21

    move-object/from16 v25, v22

    move/from16 v24, v23

    const/4 v3, 0x0

    .line 33
    invoke-direct/range {v1 .. v19}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;ZZZZZLkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V

    .line 53
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-object/from16 v2, v25

    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object/from16 v3, p1

    .line 25618
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    const-string v5, "proto.typeParameterList"

    .line 53
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v13, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 55
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->x:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    move/from16 v5, v24

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "HAS_GETTER.get(flags)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    move-object/from16 v7, v26

    invoke-direct {v0, v7, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v7, v26

    .line 59
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    .line 26088
    :goto_1
    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 62
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 27081
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 62
    invoke-static {v3, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    .line 27088
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 63
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object v9

    .line 64
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v10

    .line 65
    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 28081
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 65
    invoke-static {v3, v11}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_2

    :goto_2
    move-object v6, v12

    goto :goto_3

    .line 28088
    :cond_2
    iget-object v13, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 65
    invoke-virtual {v13, v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v13, v11, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v6

    .line 61
    :goto_3
    invoke-virtual {v2, v8, v9, v10, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    .line 73
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/b/b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 74
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v8, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 75
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v9, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    .line 72
    invoke-static {v6, v8, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b;->a(ZLkotlin/reflect/jvm/internal/impl/b/a$w;Lkotlin/reflect/jvm/internal/impl/b/a$j;)I

    move-result v6

    const/4 v8, 0x1

    if-eqz v4, :cond_6

    .line 80
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 28728
    iget v4, v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    goto :goto_4

    :cond_4
    move v4, v6

    .line 81
    :goto_4
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/b/b;->I:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v9, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "IS_NOT_DEFAULT.get(getterFlags)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 82
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/b/b/b;->J:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v10, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 83
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/b/b/b;->K:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v10, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "IS_INLINE_ACCESSOR.get(getterFlags)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 84
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v0, v7, v4, v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v15

    if-eqz v9, :cond_5

    .line 86
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    .line 87
    move-object v14, v2

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 89
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v11, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v16

    .line 90
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v13, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v11, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v17

    xor-int/lit8 v18, v9, 0x1

    .line 94
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v21

    const/16 v22, 0x0

    sget-object v23, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-object v13, v10

    .line 86
    invoke-direct/range {v13 .. v23}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/ao;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    goto :goto_5

    .line 97
    :cond_5
    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-static {v13, v15}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    move-result-object v10

    const-string/jumbo v4, "{\n                DescriptorFactory.createDefaultGetter(property, annotations)\n            }"

    .line 96
    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :goto_5
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v10, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_6

    :cond_6
    move-object v10, v12

    .line 105
    :goto_6
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->y:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v9, "HAS_SETTER.get(flags)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 106
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 28743
    iget v6, v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    .line 107
    :cond_7
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->I:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v9, "IS_NOT_DEFAULT.get(setterFlags)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 108
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/b/b;->J:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v9, v6}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v9

    const-string v11, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 109
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/b/b;->K:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v9, v6}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v9

    const-string v11, "IS_INLINE_ACCESSOR.get(setterFlags)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 110
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v0, v7, v6, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v14

    if-eqz v4, :cond_8

    .line 112
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;

    .line 113
    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 115
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v11, v6}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v15

    .line 116
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v12, v6}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v11, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v16

    xor-int/lit8 v17, v4, 0x1

    .line 120
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v20

    const/16 v21, 0x0

    sget-object v22, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-object v12, v9

    .line 112
    invoke-direct/range {v12 .. v22}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 122
    move-object v4, v9

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 29071
    sget-object v6, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v6, Ljava/util/List;

    .line 122
    invoke-static {v1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v4

    .line 29094
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    .line 29689
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 124
    invoke-static {v6}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    .line 123
    invoke-direct {v4, v6, v7, v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;

    move-result-object v4

    .line 126
    invoke-static {v4}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-virtual {v9, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;)V

    goto :goto_7

    .line 130
    :cond_8
    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 131
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    .line 129
    invoke-static {v13, v14, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;

    move-result-object v12

    const-string/jumbo v4, "{\n                DescriptorFactory.createDefaultSetter(\n                    property, annotations,\n                    Annotations.EMPTY /* Otherwise the setter is not default, see DescriptorResolver.resolvePropertySetterDescriptor */\n                )\n            }"

    .line 128
    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :cond_9
    :goto_7
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->B:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "HAS_CONSTANT.get(flags)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 140
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 30096
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 31038
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 140
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;

    invoke-direct {v5, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/f/j;)V

    .line 148
    :cond_a
    move-object v4, v12

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    .line 149
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    move-object v13, v2

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-direct {v5, v6, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    .line 150
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;

    invoke-direct {v0, v3, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v3

    invoke-direct {v6, v3, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    .line 151
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    .line 31088
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 151
    invoke-direct {v0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    move-result-object v7

    move-object v1, v2

    move-object v2, v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 147
    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V

    return-object v13
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    const-string v0, "proto"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34578
    iget v0, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    goto :goto_0

    .line 34593
    :cond_0
    iget v0, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    .line 260
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(I)I

    move-result v0

    :goto_0
    move v9, v0

    .line 261
    move-object v0, v10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v11, v0, v9, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v15

    .line 262
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v11, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    goto :goto_1

    .line 264
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    .line 266
    :goto_1
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 35080
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 266
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    iget-object v3, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 36079
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 36608
    iget v4, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 266
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/z;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    .line 37015
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a()Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-result-object v2

    goto :goto_2

    .line 269
    :cond_2
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 37082
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    :goto_2
    move-object/from16 v21, v2

    .line 270
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;

    .line 271
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 38080
    iget-object v13, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v14, 0x0

    .line 271
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 39079
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 39608
    iget v3, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 271
    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v16

    .line 272
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/b/b;->n:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v3, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$i;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$i;)Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v17

    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 40079
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 272
    iget-object v3, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 40081
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 273
    iget-object v4, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 40084
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x0

    move-object v12, v8

    move-object/from16 v18, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .line 270
    invoke-direct/range {v12 .. v25}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 276
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-object v3, v8

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 40647
    iget-object v4, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    const-string v5, "proto.typeParameterList"

    .line 276
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v12

    .line 279
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 41081
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 279
    invoke-static {v10, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    :goto_3
    move-object v2, v3

    goto :goto_4

    .line 41088
    :cond_3
    iget-object v4, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 279
    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 280
    :cond_4
    move-object v3, v8

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    move-object v2, v1

    .line 282
    :goto_4
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v3

    .line 42088
    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 283
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object v4

    .line 42094
    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    .line 42712
    iget-object v5, v10, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    const-string v6, "proto.valueParameterList"

    .line 284
    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v1, v5, v0, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;

    move-result-object v5

    .line 43088
    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 285
    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 44081
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 285
    invoke-static {v10, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    .line 286
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v7

    .line 287
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    invoke-virtual {v1, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v13

    .line 288
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v14

    .line 289
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->t:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v15, "IS_SUSPEND.get(flags)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v13

    move v13, v9

    move-object v9, v14

    move-object v14, v10

    move/from16 v10, v16

    .line 278
    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;Z)V

    .line 291
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->o:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_OPERATOR.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setOperator(Z)V

    .line 292
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->p:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INFIX.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setInfix(Z)V

    .line 293
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->s:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setExternal(Z)V

    .line 294
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->q:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setInline(Z)V

    .line 295
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->r:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_TAILREC.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setTailrec(Z)V

    .line 296
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->t:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setSuspend(Z)V

    .line 297
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->u:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setExpect(Z)V

    .line 298
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->v:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setHasStableParameterNames(Z)V

    .line 301
    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 45078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 46050
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    .line 301
    move-object v8, v12

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 46081
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-object/from16 v2, v17

    .line 46088
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 301
    invoke-interface {v0, v14, v8, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Lkotlin/n;

    .line 306
    move-object v8, v12

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    return-object v8
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;
    .locals 13

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    .line 46352
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    const-string v1, "proto.annotationList"

    .line 311
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 461
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 311
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 47079
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 311
    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 310
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v5

    .line 314
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 47233
    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    .line 314
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v7

    .line 315
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/l;

    .line 316
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 48096
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 49038
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 316
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 49080
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 316
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50079
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 50080
    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    .line 316
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    .line 317
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50081
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 317
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50082
    iget-object v10, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 317
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50083
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 317
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50084
    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-object v2, v0

    move-object v8, p1

    .line 315
    invoke-direct/range {v2 .. v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/l;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/b/a$q;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V

    .line 320
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 50085
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    const-string v4, "proto.typeParameterList"

    .line 320
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 50086
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 322
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object v2

    .line 50087
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 323
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50088
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    const-string v5, "<this>"

    .line 323
    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "typeTable"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50090
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50094
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const-string v7, "underlyingType"

    .line 50090
    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 50091
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->k()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 50095
    iget v7, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    .line 50091
    invoke-virtual {v4, v7}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v4

    :goto_1
    const/4 v7, 0x0

    .line 323
    invoke-virtual {v3, v4, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    .line 50096
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 324
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50097
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 324
    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50099
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50103
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const-string v5, "expandedType"

    .line 50099
    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 50100
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50104
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    .line 50100
    invoke-virtual {v8, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    .line 324
    :goto_2
    invoke-virtual {v4, p1, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    .line 325
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    .line 50105
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 325
    invoke-direct {p0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v2, v3, p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/l;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V

    .line 328
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    return-object v0

    .line 50101
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No expandedType in ProtoBuf.TypeAlias"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50092
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "proto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50107
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 336
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 337
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;

    .line 338
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 50108
    iget v3, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 338
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v7, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v11

    .line 339
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50109
    iget-object v15, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 339
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50110
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 339
    iget-object v4, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50111
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 340
    iget-object v5, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50112
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x400

    const/16 v21, 0x0

    move-object v8, v6

    move-object v9, v1

    move/from16 v12, p2

    move-object/from16 v14, p1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 337
    invoke-direct/range {v8 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-object v4, v6

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 50113
    sget-object v5, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v5, Ljava/util/List;

    .line 343
    invoke-static {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v3

    .line 50114
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    .line 50115
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    const-string v5, "proto.valueParameterList"

    .line 345
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-direct {v3, v4, v2, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;

    move-result-object v2

    .line 346
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 50116
    iget v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 346
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v3

    .line 344
    invoke-virtual {v6, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;

    .line 348
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v6, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 350
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->m:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 50117
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 350
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->setHasStableParameterNames(Z)V

    .line 353
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50118
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 353
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 50119
    :cond_1
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 50120
    :cond_2
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    if-nez v0, :cond_3

    goto :goto_2

    .line 50121
    :cond_3
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b:Z

    .line 354
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    move-object v0, v6

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 359
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    move-object v9, v6

    goto :goto_4

    .line 360
    :cond_5
    move-object v1, v6

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v3, "descriptor.valueParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v4, "descriptor.typeParameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .line 362
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v9, v6

    move v6, v8

    .line 360
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    move-result-object v0

    .line 357
    :goto_4
    invoke-virtual {v9, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V

    .line 365
    move-object v6, v9

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v6
.end method
