.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->onMultiCardExpended(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1}, Landroidx/transition/Fade;-><init>()V

    invoke-static {v0, v1}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
