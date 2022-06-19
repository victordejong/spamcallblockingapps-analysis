.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$2;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v3, v3, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1700(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method
