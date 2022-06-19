.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;)V
    .locals 0

    .line 3630
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3633
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3634
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 3635
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

    return-void
.end method
