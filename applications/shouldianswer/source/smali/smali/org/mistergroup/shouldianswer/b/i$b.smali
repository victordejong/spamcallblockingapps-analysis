.class final Lorg/mistergroup/shouldianswer/b/i$b;
.super Lkotlin/c/b/a/k;
.source "RingingNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/i;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
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
    b = "RingingNotification.kt"
    c = {
        0x2f,
        0x31,
        0x36,
        0x4a
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.RingingNotification$show$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field h:I

.field final synthetic i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic j:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic k:Ljava/lang/String;

.field private l:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/i$b;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/i$b;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/i$b;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/i$b;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/i$b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 4
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/i$b;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/i$b;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/b/i$b;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/i$b;->l:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 46
    iget v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->h:I

    const/4 v10, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v11, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v10, :cond_0

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$b;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$b;

    iget v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->g:I

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->d:Ljava/lang/Object;

    check-cast v1, Lkotlin/e/b/m$c;

    iget-object v4, v9, Lorg/mistergroup/shouldianswer/b/i$b;->c:Ljava/lang/Object;

    check-cast v4, Lkotlin/e/b/m$b;

    iget v5, v9, Lorg/mistergroup/shouldianswer/b/i$b;->g:I

    iget-object v6, v9, Lorg/mistergroup/shouldianswer/b/i$b;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v8, p1

    move-object v12, v1

    move-object v13, v4

    move-object v15, v6

    move-object v14, v7

    move v7, v5

    goto/16 :goto_2

    :cond_2
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v4, p1

    :cond_3
    move-object v7, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->l:Lkotlinx/coroutines/ad;

    const-wide/16 v4, 0x3e8

    .line 47
    iput-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    iput v3, v9, Lorg/mistergroup/shouldianswer/b/i$b;->h:I

    invoke-static {v4, v5, v9}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    return-object v0

    .line 49
    :cond_6
    :goto_0
    :try_start_3
    iget-object v4, v9, Lorg/mistergroup/shouldianswer/b/i$b;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    iput v11, v9, Lorg/mistergroup/shouldianswer/b/i$b;->h:I

    invoke-virtual {v4, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    .line 46
    :goto_1
    check-cast v4, Ljava/lang/String;

    .line 50
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    const v1, 0x7f0800d2

    .line 52
    new-instance v5, Lkotlin/e/b/m$b;

    invoke-direct {v5}, Lkotlin/e/b/m$b;-><init>()V

    const v6, 0x7f08005e

    iput v6, v5, Lkotlin/e/b/m$b;->a:I

    .line 53
    new-instance v6, Lkotlin/e/b/m$c;

    invoke-direct {v6}, Lkotlin/e/b/m$c;-><init>()V

    const-string v8, ""

    iput-object v8, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 54
    iget-object v8, v9, Lorg/mistergroup/shouldianswer/b/i$b;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v7, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    iput-object v4, v9, Lorg/mistergroup/shouldianswer/b/i$b;->b:Ljava/lang/Object;

    iput v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->g:I

    iput-object v5, v9, Lorg/mistergroup/shouldianswer/b/i$b;->c:Ljava/lang/Object;

    iput-object v6, v9, Lorg/mistergroup/shouldianswer/b/i$b;->d:Ljava/lang/Object;

    iput v2, v9, Lorg/mistergroup/shouldianswer/b/i$b;->h:I

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_7

    return-object v0

    :cond_7
    move-object v15, v4

    move-object v13, v5

    move-object v12, v6

    move-object v14, v7

    move v7, v1

    .line 46
    :goto_2
    check-cast v8, Lorg/mistergroup/shouldianswer/model/ag;

    .line 55
    new-instance v6, Lkotlin/e/b/m$b;

    invoke-direct {v6}, Lkotlin/e/b/m$b;-><init>()V

    const/high16 v1, -0x1000000

    iput v1, v6, Lkotlin/e/b/m$b;->a:I

    .line 56
    sget-object v1, Lorg/mistergroup/shouldianswer/b/j;->a:[I

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_a

    if-eq v1, v11, :cond_9

    if-eq v1, v2, :cond_8

    goto :goto_3

    .line 68
    :cond_8
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001bd

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_neutral)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    const v1, 0x7f08010a

    .line 69
    iput v1, v13, Lkotlin/e/b/m$b;->a:I

    goto :goto_3

    .line 63
    :cond_9
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001bc

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_negative)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    const/high16 v1, -0x10000

    .line 64
    iput v1, v6, Lkotlin/e/b/m$b;->a:I

    const v1, 0x7f080108

    .line 65
    iput v1, v13, Lkotlin/e/b/m$b;->a:I

    goto :goto_3

    .line 58
    :cond_a
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001be

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_positive)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    const v1, -0xff0100

    .line 59
    iput v1, v6, Lkotlin/e/b/m$b;->a:I

    const v1, 0x7f08010c

    .line 60
    iput v1, v13, Lkotlin/e/b/m$b;->a:I

    .line 74
    :goto_3
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/b/i$b$1;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v3, v7

    move-object v4, v6

    move-object v11, v5

    move-object v5, v13

    move-object v10, v6

    move-object v6, v12

    move-object/from16 v18, v0

    move v0, v7

    move-object v7, v15

    move-object/from16 p1, v11

    move-object v11, v8

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/b/i$b$1;-><init>(Lorg/mistergroup/shouldianswer/b/i$b;ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/c/c;)V

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/e/a/m;

    iput-object v14, v9, Lorg/mistergroup/shouldianswer/b/i$b;->a:Ljava/lang/Object;

    iput-object v15, v9, Lorg/mistergroup/shouldianswer/b/i$b;->b:Ljava/lang/Object;

    iput v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->g:I

    iput-object v13, v9, Lorg/mistergroup/shouldianswer/b/i$b;->c:Ljava/lang/Object;

    iput-object v12, v9, Lorg/mistergroup/shouldianswer/b/i$b;->d:Ljava/lang/Object;

    iput-object v11, v9, Lorg/mistergroup/shouldianswer/b/i$b;->e:Ljava/lang/Object;

    iput-object v10, v9, Lorg/mistergroup/shouldianswer/b/i$b;->f:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v9, Lorg/mistergroup/shouldianswer/b/i$b;->h:I

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    return-object v1

    .line 102
    :goto_4
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 104
    :cond_b
    :goto_5
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
