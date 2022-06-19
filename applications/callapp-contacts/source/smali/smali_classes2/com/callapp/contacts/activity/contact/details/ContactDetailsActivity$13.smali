.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 1033
    const-class v0, Lcom/callapp/contacts/model/contact/DataSource;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Ljava/lang/Class;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 1036
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    :cond_0
    return-void
.end method
