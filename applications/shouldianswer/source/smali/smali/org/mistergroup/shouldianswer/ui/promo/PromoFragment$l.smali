.class public final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;
.super Ljava/lang/Object;
.source "PromoFragment.kt"

# interfaces
.implements Lcom/android/billingclient/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 109
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/android/billingclient/api/i;->c()Lcom/android/billingclient/api/i$a;

    move-result-object v0

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/i$a;->a(Ljava/util/List;)Lcom/android/billingclient/api/i$a;

    move-result-object p1

    const-string v1, "subs"

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/i$a;->a(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;

    .line 115
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->e(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Lcom/android/billingclient/api/b;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/billingclient/api/i$a;->a()Lcom/android/billingclient/api/i;

    move-result-object v0

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l$a;-><init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$l;)V

    check-cast v1, Lcom/android/billingclient/api/j;

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
