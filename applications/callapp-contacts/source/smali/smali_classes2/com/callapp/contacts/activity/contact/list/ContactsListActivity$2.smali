.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/CallEventListener;


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

    .line 413
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isForeGroundVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z

    return-void
.end method
