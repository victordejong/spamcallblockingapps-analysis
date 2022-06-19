.class final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;
.super Ljava/lang/Object;
.source "PromoFragment.kt"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/h;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p1, "skuDetailsList"

    .line 117
    invoke-static {p2, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 317
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/h;

    const-string v0, "skuDetails"

    .line 118
    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object p2

    .line 120
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "price"

    if-eqz v1, :cond_1

    .line 121
    :try_start_1
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->c(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;Z)V

    .line 129
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e()V

    .line 130
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 132
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
