.class public final Lorg/mistergroup/shouldianswer/ui/main/c/c;
.super Lorg/mistergroup/shouldianswer/ui/main/c/a;
.source "LogItemNumber.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/c$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/model/j$b;)V
    .locals 1

    const-string v0, "firstItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/a$a;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;

    iget v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    sub-int/2addr v0, v4

    iput v0, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;

    invoke-direct {v2, v1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/c;Lkotlin/c/c;)V

    :goto_0
    iget-object v0, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 43
    iget v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/j$b;

    iget-wide v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iget-object v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v2

    goto/16 :goto_6

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/j$b;

    iget-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v13

    goto/16 :goto_5

    :cond_3
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/j$b;

    iget-wide v11, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    :try_start_2
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v15, v11

    move-object v12, v10

    move-wide v10, v15

    goto/16 :goto_4

    :cond_4
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/model/j$b;

    iget-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    :try_start_3
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 44
    iget-object v12, v1, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    if-eqz v12, :cond_d

    .line 46
    :try_start_4
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v10

    .line 47
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v9, :cond_d

    .line 50
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 52
    iput-object v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    iput-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    iput v8, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    move-object v13, v1

    :goto_1
    move-object v0, v9

    move-object v14, v13

    :goto_2
    move-object v9, v4

    move-object v4, v12

    goto :goto_3

    :cond_7
    move-object v14, v1

    move-object v0, v9

    goto :goto_2

    .line 54
    :goto_3
    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b(Ljava/lang/String;)V

    .line 56
    iput-object v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    iput-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    iput v7, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    invoke-virtual {v9, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_8

    return-object v3

    :cond_8
    move-object v13, v4

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    .line 43
    :goto_4
    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 58
    iput-object v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    iput-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    iput-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    iput v6, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    invoke-virtual {v9, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    move-object v6, v9

    move-object v9, v12

    move-object v4, v13

    move-object v12, v4

    .line 43
    :goto_5
    check-cast v0, Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Lorg/mistergroup/shouldianswer/model/h;)V

    .line 59
    iput-object v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->d:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->e:Ljava/lang/Object;

    iput-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->i:J

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->f:Ljava/lang/Object;

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->g:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->h:Ljava/lang/Object;

    iput v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/c$b;->b:I

    invoke-virtual {v6, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move-object v4, v6

    move-object v3, v12

    move-object v5, v3

    .line 43
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Ljava/lang/Boolean;)V

    .line 60
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    .line 63
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-nez v2, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(J)V

    .line 65
    :cond_c
    iput-boolean v8, v14, Lorg/mistergroup/shouldianswer/ui/main/c/c;->d:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    .line 68
    :goto_8
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v7, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    :cond_d
    :goto_9
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/c$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    return-object v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->d:Z

    const/4 v0, 0x0

    .line 38
    move-object v1, v0

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 39
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->d:Z

    return v0
.end method

.method public final f()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 85
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a:Lorg/mistergroup/shouldianswer/ui/main/c/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/j$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;)Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->b()Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/g;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    return-object v0
.end method
