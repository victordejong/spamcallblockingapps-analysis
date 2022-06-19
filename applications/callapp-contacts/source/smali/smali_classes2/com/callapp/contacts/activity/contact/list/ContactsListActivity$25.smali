.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$25;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V
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

    .line 2028
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$25;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 0

    .line 2033
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->c()V

    return-void
.end method
