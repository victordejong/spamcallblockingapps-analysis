.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;,
        Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;
    }
.end annotation


# static fields
.field public static b:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->a:Ljava/util/EnumSet;

    return-void
.end method

.method public static synthetic p(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static synthetic q(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->s()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-virtual {p1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/util/EnumSet;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    invoke-virtual {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const p1, 0x1030073

    goto :goto_0

    :cond_0
    const p1, 0x7f1200f4

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d007c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->t()V

    invoke-static {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->A:Ljava/lang/String;

    const-string v3, "ORIGIN_MISSED_CALL_OVERLAY_ACTIVITY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->r()V

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final t()V
    .locals 5

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
