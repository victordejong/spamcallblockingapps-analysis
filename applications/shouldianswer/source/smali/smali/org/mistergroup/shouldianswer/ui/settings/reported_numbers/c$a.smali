.class final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;
.super Lkotlin/c/b/a/k;
.source "ReportsViewHolder.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;->a(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;)V
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
    b = "ReportsViewHolder.kt"
    c = {
        0x1f,
        0x20
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.ReportsViewHolder$bindItem$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

.field final synthetic f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->e:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->g:Lkotlinx/coroutines/ad;

    .line 30
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->f:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->c()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 31
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->d:I

    invoke-virtual {v1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .line 29
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    .line 32
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p1, v6, p0}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->c:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a;->d:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 56
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
