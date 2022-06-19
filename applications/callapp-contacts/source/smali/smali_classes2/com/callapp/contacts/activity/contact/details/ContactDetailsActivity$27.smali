.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->resetLayoutState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 1675
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1678
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snapToPositionByOrientation()V

    .line 1679
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setToInitialState()V

    .line 1680
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->OPEN:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V

    :cond_0
    return-void
.end method
