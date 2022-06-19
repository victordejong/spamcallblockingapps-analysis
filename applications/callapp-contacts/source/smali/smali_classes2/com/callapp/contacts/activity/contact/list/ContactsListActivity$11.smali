.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$11;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


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

    .line 799
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$11;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    const/4 v0, 0x0

    .line 802
    invoke-static {v0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;

    return-void
.end method
