.class final Lorg/mistergroup/shouldianswer/b/h$a$a;
.super Lkotlin/c/b/a/k;
.source "RingingAlertPopup.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V
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
    b = "RingingAlertPopup.kt"
    c = {
        0x16e,
        0x16f
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.RingingAlertPopup$Companion$show$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Z

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;ZLkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->e:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/h$a$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/h$a$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/h$a$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/h$a$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->e:Landroid/content/Context;

    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->f:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/b/h$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;ZLkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/h$a$a;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 364
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/b/h;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/b/h;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->g:Lkotlinx/coroutines/ad;

    .line 365
    new-instance v1, Lorg/mistergroup/shouldianswer/b/h;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v5}, Lorg/mistergroup/shouldianswer/b/h;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;)V

    .line 366
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->c:I

    invoke-virtual {v1, p0}, Lorg/mistergroup/shouldianswer/b/h;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    .line 367
    :cond_3
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v3

    check-cast v3, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/b/h$a$a$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lorg/mistergroup/shouldianswer/b/h$a$a$1;-><init>(Lorg/mistergroup/shouldianswer/b/h$a$a;Lorg/mistergroup/shouldianswer/b/h;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/b/h$a$a;->c:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 373
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
