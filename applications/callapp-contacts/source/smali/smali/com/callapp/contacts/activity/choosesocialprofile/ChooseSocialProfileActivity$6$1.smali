.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 945
    new-instance v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;)V

    .line 963
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v3, v3, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v4, v4, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;)V

    :cond_0
    return-void
.end method
