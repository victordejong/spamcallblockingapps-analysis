.class Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;->b:Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 32
    new-instance p1, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;-><init>(Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1;)V

    .line 38
    invoke-virtual {p1}, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction$1$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
