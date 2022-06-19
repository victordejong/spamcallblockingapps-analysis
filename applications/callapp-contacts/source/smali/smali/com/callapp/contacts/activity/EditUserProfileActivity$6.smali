.class Lcom/callapp/contacts/activity/EditUserProfileActivity$6;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
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

    .line 209
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 213
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getDefaultContactResource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;-><init>(I)V

    .line 214
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserChosenImageDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->setMarkedDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 217
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->getData()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f120617

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/popup/ChooseImagePopup;-><init>(ILjava/util/List;)V

    .line 218
    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity$6;Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;Lcom/callapp/contacts/popup/ChooseImagePopup;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/ChooseImagePopup;->setItemClickedListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
