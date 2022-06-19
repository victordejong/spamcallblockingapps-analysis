.class public Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstTimeExperienceCallLogListener"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    .line 3463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3464
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 3469
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 3470
    invoke-virtual {v2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v2

    sget v3, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 3474
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    .line 3475
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3476
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c()V

    .line 3477
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v1

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 3478
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    :cond_0
    return-void
.end method
