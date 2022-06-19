.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;)V
    .locals 0

    .line 3623
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3626
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3627
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 3628
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 3629
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 3630
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3638
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/skyfishjy/library/RippleBackground;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 3640
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3641
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 3642
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

    :cond_1
    return-void
.end method
