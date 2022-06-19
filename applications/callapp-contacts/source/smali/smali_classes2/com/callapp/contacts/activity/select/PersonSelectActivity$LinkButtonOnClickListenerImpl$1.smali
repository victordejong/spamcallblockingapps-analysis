.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a(Lcom/callapp/contacts/model/PersonData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/PersonData;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;Lcom/callapp/contacts/model/PersonData;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->a:Lcom/callapp/contacts/model/PersonData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->a:Lcom/callapp/contacts/model/PersonData;

    .line 127
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "PERSON_SELECT_SELECTED_USER_ID"

    .line 130
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iget-object v1, v1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)I

    move-result v1

    const-string v3, "PERSON_SELECT_NET_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PERSON_SELECT_PERSON_DATA"

    .line 132
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->finish()V

    return-void
.end method
