.class public Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

.field private c:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field private final d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field private e:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->c:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 45
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 47
    new-instance v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$1;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->e:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->c:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/ReminderData;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 138
    :cond_0
    instance-of v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    if-eqz v0, :cond_4

    .line 139
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    .line 141
    iget-wide v1, p0, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-object v1, v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 143
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Birthday"

    const-string v6, "Clicked on Birthday notification"

    invoke-virtual {v1, v2, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v6, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 146
    iget-object v2, v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 147
    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    const-string v2, "FB_ID_EXTRA"

    .line 148
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_2
    iget-wide v2, p0, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 151
    iget-wide v2, p0, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    const-string v0, "CONTACT_ID_EXTRA"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    iget-object p0, p0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PHONE_EXTRA"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0023

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CL Screen - Birthday"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->e:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    const p1, 0x7f0a0939

    .line 67
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f1200ff

    .line 68
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 69
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0804c7

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f0a073e

    .line 74
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const p1, 0x7f0a041a

    .line 78
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 79
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    new-instance v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 101
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->e:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "CL Screen - Birthday"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->c:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->c:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 95
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a()V

    :cond_0
    return-void
.end method
