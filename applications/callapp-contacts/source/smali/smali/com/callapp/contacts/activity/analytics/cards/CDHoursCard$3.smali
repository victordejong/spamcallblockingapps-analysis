.class Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->onMultiCardExpended(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1}, Landroidx/transition/Fade;-><init>()V

    invoke-static {v0, v1}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
