.class final Lorg/mistergroup/shouldianswer/b/e$a;
.super Lkotlin/c/b/a/k;
.source "MissedCallNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/e;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;I)V
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
    b = "MissedCallNotification.kt"
    c = {
        0x20,
        0x24,
        0x38
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.MissedCallNotification$show$1"
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

.field private k:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/e$a;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/e$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/e$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/e$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/e$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/e$a;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/b/e$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/e$a;->k:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v8, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->h:I

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v10, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v10, :cond_1

    if-ne v1, v9, :cond_0

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$b;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$b;

    iget v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->g:I

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v8, Lorg/mistergroup/shouldianswer/b/e$a;->c:Ljava/lang/Object;

    check-cast v3, Lkotlin/e/b/m$b;

    iget v4, v8, Lorg/mistergroup/shouldianswer/b/e$a;->g:I

    iget-object v5, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v6, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v7, p1

    move-object v11, v3

    move v13, v4

    move-object v14, v5

    :goto_0
    move-object v12, v6

    goto :goto_2

    :cond_2
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v3

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->k:Lkotlinx/coroutines/ad;

    .line 30
    :try_start_3
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    .line 31
    iget-object v3, v8, Lorg/mistergroup/shouldianswer/b/e$a;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v3, :cond_9

    .line 32
    iput-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    iput-object v3, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    iput v2, v8, Lorg/mistergroup/shouldianswer/b/e$a;->h:I

    invoke-virtual {v3, v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v6, v1

    move-object v1, v3

    :goto_1
    const v3, 0x7f0800b2

    .line 34
    new-instance v4, Lkotlin/e/b/m$b;

    invoke-direct {v4}, Lkotlin/e/b/m$b;-><init>()V

    const v5, 0x7f08005e

    iput v5, v4, Lkotlin/e/b/m$b;->a:I

    const-string v5, ""

    .line 36
    iput-object v6, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    iput-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    iput v3, v8, Lorg/mistergroup/shouldianswer/b/e$a;->g:I

    iput-object v4, v8, Lorg/mistergroup/shouldianswer/b/e$a;->c:Ljava/lang/Object;

    iput-object v5, v8, Lorg/mistergroup/shouldianswer/b/e$a;->d:Ljava/lang/Object;

    iput v10, v8, Lorg/mistergroup/shouldianswer/b/e$a;->h:I

    invoke-virtual {v1, v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_5

    return-object v0

    :cond_5
    move-object v14, v1

    move v13, v3

    move-object v11, v4

    move-object v1, v5

    goto :goto_0

    .line 28
    :goto_2
    move-object v15, v7

    check-cast v15, Lorg/mistergroup/shouldianswer/model/ag;

    .line 37
    new-instance v7, Lkotlin/e/b/m$b;

    invoke-direct {v7}, Lkotlin/e/b/m$b;-><init>()V

    const/high16 v3, -0x1000000

    iput v3, v7, Lkotlin/e/b/m$b;->a:I

    .line 38
    sget-object v3, Lorg/mistergroup/shouldianswer/b/f;->a:[I

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_8

    if-eq v3, v10, :cond_7

    if-eq v3, v9, :cond_6

    :goto_3
    move-object v6, v1

    goto :goto_4

    .line 50
    :cond_6
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001bd

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_neutral)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08010a

    .line 51
    iput v2, v11, Lkotlin/e/b/m$b;->a:I

    goto :goto_3

    .line 45
    :cond_7
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001bc

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_negative)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, -0x10000

    .line 46
    iput v2, v7, Lkotlin/e/b/m$b;->a:I

    const v2, 0x7f080108

    .line 47
    iput v2, v11, Lkotlin/e/b/m$b;->a:I

    goto :goto_3

    .line 40
    :cond_8
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f1001be

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.rating_positive)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0xff0100

    .line 41
    iput v2, v7, Lkotlin/e/b/m$b;->a:I

    const v2, 0x7f08010c

    .line 42
    iput v2, v11, Lkotlin/e/b/m$b;->a:I

    goto :goto_3

    .line 56
    :goto_4
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/b/e$a$a;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move v2, v13

    move-object v3, v7

    move-object v4, v11

    move-object v10, v5

    move-object v5, v14

    move-object v9, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/b/e$a$a;-><init>(ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/e$a;)V

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/e/a/m;

    iput-object v12, v8, Lorg/mistergroup/shouldianswer/b/e$a;->a:Ljava/lang/Object;

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/b/e$a;->b:Ljava/lang/Object;

    iput v13, v8, Lorg/mistergroup/shouldianswer/b/e$a;->g:I

    iput-object v11, v8, Lorg/mistergroup/shouldianswer/b/e$a;->c:Ljava/lang/Object;

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/b/e$a;->d:Ljava/lang/Object;

    iput-object v15, v8, Lorg/mistergroup/shouldianswer/b/e$a;->e:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->f:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v8, Lorg/mistergroup/shouldianswer/b/e$a;->h:I

    invoke-static {v10, v1, v8}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    return-object v1

    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    :cond_9
    :goto_5
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
