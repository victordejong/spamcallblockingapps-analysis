.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;


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

    .line 438
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 441
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
