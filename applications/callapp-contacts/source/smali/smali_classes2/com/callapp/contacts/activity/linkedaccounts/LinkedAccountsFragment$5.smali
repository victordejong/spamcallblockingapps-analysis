.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 184
    iput-object v0, v7, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;->b:Landroid/app/Activity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$5;->b:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method
