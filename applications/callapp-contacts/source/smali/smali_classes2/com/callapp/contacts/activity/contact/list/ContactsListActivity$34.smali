.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;)V
    .locals 0

    .line 3364
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;->a:Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 3371
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
