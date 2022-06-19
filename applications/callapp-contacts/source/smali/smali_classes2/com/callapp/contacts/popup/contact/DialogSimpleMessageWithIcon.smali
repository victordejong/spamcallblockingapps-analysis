.class public Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;I)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 18
    iput p7, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;->a:I

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d00e3

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f1204ea

    .line 28
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;->setPositiveBtnText(Ljava/lang/String;)V

    const v0, 0x7f1201a9

    .line 29
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;->setNegativeBtnText(Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setupViews(Landroid/view/View;)V

    const v0, 0x7f0a04ad

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 38
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;->a:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method
