.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;
.super Lkotlin/c/b/a/k;
.source "FavoritesFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c$d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "FavoritesFragment.kt"
    c = {
        0x94,
        0xa6
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.favorites.FavoritesFragment$init$3$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field f:I

.field final synthetic g:Lorg/mistergroup/shouldianswer/ui/main/b/c$d;

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/c$d;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->g:Lorg/mistergroup/shouldianswer/ui/main/b/c$d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->g:Lorg/mistergroup/shouldianswer/ui/main/b/c$d;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c$d;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 141
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->e:I

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->d:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->e:I

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->d:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    iget-object v8, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->a:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    move-object v10, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->h:Lkotlinx/coroutines/ad;

    .line 142
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v7, "FavoritesFragment reading popular contacts"

    invoke-static {v6, v7, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 145
    new-instance v8, Lorg/mistergroup/shouldianswer/model/j;

    const-string v9, "favorites"

    invoke-direct {v8, v9}, Lorg/mistergroup/shouldianswer/model/j;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v10, v1

    move-object v1, v0

    move/from16 v20, v9

    move-object v9, v2

    move/from16 v2, v20

    move-object/from16 v21, v8

    move-object v8, v6

    move-object/from16 v6, v21

    :cond_3
    :goto_0
    const/16 v11, 0xa

    if-ge v2, v11, :cond_5

    .line 148
    iput-object v9, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->a:Ljava/lang/Object;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->b:Ljava/lang/Object;

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->c:Ljava/lang/Object;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->d:Ljava/lang/Object;

    iput v2, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->e:I

    iput v5, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->f:I

    invoke-virtual {v6, v1}, Lorg/mistergroup/shouldianswer/model/j;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_4

    return-object v10

    .line 141
    :cond_4
    :goto_1
    check-cast v11, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v11, :cond_5

    .line 150
    new-instance v19, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->c()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 151
    invoke-virtual/range {v19 .. v19}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 153
    move-object v12, v7

    check-cast v12, Ljava/util/Map;

    invoke-static {v5}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual/range {v19 .. v19}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 156
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/ac;->c()Z

    move-result v12

    if-nez v12, :cond_3

    .line 157
    new-instance v12, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object v13, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-direct {v12, v13, v11}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_5
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v11, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1$1;

    invoke-direct {v11, v1, v8, v3}, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;Ljava/util/ArrayList;Lkotlin/c/c;)V

    check-cast v11, Lkotlin/e/a/m;

    iput-object v9, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->a:Ljava/lang/Object;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->b:Ljava/lang/Object;

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->c:Ljava/lang/Object;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->d:Ljava/lang/Object;

    iput v2, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->e:I

    iput v4, v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$d$1;->f:I

    invoke-static {v5, v11, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_6

    return-object v10

    .line 172
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1
.end method
