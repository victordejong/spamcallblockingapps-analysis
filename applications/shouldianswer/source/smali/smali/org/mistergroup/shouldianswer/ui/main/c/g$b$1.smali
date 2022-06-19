.class final Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;
.super Lkotlin/c/b/a/k;
.source "LogViewNumberHolder.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
        0x57
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:J

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/g$b;Lorg/mistergroup/shouldianswer/ui/main/c/c$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g$b;Lorg/mistergroup/shouldianswer/ui/main/c/c$a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->b:J

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->f:Lkotlinx/coroutines/ad;

    .line 82
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v3

    .line 84
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/utils/q;->b(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v1

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->d:Lorg/mistergroup/shouldianswer/ui/main/c/g$b;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/main/c/g$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    check-cast v1, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->a:Ljava/lang/Object;

    iput-wide v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->b:J

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$b$1;->c:I

    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 91
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
