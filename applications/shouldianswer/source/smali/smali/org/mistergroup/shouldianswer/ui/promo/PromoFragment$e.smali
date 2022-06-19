.class final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;
.super Ljava/lang/Object;
.source "PromoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "Promo.butDonationBronze start sub_tier_1"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    const-string v0, "sub_tier_1"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b(Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "https://play.google.com/store/account/subscriptions?package=org.mistergroup.shouldianswer&sku=sub_tier_1"

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
