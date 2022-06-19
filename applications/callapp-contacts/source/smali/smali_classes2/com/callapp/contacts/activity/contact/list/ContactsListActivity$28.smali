.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(IIILjava/lang/String;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;)V
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

    .line 2249
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$28;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2252
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$28;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z

    .line 2253
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Pusher"

    const-string v2, "Pusher closed"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
