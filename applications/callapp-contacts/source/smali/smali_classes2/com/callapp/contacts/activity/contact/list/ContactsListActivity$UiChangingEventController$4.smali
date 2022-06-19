.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V
    .locals 0

    .line 2908
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const v0, 0x7f0a02f3

    if-ne p1, v0, :cond_0

    .line 2912
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$4;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    :cond_0
    return-void
.end method
