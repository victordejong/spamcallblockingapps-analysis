.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openSocialProfileInNewTask(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Lcom/callapp/contacts/manager/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/Integer;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iput-object p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iput-object p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 920
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;)V

    .line 969
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 1161
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isNativeAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v3, v2, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1800(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    .line 987
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V

    :cond_1
    return-void
.end method
