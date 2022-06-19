.class public final Lkotlin/reflect/jvm/internal/impl/g/i;
.super Lkotlin/reflect/jvm/internal/impl/g/a;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/i;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/i;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/i;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/i;->a:Lkotlin/reflect/jvm/internal/impl/g/i;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/g/d;

    .line 174
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/j;->j:Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 v8, 0x2

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/g/b;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/l$a;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Lkotlin/reflect/jvm/internal/impl/g/l$a;-><init>(I)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v7, v0, v9

    .line 175
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/j;->k:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v4, v3, v9

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/g/l$a;

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/g/l$a;-><init>(I)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v4, v3, v10

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/g/i$a;->a:Lkotlin/reflect/jvm/internal/impl/g/i$a;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    aput-object v1, v0, v10

    .line 180
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 v2, 0x4

    new-array v13, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/g/l$a;

    invoke-direct {v3, v8}, Lkotlin/reflect/jvm/internal/impl/g/l$a;-><init>(I)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/e;->a:Lkotlin/reflect/jvm/internal/impl/g/e;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    const/4 v4, 0x3

    aput-object v3, v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v8

    .line 181
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/g/j;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v3, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v5, v3, v9

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v5, v3, v10

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/g/l$a;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/g/l$a;-><init>(I)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v5, v3, v8

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/e;->a:Lkotlin/reflect/jvm/internal/impl/g/e;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v5, v3, v4

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    invoke-direct/range {v17 .. v22}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    .line 182
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/g/l$b;

    invoke-direct {v3, v8}, Lkotlin/reflect/jvm/internal/impl/g/l$b;-><init>(I)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/e;->a:Lkotlin/reflect/jvm/internal/impl/g/e;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v4

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v2

    .line 183
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/g/j;->h:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v3, v10, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v5, v3, v9

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    invoke-direct/range {v17 .. v22}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 184
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->g:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/k$a;->a:Lkotlin/reflect/jvm/internal/impl/g/k$a;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v4

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 185
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->i:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 186
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->l:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 187
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->m:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v4, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/k$a;->a:Lkotlin/reflect/jvm/internal/impl/g/k$a;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 188
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->C:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v4, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 189
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/j;->e:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v5, v10, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/g/f$a;->a:Lkotlin/reflect/jvm/internal/impl/g/f$a;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v6, v5, v9

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/g/i$b;->a:Lkotlin/reflect/jvm/internal/impl/g/i$b;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 193
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->f:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-array v13, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/k$b;->a:Lkotlin/reflect/jvm/internal/impl/g/k$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v4

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 194
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/j;->L:Ljava/util/Set;

    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    new-array v13, v4, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v8

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 195
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/j;->K:Ljava/util/Set;

    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    new-array v13, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v3, v13, v10

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 196
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/c/e;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/j;->r:Lkotlin/reflect/jvm/internal/impl/c/e;

    aput-object v5, v3, v9

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/g/j;->s:Lkotlin/reflect/jvm/internal/impl/c/e;

    aput-object v5, v3, v10

    invoke-static {v3}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-array v5, v10, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v6, v5, v9

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/g/i$c;->a:Lkotlin/reflect/jvm/internal/impl/g/i$c;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 202
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/g/j;->M:Ljava/util/Set;

    move-object v12, v3

    check-cast v12, Ljava/util/Collection;

    new-array v13, v2, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v9

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/k$c;->a:Lkotlin/reflect/jvm/internal/impl/g/k$c;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v10

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/l$d;->a:Lkotlin/reflect/jvm/internal/impl/g/l$d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v8

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/h;->a:Lkotlin/reflect/jvm/internal/impl/g/h;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v4

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 203
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/g/d;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/g/j;->o:Lkotlin/h/l;

    new-array v13, v8, [Lkotlin/reflect/jvm/internal/impl/g/b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/f$b;->a:Lkotlin/reflect/jvm/internal/impl/g/f$b;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v9

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/g/l$c;->a:Lkotlin/reflect/jvm/internal/impl/g/l$c;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/g/b;

    aput-object v2, v13, v10

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/h/l;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 173
    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/i;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/g/d;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/g/i;->b:Ljava/util/List;

    return-object v0
.end method
