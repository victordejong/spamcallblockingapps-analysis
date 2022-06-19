.class public Lcom/callapp/contacts/popup/ChooseImageSourceDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;,
        Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

.field private c:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->b:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->b:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->b:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->c:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;

    return-object p0
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 113
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->roundedCenter:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->dismiss()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const p2, 0x7f0d00ce

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a044d

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01c5

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$2;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a044e

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1206fe

    .line 83
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 84
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a01c6

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1206f1

    .line 86
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const v0, 0x7f0a030c

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    new-instance v7, Landroidx/constraintlayout/widget/c;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 95
    iget-object v1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 96
    iget-object p2, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 97
    iget-object p2, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 98
    iget-object p2, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    .line 99
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->c:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;

    return-void
.end method
