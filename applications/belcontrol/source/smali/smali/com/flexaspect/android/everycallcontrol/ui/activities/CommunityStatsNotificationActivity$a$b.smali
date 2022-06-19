.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk61$a;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;Lk61$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;->a:Lk61$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;->a:Lk61$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
