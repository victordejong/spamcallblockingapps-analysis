.class Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 10

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    const v0, 0x7f1201de

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1201df

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120878

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1204c5

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;)V

    new-instance v8, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$2;-><init>(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {p1, v1, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :goto_0
    return-void
.end method
