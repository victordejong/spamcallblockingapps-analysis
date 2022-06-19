.class final Lorg/mistergroup/shouldianswer/services/PublicService$a$b;
.super Lkotlin/c/b/a/k;
.source "PublicService.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/PublicService$a;->handleMessage(Landroid/os/Message;)V
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
    b = "PublicService.kt"
    c = {
        0x30,
        0x31,
        0x32,
        0x33,
        0x34,
        0x35
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.PublicService$IncomingHandler$handleMessage$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Lkotlin/e/b/m$c;

.field final synthetic g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->f:Lkotlin/e/b/m$c;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->f:Lkotlin/e/b/m$c;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;-><init>(Landroid/os/Bundle;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 46
    iget v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    packed-switch v1, :pswitch_data_0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :pswitch_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->h:Lkotlinx/coroutines/ad;

    .line 47
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->f:Lkotlin/e/b/m$c;

    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string v1, "rating"

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string v1, "ratingUser"

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 46
    :cond_1
    :goto_1
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string v1, "ratingCommunity"

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 46
    :cond_2
    :goto_2
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string v1, "category"

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 46
    :cond_3
    :goto_3
    check-cast p1, Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/m;->a()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string v1, "wantBlock"

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 46
    :cond_4
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->e:Landroid/os/Bundle;

    const-string p1, "blockReason"

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->c:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;->d:I

    invoke-virtual {v2, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v2

    .line 46
    :goto_5
    check-cast p1, Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/h;->a()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
