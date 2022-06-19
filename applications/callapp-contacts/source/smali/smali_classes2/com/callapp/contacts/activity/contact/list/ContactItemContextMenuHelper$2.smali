.class final Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    const v1, 0x7f120537

    .line 96
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 99
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;Landroid/app/Activity;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 127
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
