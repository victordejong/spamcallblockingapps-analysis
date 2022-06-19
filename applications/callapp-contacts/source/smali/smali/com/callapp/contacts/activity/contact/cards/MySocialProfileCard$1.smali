.class Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 129
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$MySocialProfileData;->getDataSourceAtPosition(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    .line 131
    sget-object p2, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DataSource;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "User corrected info"

    const-string p4, "Click on add image"

    invoke-virtual {p2, p3, p4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p2, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    sget-object p4, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-direct {p2, p4}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 134
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p4}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p4

    invoke-interface {p4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p4}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p4

    invoke-interface {p4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p4

    instance-of p4, p4, Lcom/callapp/contacts/activity/EditUserProfileActivity;

    if-eqz p4, :cond_0

    .line 135
    new-instance p4, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    iget-object p5, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p5}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p5

    invoke-interface {p5}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p4, p5, v0, p3}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V

    .line 136
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p3

    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p4}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p4

    invoke-interface {p4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 140
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 141
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    iget p3, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p2, p3}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialData(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object p2

    .line 142
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->loginAndFireChange(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
