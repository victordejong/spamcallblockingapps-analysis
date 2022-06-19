.class public abstract Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;
.super Lcom/callapp/contacts/popup/contact/DialogSimple;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method


# virtual methods
.method protected abstract getContentResId()I
.end method

.method protected getDialogLayoutResId()I
    .locals 1

    const v0, 0x7f0d00e2

    return v0
.end method

.method public setupViews(Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupViews(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->getContentResId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a081e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method
