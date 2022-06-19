.class public Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;

.field private final b:Lcom/callapp/contacts/model/contact/DataSource;

.field private final c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;ZLjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 36
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->b:Lcom/callapp/contacts/model/contact/DataSource;

    .line 37
    iput-boolean p3, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->c:Z

    .line 38
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->c:Z

    return p0
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0d00a0

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07018f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    const v3, 0x7f0a0314

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0805c4

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 53
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    iget-object v4, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->b:Lcom/callapp/contacts/model/contact/DataSource;

    iget v4, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 55
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getContactPhotoUrlOnSocial(Lcom/callapp/contacts/model/contact/ContactData;IZ)Ljava/lang/String;

    move-result-object v15

    .line 56
    invoke-static {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result v13

    .line 57
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v7

    .line 59
    new-instance v14, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    iget-object v8, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->b:Lcom/callapp/contacts/model/contact/DataSource;

    const v5, 0x7f060244

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    invoke-direct {v12, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;Landroid/view/LayoutInflater;)V

    const/4 v6, 0x0

    const v10, 0x7f08058f

    move-object v5, v14

    move-object v9, v15

    move-object v1, v12

    move v12, v4

    move-object/from16 p2, v2

    move-object v2, v14

    move-object v14, v1

    invoke-direct/range {v5 .. v14}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;ILjava/lang/Integer;IILcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;)V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;

    invoke-direct {v1, v0, v15, v2, v3}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;)V

    .line 102
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 105
    :cond_0
    iget-boolean v1, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->c:Z

    invoke-virtual {v3, v2, v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Z)V

    .line 106
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getBgColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(I)I

    move-result v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
