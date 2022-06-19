.class public Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

.field private final e:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field private f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private g:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->c:Z

    .line 64
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->e:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 66
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    .line 82
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$2;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->g:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 181
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 4

    .line 1145
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Add Call Reminder"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-class v0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;

    new-instance v1, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->e:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0024

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a073e

    .line 98
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->e:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const p1, 0x7f0a0939

    .line 103
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f12065e

    .line 104
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0804c7

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f0a041a

    .line 111
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 112
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$3;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact List Screen - Call reminders"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p1, 0x7f12016d

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12016c

    .line 124
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a037d

    .line 125
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b:Landroid/view/View;

    const v2, 0x7f08034a

    const v3, 0x7f08034b

    .line 126
    invoke-static {v1, v2, v3, p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 133
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->g:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Contact List Screen - Call reminders"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onResume()V

    .line 174
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->c:Z

    .line 176
    invoke-direct {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b()V

    :cond_0
    return-void
.end method
