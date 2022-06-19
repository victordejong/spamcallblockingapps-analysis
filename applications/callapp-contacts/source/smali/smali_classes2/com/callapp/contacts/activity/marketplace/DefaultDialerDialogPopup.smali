.class public Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->b:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->c:I

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 46
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$PUhLPS9dbPMx7qAXHCZw23FEYP4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$PUhLPS9dbPMx7qAXHCZw23FEYP4;-><init>(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;)V

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$PUhLPS9dbPMx7qAXHCZw23FEYP4(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$Z9BeuH4HLPvT-spWU1d2Baq5wQ0(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ciHFPxwKFCWdErSGuw6V97IlkV4(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 58
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0d0072

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0a0177

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$Z9BeuH4HLPvT-spWU1d2Baq5wQ0;

    invoke-direct {v2, p0, p2}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$Z9BeuH4HLPvT-spWU1d2Baq5wQ0;-><init>(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a095f

    .line 1048
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0188

    .line 1049
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a04d6

    .line 1050
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;->c:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0a016c

    .line 1051
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$ciHFPxwKFCWdErSGuw6V97IlkV4;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$DefaultDialerDialogPopup$ciHFPxwKFCWdErSGuw6V97IlkV4;-><init>(Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f1201e3

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120610

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f080280

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
