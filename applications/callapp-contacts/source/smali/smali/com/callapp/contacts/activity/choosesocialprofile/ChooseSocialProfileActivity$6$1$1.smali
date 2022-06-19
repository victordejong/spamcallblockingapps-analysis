.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;
.super Lcom/callapp/contacts/popup/DefaultPersonSelectListener;
.source "SourceFile"


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
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 934
    invoke-super {p0}, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a()V

    .line 935
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 936
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1400(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 937
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1500(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 927
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;->a(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v2, v2, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1400(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 930
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1500(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;I)V

    return-void
.end method
