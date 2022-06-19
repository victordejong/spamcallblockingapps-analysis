.class final Lorg/mistergroup/shouldianswer/b/l$a;
.super Lkotlin/c/b/a/k;
.source "VoicemailNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/l;->a(Ljava/lang/String;)V
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
    b = "VoicemailNotification.kt"
    c = {
        0x34
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.VoicemailNotification$show$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field e:I

.field f:I

.field final synthetic g:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic h:Ljava/lang/String;

.field private i:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/l$a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/l$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/l$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/l$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/l$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/b/l$a;-><init>(Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/l$a;->i:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lorg/mistergroup/shouldianswer/b/l$a;->e:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$b;

    iget v0, p0, Lorg/mistergroup/shouldianswer/b/l$a;->d:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->i:Lkotlinx/coroutines/ad;

    .line 25
    :try_start_1
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    const v1, 0x7f0800ea

    .line 29
    new-instance v4, Lkotlin/e/b/m$b;

    invoke-direct {v4}, Lkotlin/e/b/m$b;-><init>()V

    const v5, 0x7f08005e

    iput v5, v4, Lkotlin/e/b/m$b;->a:I

    const-string v5, ""

    const/high16 v6, -0x1000000

    .line 52
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v7

    check-cast v7, Lkotlin/c/f;

    new-instance v8, Lorg/mistergroup/shouldianswer/b/l$a$1;

    invoke-direct {v8, p0, v1, v4, v3}, Lorg/mistergroup/shouldianswer/b/l$a$1;-><init>(Lorg/mistergroup/shouldianswer/b/l$a;ILkotlin/e/b/m$b;Lkotlin/c/c;)V

    check-cast v8, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->a:Ljava/lang/Object;

    iput v1, p0, Lorg/mistergroup/shouldianswer/b/l$a;->d:I

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/b/l$a;->b:Ljava/lang/Object;

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/b/l$a;->c:Ljava/lang/Object;

    iput v6, p0, Lorg/mistergroup/shouldianswer/b/l$a;->e:I

    iput v2, p0, Lorg/mistergroup/shouldianswer/b/l$a;->f:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :catch_0
    move-exception p1

    .line 84
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    invoke-static {v0, p1, v3, v1, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 86
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
