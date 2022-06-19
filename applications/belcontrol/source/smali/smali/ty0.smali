.class public final synthetic Lty0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;

.field public final synthetic b:Lcom/kedlin/cca/ui/RedeemCodeEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;Lcom/kedlin/cca/ui/RedeemCodeEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lty0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;

    iput-object p2, p0, Lty0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lty0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;

    iget-object v1, p0, Lty0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment;->O(Lcom/kedlin/cca/ui/RedeemCodeEditText;Landroid/view/View;)V

    return-void
.end method
