.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lk61;->j()Lq61;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;

    invoke-direct {v1, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;Lq61;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;

    invoke-direct {v1, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;Lk61$a;)V

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
