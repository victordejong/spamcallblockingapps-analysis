.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;->onClick(Landroid/content/DialogInterface;I)V
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

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->d:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->d:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    :cond_2
    move-object v8, v1

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->e:Lkotlinx/coroutines/ad;

    .line 272
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->d:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;->a:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    iput v7, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    invoke-virtual {v1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v8, p1

    move-object p1, v1

    .line 271
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz p1, :cond_a

    .line 273
    sget-object v1, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    iput v6, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    invoke-virtual {v1, p1, p0}, Lorg/mistergroup/shouldianswer/model/aa;->c(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v1, p1

    .line 274
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->d:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1;->a:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object p1, v1

    move-object v1, v8

    .line 275
    :goto_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v8, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1$1;

    invoke-direct {v8, v5, p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1$1;-><init>(Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;)V

    check-cast v8, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    invoke-static {v4, v8, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 279
    :cond_a
    :goto_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "NumberDetail delete report - force uploadData"

    invoke-static {p1, v1, v5, v6, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 280
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    iput-object v8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f$1$1;->c:I

    invoke-virtual {p1, v7, p0}, Lorg/mistergroup/shouldianswer/utils/ad;->a(ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 281
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
