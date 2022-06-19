.class Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

.field final synthetic b:Lcom/callapp/contacts/popup/ChooseImagePopup;

.field final synthetic c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity$6;Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;Lcom/callapp/contacts/popup/ChooseImagePopup;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iput-object p2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->b:Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 222
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->getDataSourceAtPosition(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    .line 223
    sget-object p2, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DataSource;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 224
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p4, "User corrected info"

    const-string p5, "Click on add image"

    invoke-virtual {p2, p4, p5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p2, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    sget-object p5, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-direct {p2, p5}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 226
    new-instance p5, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object v1, v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p5, v0, v1, p4}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V

    .line 227
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p4

    iget-object p5, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object p5, p5, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {p4, p5, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 232
    iget-object p4, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    invoke-virtual {p4}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->getData()Ljava/util/ArrayList;

    move-result-object p4

    .line 233
    invoke-static {p4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 234
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;

    if-eqz p3, :cond_1

    .line 236
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->resetChosenPicture()V

    .line 243
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 244
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->b:Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/ChooseImagePopup;->dismiss()V

    .line 245
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    .line 1462
    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_2
    return-void

    .line 248
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->c:Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    iget-object p2, p2, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$6$1;->b:Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/ChooseImagePopup;->dismiss()V

    return-void
.end method
