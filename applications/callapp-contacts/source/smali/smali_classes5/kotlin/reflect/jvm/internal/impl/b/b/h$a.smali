.class public final Lkotlin/reflect/jvm/internal/impl/b/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/b/h$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/b/h$a;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/i;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/i;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/b/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "proto"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameResolver"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "table"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    if-eqz v5, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 22315
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    goto :goto_0

    .line 87
    :cond_0
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    if-eqz v5, :cond_1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 22574
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    goto :goto_0

    .line 88
    :cond_1
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    if-eqz v5, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 22767
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    goto :goto_0

    .line 89
    :cond_2
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    if-eqz v5, :cond_3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 23757
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    goto :goto_0

    .line 90
    :cond_3
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    if-eqz v5, :cond_10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    .line 24392
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    :goto_0
    const-string v5, "ids"

    .line 94
    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 128
    check-cast v6, Ljava/lang/Integer;

    const-string v7, "id"

    .line 94
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26012
    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/b/b/i;->b:Ljava/util/List;

    invoke-static {v7, v6}, Lkotlin/a/n;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;

    const/4 v7, 0x0

    if-nez v6, :cond_5

    goto/16 :goto_8

    .line 25100
    :cond_5
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;->a:Lkotlin/reflect/jvm/internal/impl/b/b/h$b$a;

    .line 25101
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 26227
    iget v8, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    .line 25101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_6
    move-object v8, v7

    .line 25102
    :goto_2
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 26252
    iget v9, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    .line 25102
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    :cond_7
    move-object v9, v7

    :goto_3
    const/4 v10, 0x3

    if-eqz v9, :cond_8

    .line 27065
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    .line 27066
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    .line 27067
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 27068
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 27065
    invoke-direct {v8, v11, v12, v9}, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;-><init>(III)V

    :goto_4
    move-object v12, v8

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_9

    .line 27070
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    .line 27071
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/lit8 v11, v11, 0x7

    .line 27072
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    shr-int/2addr v12, v10

    and-int/lit8 v12, v12, 0xf

    .line 27073
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v8, v8, 0x7

    and-int/lit8 v8, v8, 0x7f

    .line 27070
    invoke-direct {v9, v11, v12, v8}, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;-><init>(III)V

    move-object v12, v9

    goto :goto_5

    .line 27075
    :cond_9
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/b/h$b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    goto :goto_4

    .line 27275
    :goto_5
    iget-object v8, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    .line 25105
    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/b/h$a$a;->a:[I

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    const/4 v9, 0x2

    if-eq v8, v9, :cond_b

    if-ne v8, v10, :cond_a

    .line 25108
    sget-object v8, Lkotlin/a;->HIDDEN:Lkotlin/a;

    goto :goto_6

    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 25107
    :cond_b
    sget-object v8, Lkotlin/a;->ERROR:Lkotlin/a;

    goto :goto_6

    .line 25106
    :cond_c
    sget-object v8, Lkotlin/a;->WARNING:Lkotlin/a;

    :goto_6
    move-object v14, v8

    .line 25111
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 27298
    iget v8, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    .line 25111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v15, v8

    goto :goto_7

    :cond_d
    move-object v15, v7

    .line 25113
    :goto_7
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 27321
    iget v7, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    .line 25113
    invoke-interface {v1, v7}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v7

    :cond_e
    move-object/from16 v16, v7

    .line 25115
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/b/b/h;

    .line 27346
    iget-object v13, v6, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    const-string v6, "info.versionKind"

    .line 25115
    invoke-static {v13, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/b/b/h;-><init>(Lkotlin/reflect/jvm/internal/impl/b/b/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$u$c;Lkotlin/a;Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_8
    if-eqz v7, :cond_4

    .line 128
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 132
    :cond_f
    check-cast v5, Ljava/util/List;

    return-object v5

    .line 91
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Unexpected declaration: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
