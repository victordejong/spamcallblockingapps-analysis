.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/select/ConfirmPersonAdapter$LinkButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkButtonOnClickListenerImpl"
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/PersonData;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 115
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v1, 0x7f120537

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 121
    new-instance v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl;Lcom/callapp/contacts/model/PersonData;)V

    .line 140
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
