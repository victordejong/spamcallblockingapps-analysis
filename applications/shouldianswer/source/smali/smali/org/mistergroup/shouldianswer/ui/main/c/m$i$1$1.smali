.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;
.super Lkotlin/c/b/a/k;
.source "LogsFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;->b(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;

    invoke-direct {v0, v1, p2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;-><init>(Ljava/util/ArrayList;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 277
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->e:Lkotlinx/coroutines/ad;

    .line 278
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/m$i;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->e:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1$1;->b:I

    invoke-virtual {v1, v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 277
    :cond_2
    :goto_0
    check-cast p1, Lkotlin/o;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
