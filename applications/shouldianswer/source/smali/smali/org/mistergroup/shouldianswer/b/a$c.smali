.class final Lorg/mistergroup/shouldianswer/b/a$c;
.super Lkotlin/c/b/a/k;
.source "BlockNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;J)V
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
    b = "BlockNotification.kt"
    c = {
        0x32,
        0x34,
        0x3a,
        0x40
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.BlockNotification$show$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field f:I

.field g:Z

.field h:I

.field final synthetic i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic j:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic k:Ljava/lang/String;

.field private l:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/a$c;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/a$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/a$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/a$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/a$c;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/a$c;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/b/a$c;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/a$c;->l:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->h:I

    const/4 v10, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v11, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v10, :cond_0

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->g:Z

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->f:I

    iget v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->e:I

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v4, v9, Lorg/mistergroup/shouldianswer/b/a$c;->g:Z

    iget-object v5, v9, Lorg/mistergroup/shouldianswer/b/a$c;->c:Ljava/lang/Object;

    check-cast v5, Lkotlin/e/b/m$c;

    iget v6, v9, Lorg/mistergroup/shouldianswer/b/a$c;->f:I

    iget v7, v9, Lorg/mistergroup/shouldianswer/b/a$c;->e:I

    iget-object v8, v9, Lorg/mistergroup/shouldianswer/b/a$c;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v13, p1

    move-object v15, v8

    move-object v14, v12

    move-object v8, v1

    move-object v12, v5

    move v5, v4

    goto/16 :goto_3

    :cond_2
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v4, p1

    :cond_3
    move-object v12, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->l:Lkotlinx/coroutines/ad;

    const-wide/16 v4, 0x3e8

    .line 50
    iput-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    iput v3, v9, Lorg/mistergroup/shouldianswer/b/a$c;->h:I

    invoke-static {v4, v5, v9}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    return-object v0

    .line 52
    :cond_6
    :goto_0
    :try_start_3
    iget-object v4, v9, Lorg/mistergroup/shouldianswer/b/a$c;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    iput v11, v9, Lorg/mistergroup/shouldianswer/b/a$c;->h:I

    invoke-virtual {v4, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    .line 49
    :goto_1
    check-cast v4, Ljava/lang/String;

    const v1, 0x7f0800d2

    const v5, 0x7f080077

    .line 55
    new-instance v6, Lkotlin/e/b/m$c;

    invoke-direct {v6}, Lkotlin/e/b/m$c;-><init>()V

    iget-object v7, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v8, 0x7f100181

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.stri\u2026fication_blocked_message)"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 56
    iget-object v7, v9, Lorg/mistergroup/shouldianswer/b/a$c;->k:Ljava/lang/String;

    const-string v8, "-1"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 57
    iget-object v8, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v13, 0x7f10009a

    invoke-virtual {v8, v13}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_7
    iget-object v8, v9, Lorg/mistergroup/shouldianswer/b/a$c;->k:Ljava/lang/String;

    :goto_2
    const-string v13, "if (isHiddenNumber) cont\u2026eason_hidden) else number"

    invoke-static {v8, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v13, v9, Lorg/mistergroup/shouldianswer/b/a$c;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v12, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    iput-object v4, v9, Lorg/mistergroup/shouldianswer/b/a$c;->b:Ljava/lang/Object;

    iput v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->e:I

    iput v5, v9, Lorg/mistergroup/shouldianswer/b/a$c;->f:I

    iput-object v6, v9, Lorg/mistergroup/shouldianswer/b/a$c;->c:Ljava/lang/Object;

    iput-boolean v7, v9, Lorg/mistergroup/shouldianswer/b/a$c;->g:Z

    iput-object v8, v9, Lorg/mistergroup/shouldianswer/b/a$c;->d:Ljava/lang/Object;

    iput v2, v9, Lorg/mistergroup/shouldianswer/b/a$c;->h:I

    invoke-virtual {v13, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_8

    return-object v0

    :cond_8
    move-object v15, v4

    move-object v14, v12

    move-object v12, v6

    move v6, v5

    move v5, v7

    move v7, v1

    .line 49
    :goto_3
    check-cast v13, Lorg/mistergroup/shouldianswer/model/h;

    sget-object v1, Lorg/mistergroup/shouldianswer/b/b;->a:[I

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/h;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_c

    if-eq v1, v11, :cond_b

    if-eq v1, v2, :cond_b

    if-eq v1, v10, :cond_a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    goto :goto_4

    .line 62
    :cond_9
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f100185

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026_blocked_message_premium)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_4

    .line 61
    :cond_a
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f100182

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026_blocked_message_foreign)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_4

    .line 60
    :cond_b
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f100184

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026d_message_negative_rated)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    goto :goto_4

    .line 59
    :cond_c
    iget-object v1, v9, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f100183

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026ed_message_hidden_number)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 64
    :goto_4
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/b/a$c$1;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v8

    move v11, v5

    move-object v5, v15

    move/from16 p1, v6

    move v6, v7

    move v10, v7

    move/from16 v7, p1

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/b/a$c$1;-><init>(Lorg/mistergroup/shouldianswer/b/a$c;Lkotlin/e/b/m$c;Ljava/lang/String;Ljava/lang/String;IILkotlin/c/c;)V

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/e/a/m;

    iput-object v14, v9, Lorg/mistergroup/shouldianswer/b/a$c;->a:Ljava/lang/Object;

    iput-object v15, v9, Lorg/mistergroup/shouldianswer/b/a$c;->b:Ljava/lang/Object;

    iput v10, v9, Lorg/mistergroup/shouldianswer/b/a$c;->e:I

    move/from16 v5, p1

    iput v5, v9, Lorg/mistergroup/shouldianswer/b/a$c;->f:I

    iput-object v12, v9, Lorg/mistergroup/shouldianswer/b/a$c;->c:Ljava/lang/Object;

    iput-boolean v11, v9, Lorg/mistergroup/shouldianswer/b/a$c;->g:Z

    iput-object v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->d:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v9, Lorg/mistergroup/shouldianswer/b/a$c;->h:I

    invoke-static {v13, v1, v9}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d

    return-object v1

    .line 95
    :goto_5
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 97
    :cond_d
    :goto_6
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
