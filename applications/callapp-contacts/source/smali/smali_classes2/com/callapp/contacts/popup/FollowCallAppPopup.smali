.class public Lcom/callapp/contacts/popup/FollowCallAppPopup;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private b:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    .line 38
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->c:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Dialog can only handle Twitter, Instagram and Pinterest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->b:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/FollowCallAppPopup;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->c:I

    return p0
.end method

.method private setupOnlyFollow(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f120343

    .line 67
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setMessage(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;-><init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setPositiveListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 89
    new-instance p1, Lcom/callapp/contacts/popup/FollowCallAppPopup$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup$2;-><init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setNegativeListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method private setupPostAndFollow(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f1207e4

    .line 101
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setMessage(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;-><init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setPositiveListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 139
    new-instance p1, Lcom/callapp/contacts/popup/FollowCallAppPopup$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup$4;-><init>(Lcom/callapp/contacts/popup/FollowCallAppPopup;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setNegativeListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201a9

    .line 161
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 165
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204ea

    .line 156
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120342

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setCancelable(Z)V

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setupPostAndFollow(Landroid/app/Activity;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->setupOnlyFollow(Landroid/app/Activity;)V

    .line 63
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
