.class Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method
