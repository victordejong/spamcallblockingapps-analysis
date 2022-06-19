.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Z

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    new-instance v10, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const/4 v3, 0x0

    const v2, 0x7f1204ea

    .line 149
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1$1;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;)V

    const/4 v8, 0x0

    new-instance v9, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1$2;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;)V

    const-string v4, "Internet issues - please try again in a few minutes"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 148
    invoke-virtual {v0, v1, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    return-void
.end method
