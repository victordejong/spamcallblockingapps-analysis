.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->onMultiCardExpended(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;I)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1}, Landroidx/transition/Fade;-><init>()V

    invoke-static {v0, v1}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->F:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
