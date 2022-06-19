.class Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;->this$0:Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;->this$0:Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;

    iget-object v1, v1, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$socialNetId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;->this$0:Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;

    iget-object v1, v1, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1$1;->this$0:Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;

    iget-object v2, v2, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;->val$idInSocialNetwork:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    return-void
.end method
