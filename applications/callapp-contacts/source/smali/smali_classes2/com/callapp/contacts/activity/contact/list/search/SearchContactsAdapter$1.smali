.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContactItemViewEventsListener()Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 214
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    :cond_0
    return-void
.end method
