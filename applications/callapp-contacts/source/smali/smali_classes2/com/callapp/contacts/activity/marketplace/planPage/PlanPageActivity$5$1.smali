.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->o(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    iget v2, v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 697
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->e:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getBadgePosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RIGHT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    .line 698
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 699
    new-instance v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 701
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 702
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$5;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
