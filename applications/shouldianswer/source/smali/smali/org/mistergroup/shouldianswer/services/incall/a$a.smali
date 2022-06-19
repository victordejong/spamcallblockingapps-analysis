.class final Lorg/mistergroup/shouldianswer/services/incall/a$a;
.super Lkotlin/c/b/a/k;
.source "CallInfo.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/a;->a(Ljava/lang/ref/WeakReference;)V
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
    b = "CallInfo.kt"
    c = {
        0x6d,
        0x71
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.incall.CallInfo$block$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/services/incall/a;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->d:Lorg/mistergroup/shouldianswer/services/incall/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/a$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/a$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/a$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->d:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/services/incall/a$a;-><init>(Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 103
    iget v1, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->b:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto/16 :goto_1

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    iget v1, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->b:I

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/a$a;->e:Lkotlinx/coroutines/ad;

    const/4 v1, 0x0

    move-object v5, p1

    move-object p1, p0

    .line 106
    :cond_3
    :try_start_2
    iget-object v6, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->d:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/telecom/Call;->getState()I

    move-result v6

    if-ne v6, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 108
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallInfo.processBlock waiting for pick "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v6, 0x64

    .line 109
    iput-object v5, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->a:Ljava/lang/Object;

    iput v1, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->b:I

    iput v2, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->c:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    const/16 v6, 0x32

    if-le v1, v6, :cond_3

    .line 112
    :cond_5
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "CallInfo.processBlock waiting picked"

    invoke-static {v2, v6, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v6, 0x5dc

    .line 113
    iput-object v5, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->a:Ljava/lang/Object;

    iput v1, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->b:I

    iput v3, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->c:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    .line 114
    :cond_6
    :goto_1
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "CallInfo.processBlock call.reject"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/services/incall/a$a;->d:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 117
    :goto_2
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 119
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
