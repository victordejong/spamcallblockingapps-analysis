.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;
.super Lcom/google/android/material/tabs/TabLayout$h;
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
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 3

    .line 2987
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/Object;

    .line 600
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 601
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    .line 602
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tab selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Clicked"

    invoke-virtual {p1, v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    .line 3087
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 607
    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 608
    instance-of v0, p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    if-eqz v0, :cond_0

    .line 609
    check-cast p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->markAsViewed()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    .line 4087
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 615
    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 616
    instance-of v0, p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    if-eqz v0, :cond_0

    .line 617
    check-cast p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->scrollToTop()V

    :cond_0
    return-void
.end method
