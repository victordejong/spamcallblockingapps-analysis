.class final Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;
.super Lkotlin/c/b/a/k;
.source "LogsAdapter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "LogsAdapter.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsAdapter$processLoadMore$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

.field private c:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/h$d;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/h$d;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->c:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 240
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->c:Lkotlinx/coroutines/ad;

    .line 241
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->k()I

    move-result p1

    .line 242
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->g()Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h$b;->setChanged()V

    .line 243
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->g()Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h$b;->notifyObservers()V

    .line 244
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b(Lorg/mistergroup/shouldianswer/ui/main/c/h;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 245
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c(Lorg/mistergroup/shouldianswer/ui/main/c/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogsAdapter.processLoadMore detected request for more items"

    invoke-virtual {p1, v1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b(Lorg/mistergroup/shouldianswer/ui/main/c/h;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/h;I)V

    .line 248
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
