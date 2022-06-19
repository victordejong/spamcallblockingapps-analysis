.class public Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 33
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d0115

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0922

    .line 1062
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120577

    .line 1063
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0451

    .line 1065
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1067
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f080099

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f120354

    .line 1069
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
