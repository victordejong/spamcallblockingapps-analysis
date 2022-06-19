.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d()V
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

    .line 2269
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$29;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2272
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$29;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_RESET_SEARCH_AFTER_DELAY:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void
.end method
