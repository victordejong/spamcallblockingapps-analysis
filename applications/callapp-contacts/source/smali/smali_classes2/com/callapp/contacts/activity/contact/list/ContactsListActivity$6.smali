.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$e;


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

    .line 622
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->n(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/list/TabsAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 631
    instance-of v1, v0, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 636
    check-cast v0, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->scrollToTop()V

    .line 637
    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->markAsViewed()V

    :cond_0
    if-eq p1, v2, :cond_1

    .line 641
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getContactsFragment()Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 642
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getContactsFragment()Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    move-result-object p1

    .line 1168
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    if-eqz v0, :cond_1

    .line 1169
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->setCancelled(Z)V

    .line 646
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 648
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->a()V

    :cond_2
    return-void
.end method
