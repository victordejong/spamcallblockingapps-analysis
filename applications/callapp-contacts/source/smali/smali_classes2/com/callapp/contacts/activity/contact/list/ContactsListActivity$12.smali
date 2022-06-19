.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;
.super Landroidx/drawerlayout/widget/DrawerLayout$d;
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

.field private b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>()V

    const/4 p1, 0x0

    .line 820
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 824
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Slide menu opened"

    const-string v3, "Slide Menu"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SLIDE_MENU_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    .line 827
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    const/4 v0, 0x2

    .line 829
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->b:I

    return-void
.end method

.method public final a(F)V
    .locals 3

    .line 846
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->b:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 847
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->b:I

    .line 848
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 849
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 834
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Slide menu closed"

    const-string v3, "Slide Menu"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c()V

    const/4 v0, 0x0

    .line 836
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->b:I

    .line 837
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->w(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/SlideMenuFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1123
    iget-object v2, v1, Lcom/callapp/contacts/widget/SlideMenuFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 1124
    iget-object v1, v1, Lcom/callapp/contacts/widget/SlideMenuFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    :cond_0
    return-void
.end method
