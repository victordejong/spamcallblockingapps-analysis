.class Lcom/callapp/contacts/activity/EditUserProfileActivity$5;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$200(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$100(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method
