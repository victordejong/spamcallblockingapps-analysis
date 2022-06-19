.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onUnsureClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

.field final synthetic b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/model/contact/SocialMatchesData;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 1062
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    .line 1063
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1064
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$500(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNSURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    .line 1067
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1068
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->getCheckedImagePosition()I

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1069
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$2000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V

    .line 1072
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 1074
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$2100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 1075
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->b:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;->a:Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;I)V

    return-void
.end method
