.class public final Lcom/facebook/share/widget/DeviceShareButton;
.super Lcom/facebook/FacebookButtonBase;
.source ""


# instance fields
.field public k:Lcom/facebook/share/model/ShareContent;

.field public l:I

.field public m:Z

.field public n:Lho0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const-string v5, "fb_device_share_button_create"

    const-string v6, "fb_device_share_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->l:I

    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->m:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->n:Lho0;

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDefaultRequestCode()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/facebook/share/widget/DeviceShareButton;->l:I

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->q(Z)V

    return-void
.end method

.method private getDialog()Lho0;
    .locals 2

    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->n:Lho0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lho0;

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lho0;-><init>(Landroidx/fragment/app/Fragment;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->n:Lho0;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lho0;

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lho0;-><init>(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lho0;

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lho0;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->n:Lho0;

    return-object v0
.end method

.method public static synthetic n(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/facebook/share/widget/DeviceShareButton;)Lho0;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lho0;

    move-result-object p0

    return-object p0
.end method

.method private setRequestCode(I)V
    .locals 3

    invoke-static {p1}, Lui0;->v(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->l:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDefaultRequestCode()I
    .locals 1

    sget-object v0, Lbm0$b;->c:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    return v0
.end method

.method public getDefaultStyleResource()I
    .locals 1

    sget v0, Lio0;->com_facebook_button_share:I

    return v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->l:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->k:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/facebook/share/widget/DeviceShareButton$a;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/DeviceShareButton$a;-><init>(Lcom/facebook/share/widget/DeviceShareButton;)V

    return-object v0
.end method

.method public final p()Z
    .locals 2

    new-instance v0, Lho0;

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lho0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfm0;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final q(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setEnabled(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->m:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->m:Z

    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->k:Lcom/facebook/share/model/ShareContent;

    iget-boolean p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->m:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->p()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->q(Z)V

    :cond_0
    return-void
.end method
