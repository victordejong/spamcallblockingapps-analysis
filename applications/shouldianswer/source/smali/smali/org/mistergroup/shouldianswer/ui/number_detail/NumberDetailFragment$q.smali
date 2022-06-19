.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
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

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/ac;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

.field final synthetic f:Lorg/mistergroup/shouldianswer/ui/a;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->d:Lorg/mistergroup/shouldianswer/model/ac;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->e:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->f:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->d:Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->e:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->f:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;-><init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->g:Lkotlinx/coroutines/ad;

    .line 204
    :try_start_1
    new-instance v1, Lkotlin/e/b/m$c;

    invoke-direct {v1}, Lkotlin/e/b/m$c;-><init>()V

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->d:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/q;->c(J)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 205
    iget-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 206
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->d:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/q;->b(J)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 207
    :cond_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q$1;

    invoke-direct {v5, p0, v1, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;Lkotlin/e/b/m$c;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;->c:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_3

    return-object v0

    :catch_0
    move-exception p1

    .line 223
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    invoke-static {v0, p1, v3, v1, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 225
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
