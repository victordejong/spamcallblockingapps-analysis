.class final Lorg/mistergroup/shouldianswer/ui/main/c/g$b;
.super Lkotlin/c/b/a/k;
.source "LogViewNumberHolder.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
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
    b = "LogViewNumberHolder.kt"
    c = {
        0x4d,
        0x5f
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Lorg/mistergroup/shouldianswer/ui/main/c/c;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Lorg/mistergroup/shouldianswer/ui/main/c/c;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 75
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->f:Lkotlinx/coroutines/ad;

    .line 76
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    move-result-object v1

    .line 77
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->c:I

    invoke-virtual {v4, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    .line 78
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v3

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_4

    .line 79
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/mistergroup/shouldianswer/utils/q;->a(J)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    .line 81
    sget-object v3, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/ad;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/g$a;->a()Lkotlinx/coroutines/bb;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/c/f;

    const/4 v7, 0x0

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;

    invoke-direct {v3, p0, v1, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g$b;Lorg/mistergroup/shouldianswer/ui/main/c/c$a;Lkotlin/c/c;)V

    move-object v8, v3

    check-cast v8, Lkotlin/e/a/m;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 94
    :cond_4
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v3

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v3

    check-cast v3, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$2;

    invoke-direct {v5, p0, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$2;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g$b;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->c:I

    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 99
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
