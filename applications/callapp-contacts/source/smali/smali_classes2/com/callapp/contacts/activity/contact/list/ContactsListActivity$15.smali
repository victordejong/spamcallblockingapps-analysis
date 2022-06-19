.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
    .locals 2

    .line 1063
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1064
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void

    .line 1065
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
