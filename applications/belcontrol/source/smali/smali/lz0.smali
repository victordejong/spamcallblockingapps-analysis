.class public final synthetic Llz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

.field public final synthetic b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;Lcom/kedlin/cca/ui/RedeemCodeEditText;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    iput-object p2, p0, Llz0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iput-object p3, p0, Llz0;->c:Landroid/view/View;

    iput-object p4, p0, Llz0;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Llz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    iget-object v1, p0, Llz0;->b:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iget-object v2, p0, Llz0;->c:Landroid/view/View;

    iget-object v3, p0, Llz0;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;->h0(Lcom/kedlin/cca/ui/RedeemCodeEditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
