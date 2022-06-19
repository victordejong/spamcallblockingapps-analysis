.class final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;
.super Lkotlin/c/b/a/k;
.source "PromoFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "PromoFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.promo.PromoFragment$updatePurchases$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

.field final synthetic c:Lcom/android/billingclient/api/f$a;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;Lcom/android/billingclient/api/f$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->c:Lcom/android/billingclient/api/f$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->c:Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;Lcom/android/billingclient/api/f$a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 163
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->a:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->d:Lkotlinx/coroutines/ad;

    .line 164
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    .line 165
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    .line 166
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    .line 167
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->c:Lcom/android/billingclient/api/f$a;

    const-string v0, "purchasesResult"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 168
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->c:Lcom/android/billingclient/api/f$a;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Ljava/util/List;

    move-result-object p1

    const-string v0, "purchasesResult.purchasesList"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/f;

    const-string v1, "purchase"

    .line 169
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 171
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    goto :goto_0

    .line 173
    :cond_1
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    goto :goto_0

    .line 176
    :cond_2
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m$1;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$m;->d:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e()V

    .line 183
    :cond_4
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
