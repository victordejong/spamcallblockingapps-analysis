.class public Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->isBottomBarCheckBoxChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)Z
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->isBottomBarCheckBoxChecked()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCheckBoxText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1203eb

    .line 100
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0d00e1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080113

    .line 42
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a0a45

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120036

    .line 45
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 46
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p2, 0x7f0a0a48

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120035

    .line 50
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a0318

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120097

    .line 54
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 55
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0315

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1201e3

    .line 78
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601cc

    .line 79
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog$2;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;->showBottomBarCheckBox(Z)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
