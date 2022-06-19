.class public Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V
    .locals 10

    const v0, 0x7f1203e0

    .line 25
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1203df

    .line 26
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1203dd

    .line 27
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$1;

    invoke-direct {v6, p1}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$1;-><init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V

    const v0, 0x7f1203de

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0600f2

    .line 36
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    new-instance v9, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$2;

    invoke-direct {v9}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$2;-><init>()V

    const v2, 0x7f08051b

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;->a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->onDialogDismissed(Landroid/content/DialogInterface;)V

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;->a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;->g()V

    :cond_0
    return-void
.end method
