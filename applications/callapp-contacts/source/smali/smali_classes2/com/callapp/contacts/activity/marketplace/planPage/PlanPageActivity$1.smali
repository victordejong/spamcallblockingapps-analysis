.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Landroid/widget/ScrollView;Landroid/widget/ImageView;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->a:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    aput v3, v1, v2

    const-string v2, "scrollY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;->a:Landroid/widget/ScrollView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$1;)V

    sget-wide v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
