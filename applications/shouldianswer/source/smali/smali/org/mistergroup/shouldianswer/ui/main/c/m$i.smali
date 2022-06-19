.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$i;
.super Lkotlin/c/b/a/k;
.source "LogsFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->onContextItemSelected(Landroid/view/MenuItem;)Z
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

.field c:I

.field d:I

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/main/c/m;

.field final synthetic f:Landroid/view/MenuItem;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/main/c/m;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->e:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->f:Landroid/view/MenuItem;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->e:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->f:Landroid/view/MenuItem;

    invoke-direct {v0, p2, v1, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;-><init>(Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/main/c/m;Landroid/view/MenuItem;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 262
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_1
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->c:I

    iget v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->b:I

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->g:Lkotlinx/coroutines/ad;

    const/4 v1, 0x0

    const/16 v4, 0x64

    move-object v5, p1

    move-object p1, p0

    move v10, v4

    move v4, v1

    move v1, v10

    :goto_0
    const/4 v6, 0x0

    if-gt v4, v1, :cond_5

    .line 264
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/o;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 265
    :cond_3
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LogsFragment.DeleteFromLog Waiting for write permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6, v3, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v6, 0x64

    .line 266
    iput-object v5, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->a:Ljava/lang/Object;

    iput v4, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->b:I

    iput v1, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->c:I

    iput v2, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->d:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    .line 268
    :cond_5
    :goto_2
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/o;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    check-cast v1, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;

    invoke-direct {v2, p1, v6}, Lorg/mistergroup/shouldianswer/ui/main/c/m$i$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/m$i;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    iput-object v5, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->a:Ljava/lang/Object;

    iput v3, p1, Lorg/mistergroup/shouldianswer/ui/main/c/m$i;->d:I

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 286
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "LogsFragment.DeleteFromLog Wait failed!"

    invoke-static {p1, v0, v6, v3, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 288
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
