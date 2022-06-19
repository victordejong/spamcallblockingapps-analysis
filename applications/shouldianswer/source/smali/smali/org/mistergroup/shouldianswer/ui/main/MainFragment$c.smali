.class final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;
.super Lkotlin/c/b/a/k;
.source "MainFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c()V
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
    b = "MainFragment.kt"
    c = {
        0x7a,
        0x7c
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.MainFragment$initAllFragments$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:J

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->d:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->d:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 119
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->b:J

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    iget-wide v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->b:J

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->e:Lkotlinx/coroutines/ad;

    const-wide/16 v6, 0x3e8

    .line 121
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MainFragment.initAllFragments.begin delay "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->a:Ljava/lang/Object;

    iput-wide v6, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->b:J

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->c:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v1, v6

    .line 123
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "MainFragment.initAllFragments processing"

    invoke-static {p1, v6, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 124
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v6, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c$1;

    invoke-direct {v6, p0, v4}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;Lkotlin/c/c;)V

    check-cast v6, Lkotlin/e/a/m;

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->a:Ljava/lang/Object;

    iput-wide v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->b:J

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$c;->c:I

    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 131
    :cond_4
    :goto_1
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "MainFragment.initAllFragments.end"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
