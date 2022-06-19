.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
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

    .line 372
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 375
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Birthday"

    const-string v1, "Share birthday card"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void

    .line 382
    :cond_0
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const v0, 0x7f120537

    .line 383
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;->a:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 386
    new-instance v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 422
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$5$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
